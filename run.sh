MODEL_DIR=/data4/pjh/youtube8m/model
CUDA_VISIBLE_DEVICES=2,3 python train.py --model="MLPModel" --num_epochs=20 --start_new_model=False --feature_names="mean_rgb,mean_audio" --feature_sizes="1024,128" --train_data_pattern='/data4/pjh/data/yt8m_video_level/train/train*.tfrecord' --train_dir=$MODEL_DIR/video_level_mlp_model 2>&1 |tee -a ../log/log_mlp_20170307-1.txt
