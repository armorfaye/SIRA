#!/bin/bash

echo "SIRA Testing Script"
name="SIRA_Test"
testset="flickr"
test_data_path="Test/"
gt_path="GroundTruth/"
image_size=224
ckpt="/path_to_checkpoint"

CUDA_VISIBLE_DEVICES=0,1,2,3 python3 src/test.py --name "$name" --testset "$testset" --test_data_path "$test_data_path" --image_size "$image_size" --gt_path "$gt_path" --ckpt "$ckpt"
```
