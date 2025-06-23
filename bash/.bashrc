#
# ~/.bashrc
#

export PATH=${PATH}:~/source/scripts:~/.local/bin:
export EDITOR=helix

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias grep='grep --color=auto'
alias hx='helix'
alias serv='konsole --profile server --new-tab -e ssh marc@192.168.1.200'
#alias arch='konsole --profile container --new-tab -e distrobox-enter arch-dev'
#alias tw='konsole --profile container --new-tab -e distrobox-enter tw'
alias arch='distrobox enter arch-dev'
alias tw='distrobox enter tw'
alias lg='lazygit'
alias gc='helix ~/.config/ghostty/config'
alias dev-min='minote-dev.sh'
#alias AI='konsole --profile container --new-tab -e distrobox-enter AI'
#PS1='[\u@\h \W]\$
#PS1='\e[0;31m$CONTAINER_ID\e[0m\033[0;32m \u@\h \W $\e[0m\n> '
PS1='\e[0;31m$CONTAINER_ID\e[0m\033[0;32m \u@\h \W \e[0m\e[0;35m$(__git_ps1)\e[0m\n '
# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion


#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi
