for file in *; do
    if [[ -d $PASSED ]]; then
        ln -sf ./"$file" ~/"$file"
    fi
done

ln -sf nvim ~/.config/

