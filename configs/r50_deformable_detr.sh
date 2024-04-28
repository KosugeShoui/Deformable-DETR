#!/usr/bin/env bash
OUTPUT_DIR=output_coco/exp_0413

python3 main.py \
--dataset_file coco \
--coco_path coco \
--output_dir ${OUTPUT_DIR} \
--batch_size 5 \
--epochs 3 \
--device 'cuda'

python3 main.py \
--dataset_file coco \
--output_dir ${OUTPUT_DIR} \
--batch_size 1 \
--device 'cuda' \
--eval \
--resume ${OUTPUT_DIR}/checkpoint.pth 


python3 learning_unscaled_curve_each.py ${OUTPUT_DIR}