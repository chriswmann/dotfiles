# All OSes
rm -rf ~/.config/nvim
ln -sf "$PWD/nvim" ~/.config/nvim
ln -sf "$PWD/.aliases" ~/.aliases
rm -rf ~/.config/tmux
ln -sf "$PWD/tmux" ~/.config/tmux

# OS specific
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    ln -sf ./.bashrc ~/bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
    ln -sf "$PWD/tokyo_night.itermcolours" ~/.local/share/
    ln -sf "$PWD/.zshrc" ~/zshrc
    rustup completions zsh > ~/.zfunc/_rustup
    rustup completions zsh cargo > ~/.zfunc/_cargo
fi

