#!/bin/bash


#-------------------------------------------------------------------------------

export XDG_CONFIG_HOME="$HOME"/.config
FONT_DIR="/usr/share/fonts"
TMUX_DIR="$XDG_CONFIG_HOME"/tmux
NVIM_DIR="$XDG_CONFIG_HOME"/nvim

#-------------------------------------------------------------------------------

echo "[01]/[xx] setting up fonts"

if [ -d "$FONT_DIR" ]; then
    echo "fonts directory does exist"
else
    echo "fonts directory does not exist"
    echo "mkdir "$FONT_DIR""
    mkdir "$FONT_DIR"
fi

if [ -e "$FONT_DIR/AnonymiceProNerdFont-Regular.ttf" ]; then
    echo "AnonymicePro Font does exist"
else
    echo "AnonymicePro Font does not exist"
    echo "cp "$PWD/fonts/AnonymiceProNerdFont-Regular.ttf" "$FONT_DIR/AnonymiceProNerdFont-Regular.ttf""
    cp "$PWD/fonts/AnonymiceProNerdFont-Regular.ttf" "$FONT_DIR/AnonymiceProNerdFont-Regular.ttf"
fi

#-------------------------------------------------------------------------------

echo "[02]/[xx] setting up starship"

if [ -e "$XDG_CONFIG_HOME/starship.toml" ]; then
	echo "starship.toml does exist"
else
	echo "starship.toml does not exist"
    echo "linking starship.toml"
	echo "ln -sf "$PWD/starship/starship.toml" "$XDG_CONFIG_HOME""
	ln -sf "$PWD/starship/starship.toml" "$XDG_CONFIG_HOME"
fi

#-------------------------------------------------------------------------------

echo "[03]/[xx] setting up bash"

#-------------------------------------------------------------------------------

echo "[04]/[XX] setting up tmux"

if [ -d "$TMUX_DIR"  ]; then
	echo "tmux directory does exist"
else	
	echo "tmux directory does not exist"
	echo "mkdir "$TMUX_DIR""
	mkdir "$TMUX_DIR"
fi

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

#-------------------------------------------------------------------------------

echo "[05]/[XX] setitng up neovim"
if [ -d "$NVIM_DIR" ]; then
	echo "nvim directory does exist"
else
	echo "nvim directory does not exist"
	echo "mkdir "$NVIM_DIR/lua/plugins""
	mkdir "$NVIM_DIR"
	mkdir "$NVIM_DIR/lua"
	mkdir "$NVIM_DIR/lua/plugins"
fi

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

if [ -e "$NVIM_DIR/lua/plugins/1.1-colortheme.lua" ]; then
	echo "1.1-colortheme.lua does exist"
else
	echo "1.1-colortheme.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/1.1-colortheme.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/1.1-colortheme.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/1.2-statusbar.lua" ]; then
	echo "1.2-statusbar.lua does exist"
else
	echo "1.2-statusbar.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/1.2-statusbar.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/1.2-statusbar.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/2.1-file-browser.lua" ]; then
	echo "2.1-file-browser.lua does exist"
else
	echo "2.1-file-browser.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/2.1-file-browser.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/2.1-file-browser.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/2.2-fuzzy-finder.lua" ]; then
	echo "2.2-fuzzy-finder.lua does exist"
else
	echo "2.2-fuzzy-finder.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/2.2-fuzzy-finder.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/2.2-fuzzy-finder.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/2.3-tmux.lua" ]; then
	echo "2.3-tmux.lua does exist"
else
	echo "2.3-tmux.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/2.3-tmux.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/2.3-tmux.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/3.1-parser.lua" ]; then
	echo "3.1-parser.lua does exist"
else
	echo "3.1-parser.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/3.1-parser.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/3.1-parser.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/3.2-lsp-config.lua" ]; then
	echo "3.2-lsp-config.lua does exist"
else
	echo "3.2-lsp-config.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/3.2-lsp-config.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/3.2-lsp-config.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/3.3-lsp-completions.lua" ]; then
	echo "3.3-lsp-completions.lua does exist"
else
	echo "3.3-lsp-completions.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/3.3-lsp-completions.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/3.3-lsp-completions.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/3.4-lsp-diagnostics.lua" ]; then
	echo "3.4-lsp-diagnostics.lua does exist"
else
	echo "3.4-lsp-diagnostics.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/3.4-lsp-diagnostics.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/3.4-lsp-diagnostics.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/4.1-debugger.lua" ]; then
	echo "4.1-debugger.lua does exist"
else
	echo "4.1-debugger.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/4.1-debugger.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/4.1-debugger.lua" "$NVIM_DIR/lua/plugins"
fi

if [ -e "$NVIM_DIR/lua/plugins/4.2-vim-test.lua" ]; then
	echo "4.2-vim-test.lua does exist"
else
	echo "4.2-vim-test.lua does not exist"
	echo "ln -sf "$PWD/nvim/lua/plugins/4.2-vim-test.lua" "$NVIM_DIR/lua/plugins""
	ln -sf "$PWD/nvim/lua/plugins/4.2-vim-test.lua" "$NVIM_DIR/lua/plugins"
fi
#if [ -e "$NVIM_DIR/lua/plugins/0X.lua" ]; then
#	echo ".lua does exist"
#else
#	echo ".lua does not exist"
#	echo "ln -sf "$PWD/nvim/lua/plugins/0X.lua" "$NVIM_DIR/lua/plugins""
#	ln -sf "$PWD/nvim/lua/plugins/0X.lua" "$NVIM_DIR/lua/plugins"
#fi
