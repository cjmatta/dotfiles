# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# sensible vim
if [[ ! -d ~/.vim/bundle/vim-sensible ]]
then
    cd ~/.vim/bundle && \
    git clone git://github.com/tpope/vim-sensible.git
fi

# solarized
if [[ ! -d ~/.vim/bundle/vim-colors-solarized ]]
then
	cd ~/.vim/bundle && \
	git clone git://github.com/altercation/vim-colors-solarized.git
fi

# ctrlp
if [[ ! -d ~/.vim/bundle/ctrlp.vim ]]
then
	git clone https://github.com/kien/ctrlp.vim.git ~/.vim/ctrlp.vim 
fi

# nerdtree
if [[ ! -d ~/.vim/bundle/nerdtree ]]
then
    cd ~/.vim/bundle && \
	git clone https://github.com/scrooloose/nerdtree.git
fi

# nerdcomment
if [[ ! -d ~/.vim/bundle/nerdcommenter ]]
then
  cd ~/.vim/bundle && \
    git clone https://github.com/scrooloose/nerdcommenter.git
fi

# syntastic
if [[ ! -d ~/.vim/bundle/syntastic ]]
then
    cd ~/.vim/bundle && \
    git clone https://github.com/scrooloose/syntastic.git
fi

# autopairs
if [[ ! -d ~/.vim/bundle/auto-pairs ]]
then
    cd ~/.vim/bundle && \
    git clone git://github.com/jiangmiao/auto-pairs.git
fi

if [[ ! -f ~/.vimrc ]]
then
    ln -s ~/.dotfiles/vimrc ~/.vimrc
fi

if [[ ! -f ~/.vimrc.local ]]
then
	touch ~/.vimrc.local
fi
