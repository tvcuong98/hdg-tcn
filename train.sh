##!/bin/bash

#python main.py  \
#--config config/nturgbd120-cross-subject/joint.yaml --model model.Hyperformer.Model --work-dir work_dir/ntu120/csub/Hyperformer_joint --device 2 3 --base-lr 2.5e-2 

#python main.py  \
#--config config/nturgbd120-cross-set/joint.yaml --model model.Hyperformer.Model --work-dir work_dir/ntu120/cset/Hyperformer_joint --device 2 3 --base-lr 2.5e-2 

#python main.py  \
#--config config/nturgbd-cross-view/joint.yaml --model model.Hyperformer.Model --work-dir work_dir/ntu60/cview/Hyperformer_joint  --device 0 1 --base-lr 2.5e-2

python main.py  \
--config config/nturgbd-cross-subject/joint.yaml --model model.Hyperformer_tiny.Model --work-dir work_dir/ntu60/csub/Hyperformer_joint  --device 0 --base-lr 0.00025 --optimizer SGD --weights /content/drive/MyDrive/Hyperformer-test-add-DG-GCN/work_dir7/ntu60/csub/Hyperformer_joint/runs-85-3112.pt --start-epoch 85

#python main.py  \
#--config config/ucla/joint.yaml --model model.Hyperformer.Model --work-dir work_dir/ucla/Hyperformer_joint  --device 0 1 --base-lr 2.5e-2
