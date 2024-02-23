model_item='ppyoloe_plus_l_4pdx'
bs_item=16
fp_item='fp16'
run_process_type='SingleP'
run_mode='DP'
device_num='N1C1'
max_epochs=1
num_workers=4
repeats=12

bash PrepareEnv.sh
bash repeat_data.sh "${repeats}"
bash run_benchmark.sh \
    "${model_item}" \
    "${bs_item}" \
    "${fp_item}" \
    "${run_process_type}" \
    "${run_mode}" \
    "${device_num}" \
    "${max_epochs}" \
    "${num_workers}" \
    2>&1
