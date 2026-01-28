alias ls="ls -FN --color=auto"
alias ll="ls -l"
alias la="ls -la"
alias lh="ls -lh"

alias installed="apt-mark showmanual"
alias nspawn="sudo systemd-nspawn --resolv-conf=bind-stub --timezone=off"
alias sl="sudo su --login"
alias tarx="tar --xattrs --xattrs-include='*' --acls --special"

export HISTCONTROL=ignoreboth

if [[ -x $(command -v nvim) ]]; then
    export MANPAGER="nvim +Man!"
fi
