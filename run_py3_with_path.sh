#!/bin/bash
source /nas/settings/python_init.sh

# First positional argument is path
cd $1

# Python3
# Take from 2nd argument and on
$py3bin/python "${@:2}" 
