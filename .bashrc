#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Aliases
alias ls='ls -h --color=auto'

#Prompt
#PS1='[\u@\h: \W\$]: '
PS1='\[\e[0;31m\]\u@\h|\e[0;33m\]\W -> \[\e[0m\]'

# Prevent line wrap
shopt -s checkwinsize

#Tab autocomplete
complete -cf sudo
complete -cd man

