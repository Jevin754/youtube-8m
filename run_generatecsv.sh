MODEL_DIR=/data4/pjh/youtube8m/model
CUDA_VISIBLE_DEVICES=0,1 python inference.py --batch_size=4096 --feature_names="mean_rgb,mean_audio" --feature_sizes="1024,128" --output_file=$MODEL_DIR/video_level_moe_model/predictions-moe10-rgb-audio-45000.cvs --input_data_pattern='/data4/pjh/data/yt8m_video_level/test/test*.tfrecord' --train_dir=$MODEL_DIR/video_level_moe_model
