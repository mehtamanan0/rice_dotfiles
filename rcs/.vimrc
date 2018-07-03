syntax on
colorscheme monokai
call plug#begin('~/.vim/plugged')
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
set encoding=UTF-8
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'crusoexia/vim-monokai'
Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'davidhalter/jedi-vim'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'tomlion/vim-solidity'
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
call plug#end()
set termguicolors
set number
set incsearch
set hlsearch
let g:pymode_rope = 0
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
autocmd FileType python setlocal completeopt-=preview
set laststatus=2
