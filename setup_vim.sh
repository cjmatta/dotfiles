mkdir -p ~/.dotfiles && cd ~/.dotfiles && \
curl -O https://raw.githubusercontent.com/cjmatta/dotfiles/master/vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# sensible vim
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-sensible.git

# solarized
cd ~/.vim/bundle && \
git clone git://github.com/altercation/vim-colors-solarized.git

ln -s ./vimrc ~/.vimrc
touch ~/.vimrc.local
