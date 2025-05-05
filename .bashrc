# ~/.bashrc

# Don’t do anything if not running interactively
[[ $- != *i* ]] && return

# Set prompt
PS1='\u@\h:\w\$ '

# History settings
HISTSIZE=5000
HISTFILESIZE=10000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Enable color support
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# Useful aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# Source .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# FZF (if installed)
if command -v fzf >/dev/null 2>&1; then
    export FZF_DEFAULT_COMMAND='find . -type f'
fi

# Git prompt (if available)
if [ -f /etc/bash_completion.d/git-prompt ]; then
    source /etc/bash_completion.d/git-prompt
    PS1='\u@\h:\w$(__git_ps1 " (%s)")\$ '
fi

if [ -f /usr/share/bash-completion/completions/git ]; then
    source /usr/share/bash-completion/completions/git
fi
