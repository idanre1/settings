#!/bin/sh
# tiny install
#echo source ~/settings/bashrc >> ~/.bashrc
#echo source ~/settings/vimrc >> ~/.vimrc
#sudo sh -c "echo 'set background=dark' >> /root/.vimrc"
#sudo ln -s ~ /nas
#sudo apt install source-highlight 

#PATH
PATH=.:$PATH:/nas/scripts

export PAGER=less     # contains command to run the program used to list the contents of files, e.g., /bin/less
#export EDITOR=emacs    # contains the command to run the lightweight program used for editing files, e.g., /usr/bin/nano
export HISTSIZE=9999     # The number of commands normally stored in the history fileexport LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'

#prompt
#https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
        RED="\[\033[0;31m\]"
     YELLOW="\[\033[1;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[1;34m\]"
     PURPLE="\[\033[0;35m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\e[0m\]"

function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    # [[ -n "$venv" ]] && echo "(venv:$venv) "
    [[ -n "$venv" ]] && echo "($venv) "
}
# disable the default virtualenv prompt change
export VIRTUAL_ENV_DISABLE_PROMPT=1
VENV="\$(virtualenv_info)";

PROMPT_COMMAND='PS1="${VENV}${YELLOW}H\!${PURPLE}J\j\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\``/bin/ls -1 | /usr/bin/wc -l | /bin/sed "s: ::g"`files@`/bin/ls -lah | /bin/grep -m 1 total | /bin/sed "s/total //"`${WHITE}:${BLUE}\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`${LIGHT_GRAY}>${COLOR_NAME} "'

#less
export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
export LESS=' -R '

#alias
source /nas/settings/alias

#####################
# Costomize
#####################
set space = "-"                                                           # ???
set nobeep                                                                # Disable beeping
set notify                                                                # Declare job completions when they occur.
set history=9999                                                          # The first word indicates the number of commands to save in the history list. The second indicates the format with which to display that list (tcsh only; see the prompt section for possible formats).
set savehist=9999                                                         # Execute history -S before exiting. Save no more than max lines of history. If specified, merge those lines with previous history saves, and sort by time.
set filec                                                                 # If set, a filename that is partially typed on the command line can be expanded to its full name when Esc is pressed. If more than one filename would match, type EOF to list possible completions. Ignored in tcsh.
set autolist='ambiguous'                                                  # Print possible completions when correct one is ambiguous. If ambiguous is specified, print possible completions only when completion adds no new characters.
#set complete=enhance                                                     # When enhance, ignore case in completion, treat ., -, and _ as word separators, and consider _ and - to be the same.
set rmstar                                                                # Prompt before executing the command rm *.
set ellipsis                                                              # For use with prompt variable. Represent skipped directories with "..."
set autologout=0 ; #no timout logout                                      # Log out after logout-minutes of idle time. Lock the terminal after locking-minutes of idle time, requiring a password before continuing. Not used if the DISPLAY environment variable is set.
set implicitcd                                                            # If directory name is entered as a command, cd to that directory. Can be set to verbose to echo the cd to standard output.
set matchbeep=never  #{never|nomatch|ambiguous|notunique}                 # Specifies circumstances under which completion should beep: never, if no match exists, if multiple matches exist, or if multiple matches exist and one is exact.
set color                                                                 # Turn on color for ls-F, ls, or both. Setting to nothing is equivalent to setting for both.
#set listmax = 10000                                                      # listmax     can be set to limit the number of items that are listed without asking first. 
set listmaxrows = 33                                                      # listmaxrows can be set to limit the number of rows  that are listed without asking first.
