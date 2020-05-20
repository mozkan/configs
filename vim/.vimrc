"
" ----- Vundle Settings -----
"

set nocompatible      " Use vim, no vi defaults
filetype off          " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdTree'
Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'valloric/youcompleteme'
Plugin 'mileszs/ack.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'mbbill/undotree'
"Plugin 'kien/ctrlp.vim'
"Plugin 'vim-scripts/Conque-GDB'
Plugin 'gcmt/taboo.vim'
Plugin 'mfukar/robotframework-vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'kana/vim-operator-user'
Plugin 'dkprice/vim-easygrep'
Plugin 'chrisbra/Recover.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required 


"
" ----- Custom base settings -----
"

" Basic Setup
set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
set wrap
set textwidth=80
set colorcolumn=80
set t_Co=256

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Window
nmap <C-H> :vertical resize -1<CR>
nmap <C-L> :vertical resize +1<CR>
nmap <C-K> :resize -1<CR>
nmap <C-J> :resize +1<CR>
map <F6> :vspl<CR>

" Tab Pages
map <c-p> :tabn<CR>
map <c-o> :tabp<CR>

" Folding
set foldmethod=syntax
set nofoldenable


"
" ----- Plugin Configuration -----
"

" Solarized Color Plugin Configuration
set background=dark
colorscheme solarized
let g:solarized_termcolors=16

" Airline Plugin Configuration
set laststatus=2
let g:airline_powerline_fonts = 1

" CPP Enhanced Highlight
let g:cpp_class_scope_highlight = 1

" NERDTree
map <F2> :NERDTreeFocus<CR>

" NERDCommenter
let g:NERDTrimTrailingWhitespace = 1
let g:NERDAltDelims_cc = 1
let g:NERDAltDelims_cpp = 1
let g:NERDSpaceDelims = 1

" Buffers and Buffergator
map <F3> :bp<CR>
map <F4> :bn<CR>
map <F5> :BuffergatorToggle<CR>
let g:buffergator_viewport_split_policy = 'R'

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" Conque-GDB
let g:ConqueGdb_SrcSplit = 'left'
let g:ConqueGdb_Leader = '~'

" Vim Clang-Format
let g:clang_format#command = "clang-format-3.8"
let g:clang_format#code_style = "google"
let g:clang_format#style_options = {
            \ "Standard" : "C++11" }

