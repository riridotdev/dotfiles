[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:~/.local/bin"

if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec sway
fi
