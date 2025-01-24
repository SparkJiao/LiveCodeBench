try:
    from transformers import AutoTokenizer
    from vllm import LLM, SamplingParams
except ImportError as e:
    # print("Cannot import vllm")
    pass

import re
from lcb_runner.runner.base_runner import BaseRunner


def tag_cleaner(completion: str):
    # Regular expression to match content between [BEGIN] and [END]
    pattern = r'<BEGIN>(.*?)<END>'

    match = re.search(pattern, completion, re.DOTALL)
    if match:
        return match.group(1).strip()
    else:
        return None


class VLLMRunner(BaseRunner):
    def __init__(self, args, model):
        super().__init__(args, model)
        model_tokenizer_path = (
            model.model_name if args.local_model_path is None else args.local_model_path
        )
        self.llm = LLM(
            model=model_tokenizer_path,
            tokenizer=model_tokenizer_path,
            tensor_parallel_size=args.tensor_parallel_size,
            # dtype=args.dtype,
            max_num_seqs=args.max_num_seqs,
            enforce_eager=True,
            max_model_len=4096,
            disable_custom_all_reduce=True,
            enable_prefix_caching=args.enable_prefix_caching,
            trust_remote_code=args.trust_remote_code,
        )
        self.sampling_params = SamplingParams(
            n=self.args.n,
            max_tokens=self.args.max_tokens,
            temperature=self.args.temperature,
            top_p=self.args.top_p,
            frequency_penalty=0,
            presence_penalty=0,
            stop=self.args.stop,
        )

    def _run_single(self, prompt: str) -> list[str]:
        pass

    def run_batch(self, prompts: list[str]) -> list[list[str]]:
        outputs = [None for _ in prompts]
        remaining_prompts = []
        remaining_indices = []
        for prompt_index, prompt in enumerate(prompts):
            if self.args.use_cache and prompt in self.cache:
                if len(self.cache[prompt]) == self.args.n:
                    outputs[prompt_index] = self.cache[prompt]
                    continue
            remaining_prompts.append(prompt)
            remaining_indices.append(prompt_index)
        if remaining_prompts:
            vllm_outputs = self.llm.generate(remaining_prompts, self.sampling_params)
            if self.args.use_cache:
                assert len(remaining_prompts) == len(vllm_outputs)
                for index, remaining_prompt, vllm_output in zip(
                        remaining_indices, remaining_prompts, vllm_outputs
                ):
                    self.cache[remaining_prompt] = [o.text for o in vllm_output.outputs]
                    codes = [tag_cleaner(o.text) for o in vllm_output.outputs]
                    codes = [c if c is not None else "" for c in codes]
                    # outputs[index] = [o.text for o in vllm_output.outputs]
                    outputs[index] = codes
            else:
                for index, vllm_output in zip(remaining_indices, vllm_outputs):
                    # outputs[index] = [o.text for o in vllm_output.outputs]
                    codes = [tag_cleaner(o.text) for o in vllm_output.outputs]
                    codes = [c if c is not None else "" for c in codes]
                    outputs[index] = codes
        return outputs
