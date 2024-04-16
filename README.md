This is the project where Dynamic Spatial-Temporal Modeling was enhanced by hypergraph transformer for Skeleton-based Human Action Recognition

The dataset used in the project is NTURGBD 60 
# Preparation
### Install torchlight
Run `pip install -e torchlight`

### Download datasets.

#### There are 3 datasets to download:

- NTU RGB+D 60 Skeleton

#### NTU RGB+D 60 and 120

1. Request dataset here: https://rose1.ntu.edu.sg/dataset/actionRecognition
2. Download the skeleton-only datasets:
   1. `nturgbd_skeletons_s001_to_s017.zip` (NTU RGB+D 60)
   3. Extract above files to `./data/nturgbd_raw`

### Data Processing

#### Directory Structure

Put downloaded data into the following directory structure:

```
- data/
  - NW-UCLA/
    - all_sqe
      ... # raw data of NW-UCLA
  - ntu/
  - ntu120/
  - nturgbd_raw/
    - nturgb+d_skeletons/     # from `nturgbd_skeletons_s001_to_s017.zip`
      ...
    - nturgb+d_skeletons120/  # from `nturgbd_skeletons_s018_to_s032.zip`
      ...
```

#### Generating Data

- Generate NTU RGB+D 60 or NTU RGB+D 120 dataset:

```
 cd ./data/ntu # or cd ./data/ntu120
 # Get skeleton of each performer
 python get_raw_skes_data.py
 # Remove the bad skeleton 
 python get_raw_denoised_data.py
 # Transform the skeleton to the center of the first frame
 python seq_transformation.py
```

# Evaluation


To use the pretrained weights for evaluation, please run the following command:

```
bash evaluate.sh
```

# Training & Testing

### Training

```
bash train.sh
```

Please check the configuration in the config directory.

### Testing

```
bash evaluate.sh
```

To ensemble the results of different modalities, run the following command:

```
bash ensemble.sh
```

## Acknowledgements

This repo is based on [DG-STGCN](https://github.com/kennymckormick/pyskl) and [Hyperformer](https://github.com/ZhouYuxuanYX/Hyperformer)

Thanks to the original authors for their work!