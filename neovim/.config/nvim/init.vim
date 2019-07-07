" ~/.config/nvim/init.vim     "
" Per-user nvim configuration "
" - - - - - - - - - - - - - - " 

" BASIC CONFIG
set nocompatible           " vim not vi
set showcmd                " Show (partial) command in status line.
syntax on                  " syntax highlighting
set ruler                  " show line, column number in status bar
set nowrap                 " does not wrap lines longer than 80 characters
set nobackup               " doesn't keep .backup~ files
set nohlsearch             " does not highlight words in a search
set splitright             " opens vsplit buffers to right of current buffer
set splitbelow             " opens hsplit buffers below current buffer
set colorcolumn=81         " highlights characters after 80 columns
set laststatus=1           " only show status bar when multiple windows are open
set background=light       " console bg
set formatoptions-=o       " disable
set formatoptions-=r       " auto-
set formatoptions-=c       " commenting
set mouse-=a               " disable visual mode with the mouse
hi texError ctermbg=white  " gets rid of erroneous syntax errors in latex
                           " (^ probably a bad idea really)
hi SpellBad ctermbg=70     " pink highlighting for misspelled words
hi SpellCap ctermbg=43     " blue highlighting for mis-capitalized words
hi ColorColumn ctermbg=74  " visible ColorColumn

" INDENTATION RULES
filetype indent on          " custom indentation rules
set tabstop=8               " how many spaces is a tab
set shiftwidth=8            " how far to shift text with < & >
set expandtab               " spaces not tabs
set noautoindent            " no
set nocindent               " dumb
set nosmartindent           " stuff!

" FANCY STUFF
" jumps to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" disables spellcheck in a terminal buffer
augroup terminal
  autocmd TermOpen * setlocal nospell
augroup end
command Make silent make | redraw! | cw
