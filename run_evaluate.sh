MODEL_DIR=/data4/pjh/youtube8m/model
CUDA_VISIBLE_DEVICES=0,1 python eval.py --model="MoeModel" --feature_names="mean_rgb,mean_audio" --feature_sizes="1024,128" --eval_data_pattern='/data4/pjh/data/yt8m_video_level/validate/validate*.tfrecord' --train_dir=$MODEL_DIR/video_level_moe_model --run_once=True
