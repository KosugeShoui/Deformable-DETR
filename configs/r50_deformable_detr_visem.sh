#!/usr/bin/env bash
#sh configs/r50_deformable_detr_visem.sh
OUTPUT_DIR=output_visem/exp_0423_ep300

python3 main.py \
--dataset_file visem \
--coco_path visem \
--output_dir ${OUTPUT_DIR} \
--batch_size 5 \
--epochs 300 \
--device 'cuda'

python3 main.py \
--dataset_file visem \
--coco_path visem \
--output_dir ${OUTPUT_DIR} \
--batch_size 1 \
--device 'cuda' \
--eval \
--resume ${OUTPUT_DIR}/checkpoint.pth 


python3 learning_unscaled_curve_each.py ${OUTPUT_DIR}