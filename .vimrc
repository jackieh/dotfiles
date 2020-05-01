set nocompatible
filetype off

" Vundle stuff begin.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
" Vundle stuff end.

syntax on
filetype plugin on
filetype plugin indent on

set autoread
set hlsearch
set linebreak
set number
set ruler
set showcmd
set showmode
set wrap
set history=1000
set scrolloff=8
set visualbell t_vb=

set wildignorecase
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.obj,*~,DS_Store*,*.gem,*.png,*.jpg,*.gif

set foldmethod=indent
set foldlevel=100

set expandtab
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set backspace=2
set cindent cinoptions=(0,w1,W4,L0,l1,g0 shiftwidth=4 expandtab
set cinoptions+=(0,w1

" Color settings.
set t_Co=256
set background=dark
colorscheme hybrid
" Override MatchParen colors if the color scheme makes the cursor disappear.
highlight MatchParen ctermbg=none ctermfg=none
" Override ColorColumn color if the color scheme makes it obscure the text.
"highlight ColorColumn ctermbg=235

" Airline settings.
let g:airline_theme='hybrid'
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr=' ln'

" Clang complete settings.
" Set include paths in the .clang_complete file at the base of a repository.
let g:clang_complete_copen=1
let g:clang_use_library=1
let g:clang_library_path='/usr/lib/libclang.so'
let g:clang_hl_errors=1
let g:clang_periodic_quickfix=1

" Shortcuts for opening, closing, and navigating windows.
map <C-S-Q> :q<CR>
map <C-S-I> :vsplit<CR>
map <C-S-J> :split<CR>
map <C-S-Up> <C-W><Up>
map <C-S-Down> <C-W><Down>
map <C-S-Right> <C-W><Right>
map <C-S-Left> <C-W><Left>

"""
" Improve visibility of lines that are too long. Long lines are generally
" undesirable for Vim vsplit windows.
"
" Define a shortcut to toggle color column in case it impedes visibility of the
" code.
"""

" Display one column where the line exceeds 80 characters.
let g:colorcolumnsetting=81
" Display three columns.
"let g:colorcolumnsetting='81,101,121'
execute 'set colorcolumn='.g:colorcolumnsetting
map <C-C> :call ColorColumnToggle()<CR>
function! ColorColumnToggle()
    if &colorcolumn
        setlocal colorcolumn=
    else
        execute 'setlocal colorcolumn='.g:colorcolumnsetting
    endif
endfunction

"""
" Displaying whitespace is useful for eliminating trailing whitespace or
" eliminating hard tabs if undesired.
"
" Define a shortcut to toggle listchars in case inconsistent whitespace is
" unavoidable and you want to save yourself some sanity.
"""

let g:listcharssetting='tab:→\ ,trail:•,eol:↲,nbsp:␣,extends:»,precedes:«'
execute 'set list listchars='.g:listcharssetting
map <C-X> :call ListCharsToggle()<CR>
function! ListCharsToggle()
    if &list
        setlocal nolist
    else
        execute 'setlocal list listchars='.g:listcharssetting
    endif
endfunction
