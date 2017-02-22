" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.

runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

set ts=4
set autoindent
set nu
set tabstop=4 shiftwidth=4
set expandtab
setlocal omnifunc=syntaxcomplete#Complete

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set list listchars=tab:→\ ,trail:·

set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nerdtree'
Plugin 'tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'nerdcommenter'
Plugin 'tern_for_vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on

map <F2> :NERDTreeToggle<cr>
map <F3> :TagbarToggle<cr>
map <F4> :SyntasticCheck jshint --extract=auto<cr>
map <F6> :lclose<cr>
map <F7> :tabnext<cr>
map <F8> :pclose<cr>
"colorscheme solarized

execute pathogen#infect()

let mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump = 1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_loc_list_height = 3

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_javascript_checkers = ['jshint']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make YCM compatible with UltiSnips
let g:ycm_key_list_select_completion = ['<s-tab>', '<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<c-tab>', '<Up>', '<C-k>']

" Better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<c-tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<c-l>"

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 0
