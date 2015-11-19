" VIM Configuration File
" Description: Optimized for C/C++ development
"

""""""""""""""""""""
" LEADER KEY BEGIN "
""""""""""""""""""""
map <space> <leader>

" Resize vertical splits
nnoremap <leader>= :vertical resize +10<cr>
nnoremap <leader>- :vertical resize -10<cr>

" Resize horizontal splits
nnoremap <leader>] :resize +10<cr>
nnoremap <leader>[ :resize -10<cr>

" Center the screen on the cursor
nnoremap <leader>c :normal zz<cr>

" Save with w
nnoremap <leader>w :w<cr>

" Close current window, won't close program
nnoremap <leader>q :close<cr>

" Show the current working directory
nnoremap <leader>p :pwd<cr>
" Set all window's current directory to the file's directory
nnoremap <leader>d :cd %:p:h<cr>
" Set current window's current directory to the file's directory
nnoremap <leader>ld :lcd %:p:h<cr>
" Don't use the path, just set the current working directory and use :e to
" find files recursively
" DEPRECATED:           " Set the path to the current directory, recursive
                        " nnoremap <leader>sd :set path=%:p:h<cr>

" Shortcut to yanking to the system clipboard
map <leader><space>y "*y
map <leader><space>p "*p
" map <leader><C-v> "*P

" Start a text search
nnoremap <leader>/ :vimgrep /

" Start a file search (use <tab>, not <cr>!)
nnoremap <leader>f :e **/

" Open the .vimrc file
nnoremap <leader>vf :e $HOME/.vimrc<cr>

" Reload .vimrc file - disabled unless making changes in the vimrc
" nnoremap <leader>vr :so $MYVIMRC<cr>

""""""""""""""""""
" LEADER KEY END "
""""""""""""""""""

" NOTE: Search for files from the current working directory with
" :e **/filename.ext // Recursive search
" :e **/*.h\>        // Finds all .h files, won't find .hpp



" Y functions like D, yanking until the end of the line
nnoremap Y y$

" hitting j k in insert mode will hit escape
inoremap jk <esc>


" NOTE: This is still happening on windows, but not on Mac for some reason
" Silence the netrw from asking on "e ." commands
" :silent Exp " Not functioning ?!!?
let g:netrw_silent=1
set shortmess+=T

" F2 will open the file explorer in the current directory
" nnoremap <F2> :e .<CR>

" Build GLMario.vcxproj
" nnoremap <F8> :e ..\GLMario.vcxproj<CR>:make<CR><C-6>

" Package control
" execute pathogen#infect()

" disable vi compatibility (emulation of old bugs)
set nocompatible

" omnicppcomplete scratch pane disable. change - to + to reenable
" set completeopt-=preview

" Allow plugins
filetype plugin on

" set font
set guifont=Consolas:h9:cANSI

" Disable audio and visual bells (error beeps and screen flashes)
" This must also be set in the gvimrc
set vb t_vb=

" Don't wrap long lines of text
set nowrap

" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
" set textwidth=120

" Change working directory to the currently opened file's directory
" set autochdir

" Allow switching from an unsaved buffer
" set hidden

" Disable swap file creation
" set noswapfile

" Better command-line completion
set wildmenu

" Allow backspacing over autoindent, line breaks and start of insert action
" set backspace=indent,eol,start
set backspace=indent,start

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Insert both brackets at the proper indentation level when opening a bracket
imap { {<CR>}<Up><C-o>o
" Test this to see if it functions better for only happening after switching
" to the next line
" NOTE: does not work well, because it delays after the <CR> to see if the {
" is coming
" imap <CR>{ {<CR>}<Up><C-o>o

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Turn off search highlighting when pressing escape in normal mode
nnoremap <esc> :noh<return><esc>

" Enable search highlighting
set hlsearch

" Strip trailing whitespace on save
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre .vimrc,*.h,*.c,*.cpp,*.hpp,*.C,*.java,*.glsl :call <SID>StripTrailingWhitespaces()
"End strip trailing spaces

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" turn syntax highlighting on
" Colorscheme settings are done in the .gimvrc to not affect the vim in git bash
set t_Co=256
syntax on
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
