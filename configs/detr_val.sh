#!/usr/bin/env bash
OUTPUT_DIR=output_coco/exp_0413

python3 main.py \
--dataset_file coco \
--coco_path coco \
--output_dir ${OUTPUT_DIR} \
--batch_size 1 \
--device 'cuda' \
--eval \
--resume r50_deformable_detr-checkpoint.pth