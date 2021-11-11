alias py3='/usr/bin/python3'
alias nb='jupyter lab &'

# Default python virtualenv
py3bin=/home/$USER/py3env/bin
alias py3env='cd $py3bin; source activate; cd -'

# mlfinlab python virtualenv
mlfinlabbin=/home/$USER/py3mlfinlab/bin
alias py3mlfinlab='cd $mlfinlabbin; source activate; cd -'

# rapids python virtualenv
alias py3rapids='source ~/miniconda3/etc/profile.d/conda.sh; conda activate rapids-21.10'