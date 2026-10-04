# ~/.bashrc: executed by bash(1) for interactive non-login shells

case $- in
    *i*) ;;
      *) return;;
esac

for f in "$HOME"/.bashrc.d/*.sh; do
    if [ -r "$f" ]; then . "$f"; fi
done
unset f
