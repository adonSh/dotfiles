" ~/.vimrc                    "
"   Per-use vim configuration "
" - - - - - - - - - - - - - - " 

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" BASIC CONFIG
set nocompatible           " vim not vi
set showcmd                " Show (partial) command in status line.
syntax on                  " syntax highlighting
set nowrap                 " does not wrap lines longer than 80 characters
set nohlsearch             " does not highlight words in a search
set splitright             " opens vsplit buffers to right of current buffer
set splitbelow             " opens hsplit buffers below current buffer
set colorcolumn=81         " highlights characters after 80 columns
"set spell spelllang=en_us " spellchecker
"set background=dark

" INDENTATION RULES
filetype indent on          " rules in ~/.vim/indent
set tabstop=8               " how many spaces is a tab
set shiftwidth=8            " how far to shift text with < & >
set noexpandtab             " tabs not spaces
set noautoindent            " no
set nocindent               " dumb
set nosmartindent           " stuff!

" FANCY STUFF
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
                            " ^ disables auto-commenting (?)
command Make silent make | redraw!
" jumps to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
