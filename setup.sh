rm -rf ~/.config/nvim
mkdir -p ~/.config/nvim
cp -R nvimconf/* ~/.config/nvim

# installing packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
