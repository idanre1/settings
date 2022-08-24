#!/bin/bash
deactivate
source /nas/settings/python_init.sh

# Python3
cd $py3bin
source activate

# First positional argument is path
cd $1

# Take from 2nd argument and on
python "${@:2}" 
