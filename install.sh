#!/bin/sh

ALL="bash bspwm conky latex less mpd ncmpcpp neovim openbox tint2 tmux vim X"

# check for stow
command -v stow > /dev/null ||
{ echo "GNU stow is required to run this script"; exit 1; }

# install or uninstall
if [ "$1" = "-u" ]; then
  stow -D $ALL
else
  stow $ALL
fi
