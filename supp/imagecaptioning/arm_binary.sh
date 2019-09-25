
#DISK_PATH=/datadrive/
python train_binary.py \
 --id fc \
 --caption_model fc_binary\
 --input_json data/cocotalk.json\
 --input_fc_dir $DISK_PATH/IC/data/cocotalk_fc \
 --input_att_dir $DISK_PATH/IC/data/cocotalk_att \
 --input_label_h5 data/cocotalk_label.h5\
 --batch_size 10\
 --seq_per_img 5\
 --learning_rate 5e-4\
 --learning_rate_decay_start 0 \
 --scheduled_sampling_start 0 \
 --start_from $DISK_PATH/IC/model/mle_binary_5em4_25 \
 --checkpoint_path $DISK_PATH/IC/model/arm_binary_25 \
 --save_checkpoint_every 100\
 --val_images_use 5000 \
 --max_epochs 60 \
 --language_eval 1 \
 --losses_log_every 1000\
 --binary_tree_coding_dir $DISK_PATH/IC/model/model/binary_tree_coding_25.pkl\
 --self_critical_after 0\
 --cached_tokens $DISK_PATH/IC/data/coco-train-idxs \
 --losses_log_every 10\
 --rl_type arm \