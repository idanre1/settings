
# Default python virtualenv
py3bin=/home/$USER/Envs/py3env/bin
alias py3env='cd $py3bin; source activate; cd -'

# pytorch python virtualenv
py3torchbin=/home/$USER/Envs/py3torch/bin
alias py3torch='cd $py3torchbin; source activate; cd -'

# rapids python virtualenv
alias py3gpu='source ~/miniconda3/etc/profile.d/conda.sh; conda activate cuda_11.4'

# pymc python conda
alias py3bayes='source ~/miniconda3/etc/profile.d/conda.sh; conda activate bayes'

# poetry
alias poetry=/home/$USER/.local/bin/poetry