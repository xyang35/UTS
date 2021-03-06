#!/bin/bash

cd ..

max_time=15
n_predict=1
n_hidden=500

name=pred_cross_mt${max_time}_np${n_predict}_nh${n_hidden}
model=seq2seq_basic

#python train_model.py --name $name --model $model \
#    --batch_size 32 --max_time $max_time --n_predict $n_predict --n_hidden $n_hidden \
#    --train_session all --test_session all \
#    --modality_X camera --modality_Y can --n_input 1536 --n_output 8 \
#    --X_feat feat_fc --Y_feat feat --iter_mode pred \
#    --n_epochs 30 --isTrain --gpu 0 \
#    --continue_train

# extract feature
python train_model.py --name $name --model $model \
    --batch_size 32 --max_time $max_time --n_predict $n_predict --n_hidden $n_hidden \
    --train_session all --test_session all \
    --modality_X camera --modality_Y can --n_input 1536 --n_output 8 \
    --X_feat feat_fc --Y_feat feat --gpu 0\
