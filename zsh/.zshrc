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

alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias grep='grep --color=auto'
alias hx='helix'
#alias serv='konsole --profile server --new-tab -e ssh marc@192.168.1.200'
alias serv='kitten ssh marc@192.168.1.200'
#alias arch='konsole --profile container --new-tab -e distrobox-enter arch-dev'
#alias tw='konsole --profile container --new-tab -e distrobox-enter tw'
alias arch='distrobox enter arch-dev'
alias tw='distrobox enter tw'
alias dev-min='minote-dev.sh'
alias lg='lazygit'
alias gc='helix ~/.config/ghostty/config'

setopt prompt_subst #this is needed else vcs_info does not parse (not sure why?)
precmd () { vcs_info } # always load before displaying the prompt (used for git)
zstyle ':vcs_info:*' formats '%F{magenta}[%b]%f' # just show (branch)
#zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)
NEWLINE=$'\n'
PS1='%F{red}$CONTAINER_ID%f %F{green}%n@%m%f %d $vcs_info_msg_0_ ${NEWLINE}> '

