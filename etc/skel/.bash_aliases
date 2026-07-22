# .bash_aliases

alias ls="ls -FN --color=auto"
alias ll="ls -l"
alias la="ls -la"
alias lh="ls -lh"

alias installed="apt-mark showmanual"
alias nspawn="sudo systemd-nspawn --resolv-conf=bind-stub --timezone=off"
alias sl="sudo su --login"

export GTK_A11Y=none
export HISTCONTROL=ignoreboth
export NEWT_COLORS=root=black,black
export NO_AT_BRIDGE=1
export QT_ACCESSIBILITY=0

if [[ -x $(command -v nvim) ]]; then
    export MANPAGER="nvim --clean -u ~/.config/nvim/manpager.vim +Man!"
fi

osc7_cwd()
{
    local c i
    printf '\e]7;file://'
    for ((i = 0; i < ${#PWD}; ++i)); do
        c=${PWD:$i:1}
        [[ "$c" == [-/:_.!\'\(\)~a-zA-Z0-9] ]] && printf '%s' "$c" || printf '%%%02X' "'$c"
    done
    printf '\e\\'
}
PROMPT_COMMAND=${PROMPT_COMMAND:+${PROMPT_COMMAND%;}; }osc7_cwd
