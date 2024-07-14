#!/bin/bash


export XDG_CONFIG_HOME="$HOME"/.config
TMUX_DIR="$XDG_CONFIG_HOME"/tmux
NVIM_DIR="$XDG_CONFIG_HOME"/nvim


echo "[01]/[XX] setting up tmux"

if [ -d "$TMUX_DIR"  ]; then
	echo "tmux directory does exist"
else	
	echo "tmux directory does not exist"
	echo "creating tmux directory"
	echo "mkdir "$TMUX_DIR""
	mkdir "$TMUX_DIR"
fi

echo "linking tmux.conf"
if [ -e "$TMUX_DIR/tmux.conf" ]; then
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


echo "[02]/[XX] setitng up neovim"
if [ -d "$NVIM_DIR" ]; then
	echo "nvim directory does exist"
else
	echo "nvim directory does not exist"
	echo "mkdir "$NVIM_DIR/lua/plugins""
	mkdir "$NVIM_DIR"
	mkdir "$NVIM_DIR/lua"
	mkdir "$NVIM_DIR/lua/plugins"
fi

echo "linking nvim configuration files"
if [ -e "$NVIM_DIR/init.lua" ]; then
	echo "init.lua does exist"
else
	echo "init.lua does not exist"
	echo "ln -sf "$PWD/nvim/init.lua" "$NVIM_DIR""
	ln -sf "$PWD/nvim/init.lua" "$NVIM_DIR"
fi

if [ -e "$NVIM_DIR/lua/nvim-settings.lua" ]; then
	echo "nvim-settings.lua does exist"
else
	echo "nvim-settings.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/nvim-settings.lua" "$NVIM_DIR/lua""
	ln -sf "$PWD/nvim/lua/nvim-settings.lua" "$NVIM_DIR/lua"
fi

if [ -e "$NVIM_DIR/lua/plugins/00.dependencies.lua" ]; then
	echo "00.dependencies.lua does exist"
else
	echo "00.dependencies.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/00.dependencies.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/00.dependencies.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/01.theme.lua" ]; then
	echo "01.theme.lua does exist"
else
	echo "01.theme.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/01.theme.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/01.theme.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/02.statusbar.lua" ]; then
	echo "02.statusbar.lua does exist"
else
	echo "02.statusbar.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/02.statusbar.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/02.statusbar.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/03.file-browser.lua" ]; then
	echo "03.file-browser.lua does exist"
else
	echo "03.file-browser.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/03.file-browser.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/03.file-browser.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/04.fuzzy-finder.lua" ]; then
	echo "04.fuzzy-finder.lua does exist"
else
	echo "04.-fuzzy-finder.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/04.fuzzy-finder.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/04.fuzzy-finder.lua" "$NVIM_DIR/lua/plugins"
fi

#if [ -e "$NVIM_DIR/lua/plugins/0X.lua" ]; then
#	echo ".lua does exist"
#else
#	echo ".lua does not exist"
#	echo "ln -sf "$PWD/nvim/lua/plugins/0X.lua" "$NVIM_DIR/lua/plugins""
#	ln -sf "$PWD/nvim/lua/plugins/0X.lua" "$NVIM_DIR/lua/plugins"
#fi
