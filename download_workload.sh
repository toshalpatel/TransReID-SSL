#!/bin/bash

pip install gdown

# Market1501 Dataset
mkdir data 
cd data
gdown https://drive.google.com/uc?id=0B8-rUzbwVRk0c054eEozWG9COHM -O market1501.zip
unzip market1501.zip 
rm market1501.zip
mv Market-1501-v15.09.15 market1501
cd ..

# download vit models 
mkdir model
cd model
gdown https://drive.google.com/uc?id=1ODxA7mJv17UfzwfXtY9dTWNsYghoNWGB
gdown https://drive.google.com/uc?id=18FL9JaJNlo15-UksalcJRXX-0dgo4Mz4
gdown https://drive.google.com/uc?id=1ZFMCBZ-lNFMeBD5K8PtJYJfYEk5D9isd

# download transformer models
mkdir ViT-S-16
gdown https://drive.google.com/uc?id=1lED8sKkiFAHp5LEzfhUSmF_Yh-7kKFsP -O ViT-S-16/
mkdir ViT-S-16-ICS
gdown https://drive.google.com/uc?id=1tdO01aYtckVP3nQZm-cpSSPPrxODCrmB -O ViT-S-16-ICS/
mkdir ViT-B-16-ICS
gdown https://drive.google.com/uc?id=1wELRg_fCrgYCD3A3kUU7KJd-D_YSknQ_ -O ViT-B-16-ICS/

echo "Workload setup done!"