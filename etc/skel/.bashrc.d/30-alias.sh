# 30-alias.sh

export HISTCONTROL=ignoreboth
export NEWT_COLORS=root=black,black

if command -v nvim >/dev/null 2>&1; then
    export MANPAGER="nvim --clean -u /usr/share/cccp-meta/manpager.vim +Man!"
fi

alias ls="ls -FN --color=auto"
alias ll="ls -l"
alias la="ls -la"
alias lh="ls -lh"

alias installed="apt-mark showmanual"
alias nspawn="sudo systemd-nspawn --resolv-conf=bind-stub --timezone=off"
alias sl="sudo su --login"
