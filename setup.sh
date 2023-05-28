for file in *; do
    if [[ -d $PASSED ]]; then
        ln -sf ./"$file" ~/"$file"
    fi
done

ln -sf "$PWD/nvim" ~/.config/nvim
ln -sf "$PWD/nnvim/lua" ~/.config/nvim/lua
ln -sf "$PWD/nnvim/lua/plugins" ~/.config/nvim/lua/plugins

ln -sf "$PWD/tokyo_night.itermcolours" ~/.local/share/

