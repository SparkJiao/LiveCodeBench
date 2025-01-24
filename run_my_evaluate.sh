
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-magicoder-xcode-sc-pdpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.dpo.H100.dp8.v1.0.s42/checkpoint-2400/ \
#  --release_version "release_v3" --n 1 --evaluate --stop "<|EOT|>" --max_tokens 4096 --temperature 0.0

# =================================================================================================

# APPs + Magicoder + XCode - pDPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-magicoder-xcode-sc-pdpo-v2.0 \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.pdpo.H100.dp16.v2.0.s42/checkpoint-400/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-magicoder-xcode-sc-pdpo-v2.0/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-magicoder-xcode-sc-pdpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.dpo.H100.dp8.v1.0.s42/checkpoint-2400/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128

#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-magicoder-xcode-sc-pdpo/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01


# APPs + Magicoder + XCode - pDPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-magicoder-xcode-sc-pdpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.pdpo.V100.tp8dp32.v1.3.s42/checkpoint-300/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-magicoder-xcode-sc-pdpo/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

# APPs + Magicoder - pDPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-magicoder-sc-pdpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_ps_test_case.iter1.pdpo.H100.dp8.v1.2.s42/checkpoint-500/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-magicoder-sc-pdpo/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

# APPs + Magicoder - DPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-magicoder-sc-dpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_ps_test_case.iter1.dpo.A100.tp4dp16.v1.2.s42/checkpoint-800/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-magicoder-sc-dpo/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

# APPs - pDPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-sc-pdpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_ps_test_case.process-dpo.V100.tp8dp16.v4.9.s42/checkpoint-700/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-sc-pdpo/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

# APPs - DPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-sc-dpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_ps_test_case.dpo.V100.tp8dp8.v4.0.s42/checkpoint-200/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-sc-dpo/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

# APPs - ground truth pDPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-gd-pdpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.sft.process-dpo.V100.tp8dp8.v4.2.s42.rerun/checkpoint-1800/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-gd-pdpo/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

## APPs - ground truth DPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-gd-dpo \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_dpo.V100.tp8dp2.v3.2.s42/checkpoint-100/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-gd-dpo/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01


# APPs - SFT
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-sft \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.gpt4o.distil.V100.w8.v3.1.dp4.tp4.s42/checkpoint-200/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/ds-coder-v1.5-ins-7b-r2c-apps-sft/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

# Deepseek-coder-chat
#python -m lcb_runner.runner.main --model deepseek-coder-7b-instruct-v1.5  \
#  --scenario codegeneration --custom_output_save_name deepseek-coder-7b-instruct-v1.5 \
#  --local_model_path ../msranlpintern/share/models/deepseek-coder-7b-instruct-v1.5 \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 2048 --max_num_seqs 32
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DSCoder-7b-Ins-v1.5/deepseek-coder-7b-instruct-v1.5/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01


# =================================================================================================

#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name ds-coder-v1.5-ins-7b-r2c-apps-magicoder-xcode-sc-pdpo-test \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.dpo.H100.dp8.v1.0.s42/checkpoint-2400/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128  --debug


# =================================================================================================


#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.dpo.H100.dp8.v1.0.s42.ckpt2400 \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.dpo.H100.dp8.v1.0.s42/checkpoint-2400/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.dpo.H100.dp8.v1.0.s42.ckpt2400/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01


#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.pdpo.V100.tp8dp32.v1.3.s42.ckpt300 \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.pdpo.V100.tp8dp32.v1.3.s42/checkpoint-300/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/deepseek-coder-v1.5-ins.7b.r2c.sft_ps_test_case.iter2.pdpo.V100.tp8dp32.v1.3.s42.ckpt300/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01

# ================================================================

# APPs - 4o - pseudo test cases - DPO
#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name deepseek-coder-v1.5-ins.7b.apps.r2c.sft_4o_ps_test_case.dpo.H100.dp8.v1.0.s42 \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_4o_ps_test_case.dpo.H100.dp8.v1.0.s42/checkpoint-100/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_4o_ps_test_case.dpo.H100.dp8.v1.0.s42/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01


#python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
#  --scenario codegeneration --custom_output_save_name deepseek-coder-v1.5-ins.7b.apps.r2c.sft_4o_ps_test_case.non_sc.iter1.dpo.MI300x.dp16.v1.0.s42 \
#  --local_model_path ../msranlpintern/reward_modeling/experiments/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_4o_ps_test_case.non_sc.iter1.dpo.MI300x.dp16.v1.0.s42/checkpoint-200/ \
#  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128
#
#python -m lcb_runner.evaluation.compute_scores \
#  --eval_all_file output/DeepSeekR2C/deepseek-coder-v1.5-ins.7b.apps.r2c.sft_4o_ps_test_case.non_sc.iter1.dpo.MI300x.dp16.v1.0.s42/Scenario.codegeneration_10_0.2_eval_all.json \
#  --start_date 2023-09-01 --end_date 2024-09-01


#exp_name=deepseek-coder-v1.5-ins.7b.apps.r2c.sft_4o_self_ps_test_case.mix.dpo.MI300x.dp32.v1.0.s42
#step=400
#exp_name=deepseek-coder-v1.5-ins.7b.apps.r2c.sft_ps_test_case.process-dpo.ctr-ts-num.MI300x.dp32.v1.0.s42
#step=700
#exp_name=deepseek-coder-v1.5-ins.7b.apps.r2c.sft_4o_self_ps_test_case.mix.dpo.MI300x.dp32.v1.1.s42
#step=400
#exp_name=deepseek-coder-v1.5-ins.7b.apps-4o.mc-self.iter1.dpo.H100.dp32.v1.0.s42
#step=300
#exp_name=deepseek-coder-v1.5-ins.7b.apps-4o.mc-xcode-self.iter2.dpo.mi300x.dp32.v1.1.s42
#step=300
exp_name=deepseek-coder-v1.5-ins.7b.apps-4o.mc-xcode-self.iter2.dpo.mi300x.dp32.v1.2.s42
step=1200
python -m lcb_runner.runner.main --model deepseek-coder-v1.5-instruct-7b-r2c  \
  --scenario codegeneration --custom_output_save_name $exp_name \
  --local_model_path ../msranlpintern/reward_modeling/experiments/$exp_name/checkpoint-$step/ \
  --release_version "release_v3" --evaluate --stop "<|EOT|>" --max_tokens 4096 --max_num_seqs 128

python -m lcb_runner.evaluation.compute_scores \
  --eval_all_file output/DeepSeekR2C/$exp_name/Scenario.codegeneration_10_0.2_eval_all.json \
  --start_date 2023-09-01 --end_date 2024-09-01