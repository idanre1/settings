#!/bin/bash

# By default prefer miniconda
function miniconda_init_f(){
    conda_sh="/home/$USER/miniconda3/etc/profile.d/conda.sh"
    if [ -f $conda_sh ]; then
        source $conda_sh
    fi
}
# Default python virtualenv
py3bin=/home/$USER/miniconda3/envs/py3env/bin
alias py3env='miniconda_init_f; conda activate py3env'

# pytorch python virtualenv
# py3torchbin=/home/$USER/Envs/py3torch/bin
# alias py3torch='cd $py3torchbin; source activate; cd -'

# rapids python virtualenv
alias py3gpu='miniconda_init_f; conda activate cuda_11.4'

# pymc python conda
alias py3bayes='miniconda_init_f; conda activate bayes'

# poetry
alias poetry=/home/$USER/.local/bin/poetry