#!/bin/bash

echo "SIRA Training Script"
name="SIRA_Train"
description="Description"
trainset="flickr"
testset="flickr"
train_data_path="Train/"
test_data_path="Test/"
gt_path="GroundTruth/"
image_size=224
epochs=2
batch_size=1
freeze_vision=1
lr=0.0001

CUDA_VISIBLE_DEVICES=0,1,2,3 python3 src/train.py --name "$name" --trainset "$trainset" --testset "$testset" --train_data_path "$train_data_path" --test_data_path "$test_data_path" --image_size "$image_size" --epochs "$epochs" --batch_size "$batch_size" --gt_path "$gt_path" --freeze_vision "$freeze_vision" --lr "$lr" --description "$description"
