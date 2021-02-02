cd .. 
source activate PartAssembly

CUDA_VISIBLE_DEVICES=0 python ./train.py  \
    --exp_suffix '' \
    --model_version 'model' \
    --category 'Chair' \
    --train_data_fn 'Chair.train.npy' \
    --val_data_fn 'Chair.val.npy' \
    --loss_weight_trans_l2 1.0 \
    --loss_weight_rot_l2 0.0 \
    --loss_weight_rot_cd 10 \
    --loss_weight_shape_cd 1.0 \
    --device cuda:0 \
    --num_epoch_every_visu 99 \
    --level 3 \
    --overwrite \
    --batch_size 8 \
    --num_workers 8 \
    --num_batch_every_visu 0 \
