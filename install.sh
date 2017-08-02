curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -f -s $(pwd)/.config ~/.config
ln -f -s $(pwd)/.gitconfig ~/.gitconfig
ln -f -s $(pwd)/.gitconfig-tbk ~/.gitconfig-tbk
ln -f -s $(pwd)/.global_gitignore ~/.global_gitignore
ln -f -s $(pwd)/.zshrc ~/.zshrc
ln -f -s $(pwd)/.ssh/config ~/.ssh/config

pip3 install neovim
