# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1500
SAVEHIST=1500
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#### EXAMPLE ###############################
#autoload -Uz vcs_info # enable vcs_info
#precmd () { vcs_info } # always load before displaying the prompt
#zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)
#PS1='%n@%m %F{red}%/%f$vcs_info_msg_0_ $ ' # david@macbook /tmp/repo (main) $ 
#### EXAMPLE END ###########################

export PATH=${PATH}:~/source/scripts:~/.local/bin:
export EDITOR=helix

autoload -Uz vcs_info # enable vcs_info
autoload -U colors && colors

#Use this for a modular config
# User specific aliases and functions
#if [ -d ~/.zshrc.d ]; then
#    for rc in ~/.zshrc.d/*; do
#        if [ -f "$rc" ]; then
#            . "$rc"
#        fi
#    done
#fi
#unset rc

alias ls='eza'
alias ll='eza -al'
alias grep='grep --color=auto'
alias hx='helix'
alias serv='ssh marc@192.168.1.200'
alias arch='distrobox enter arch-dev'
alias cli='distrobox enter cli'
alias dev-min='kitty --title "Helix - Minote Development" --session ~/.config/kitty/minote-session.conf'
alias lg='lazygit'
alias cg='helix ~/.config/ghostty/config'
alias cz='helix ~/.zshrc'
alias ck='helix ~/.config/kitty/kitty.conf'
alias host='distrobox-host-exec'
alias pl='tail -n 100 /var/log/pacman.log'

setopt prompt_subst #this is needed else vcs_info does not parse (not sure why?)
precmd () { vcs_info } # always load before displaying the prompt (used for git)
zstyle ':vcs_info:*' formats '%F{magenta} %b%f' # just show (branch)
#zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)
NEWLINE=$'\n'
ACTIVE_CONT=''
if [[ -n $CONTAINER_ID ]]; then
  ACTIVE_CONT=$'%F{blue}  '$CONTAINER_ID'%f'
fi
# PS1='%F{red}$CONTAINER_ID%f %F{green}%n@%m%f %d $vcs_info_msg_0_ ${NEWLINE}> '
PS1='$ACTIVE_CONT %F{green}%n@%m%f %d $vcs_info_msg_0_ ${NEWLINE}> '
