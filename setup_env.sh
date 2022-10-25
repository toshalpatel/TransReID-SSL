#!/bin/bash
activate_anaconda
conda create -n ltr_env python=3.8
conda activate ltr_env
echo "activate_anaconda; conda activate ltr_env" >> ~/.bashrc

conda install pytorch==1.7.1 torchvision==0.8.2 cpuonly -c pytorch
pip install -r requirements.txt

echo "env setup done!"