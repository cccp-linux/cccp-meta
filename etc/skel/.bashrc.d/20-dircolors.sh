# 20-dircolors.sh

if [ -x /usr/bin/dircolors ]; then

    if [ -r ~/.dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)"
    elif [ -r /etc/DIR_COLORS ]; then
        eval "$(dircolors -b /etc/DIR_COLORS)"
    else
        eval "$(dircolors -b)"
    fi

    alias ls="ls --color=auto"
fi
