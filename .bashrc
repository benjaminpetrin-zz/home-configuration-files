# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# allow local scoping
function .bashrc() {

# Some color definitions
local black='\[\033[8;30m\]'
local red='\[\033[0;31m\]'
local green='\[\033[0;32m\]'
local yellow='\[\033[0;33m\]'
local blue='\[\033[0;34m\]'
local purple='\[\033[0;35m\]'
local cyan='\[\033[0;36m\]'
local grey='\[\033[0;37m\]'
local white='\[\033[1;37m\]'
local styleEnd='\[\033[0m\]'

# Return value visualisation
PROMPT_COMMAND='RET=$?; if [[ $RET -eq 0 ]]; then echo -ne "\033[0;32m$RET\033[0m"; else echo -ne "\033[0;31m$RET\033[0m"; fi; echo -n " "'

# Prompt
export PS1="$RET_SMILEY[$yellow\u$white@$blue\h $cyan\w$white]\$$styleEnd"

} # end .bashrc
.bashrc
