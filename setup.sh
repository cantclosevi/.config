#!/bin/bash


export XDG_CONFIG_HOME="$HOME"/.config
TMUX_DIR="$XDG_CONFIG_HOME"/tmux
NVIM_DIR="$XDG_CONFIG_HOME"/nvim


echo "setting up tmux"

if [ -d "$TMUX_DIR"  ]; then
	echo "tmux directory does exist"
else	
	echo "tmux directory does not exist"
	echo "creating tmux directory"
	echo "mkdir "$TMUX_DIR""
	mkdir "$TMUX_DIR"
fi

echo "linking tmux.conf"
if [ -e "$TMUX_DIR"/tmux.conf ]; then
	echo "tmux.conf does exist"
else
	echo "tmux conf does not exist"
	echo "ln -sf "$PWD/tmux/tmux.conf" "$TMUX_DIR""
	ln -sf "$PWD/tmux/tmux.conf" "$TMUX_DIR"
fi

echo "cloning tpm for tmux"
if [ -d "$TMUX_DIR/plugins/tpm" ]; then
	echo "tpm directory does exist"
else
	echo "tpm directory does not exist"
	echo "git clone https://github.com/tmux-plugins/tpm "$TMUX_DIR/plugins/tpm""
	git clone https://github.com/tmux-plugins/tpm "$TMUX_DIR/plugins/tpm"
fi
