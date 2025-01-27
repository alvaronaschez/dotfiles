set nocompatible
syntax on
filetype plugin indent on
set autoindent
set nowrap
set encoding=utf8
set clipboard=unnamedplus
" colorscheme slate
set number
set mouse=a

set list
set listchars=tab:→\ ,trail:·,extends:…,precedes:…,nbsp:•
"listchars+=eol:¬,space:·

"" optional stuff
set hidden
"let mapleader = "\<space>"
"let mapleader = ","
nnoremap ; :
"set exrc " use local .vimrc files

" autopairs without a plugin
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O


call plug#begin()

" List your plugins here
" Plug 'tpope/vim-sensible'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

"Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'

Plug 'rhysd/vim-clang-format'

Plug 'dense-analysis/ale'

"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()

"let g:deoplete#enable_at_startup = 1

"let g:ale_c_parse_makefile = 1
"let g:ale_linters = {'c': ['gcc']}


let g:airline_theme='monochrome'
" are we in tty?
"if $TERM != 'linux' " this will fail when running tmux from tty
if !empty($DISPLAY)
	let g:airline_powerline_fonts = 1

	"let g:airline_theme='simple'
	"colorscheme default

	let g:airline_theme='violet'
	colorscheme slate
endif


" tagbar
nmap <F5> :TagbarToggle<CR>

