syntax on
call plug#begin('~/.vim/plugged')
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
set showcmd
silent! map ' :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="'" 
set encoding=UTF-8
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"se mouse+=a
"NERDTREE"
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:NERDTreeLimitedSyntax = 1

let g:NERDTreeHighlightCursorline = 0

"PLUGS"
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'liuchengxu/space-vim-dark'
Plug 'cocopon/iceberg.vim'
Plug 'ajh17/spacegray.vim'
Plug 'StanAngeloff/php.vim'
Plug 'yggdroot/indentline'
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'crusoexia/vim-monokai'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'tomlion/vim-solidity'
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'yuttie/comfortable-motion.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug '~/my-prototype-plugin'
call plug#end()
colorscheme gruvbox
set termguicolors
set number
set incsearch
set hlsearch
set bg=dark
let g:pymode_rope = 0
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
filetype plugin on
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
autocmd FileType python setlocal completeopt-=preview
set laststatus=2
