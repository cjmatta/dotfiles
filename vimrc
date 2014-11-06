" Load bundles
execute pathogen#infect()

syntax on
set number
set background=dark
set autoindent
colorscheme solarized
filetype plugin indent on

" Colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Numbers toggle
:nmap \l :setlocal number!<CR>

" Paste mode toggle
:nmap \o :set paste!<CR>

" Toggle current fold
nnoremap <space> za
vnoremap <space> za

" Search
" Highlight on search
:set incsearch
:set ignorecase
" /foo matches FOO and fOo, but /FOO only matches the former
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>
" clear search
:nmap \/ :let @/ = ""<CR>

" Folding
set foldmethod=syntax
set foldcolumn=3

" Pane navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Buffer navigation
" last buffer
:nmap <C-e> :b#<CR>
" next buffer
:nmap <C-n> :bnext<CR>
" previous
:nmap <C-p> :bprev<CR>

" Tab stuff
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

" Toggle wrap
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" CtrlP
:nmap ; :CtrlPBuffer<CR>
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" NerdTree
:nmap \e :NERDTreeToggle<CR>

" respect the local vim
source ~/.vimrc.local

