
" These are here so the vim inside of git bash does not try to use this sweet ass color scheme
"cd C:\Projects\
cd C:\Projects
"colorscheme slate
"colorscheme torte 
"colorscheme vividchalk 
"colorscheme badwolf
"colorscheme molokai
"colorscheme quiet
"colorscheme gruvbox

" Save file from insert mode
inoremap <C-s> <esc>:w<CR>
" Save file from visual mode
vmap <C-s> <esc>:w<CR>gv
" Save file from normal mode
nnoremap <silent> <C-S> :w<CR>

" Insert both brackets at the proper indentation level when opening a bracket
imap {<CR> {<CR>}<Up><C-o>o

"remove menu bar
:set guioptions-=m

"remove toolbar
:set guioptions-=T  

"remove right-hand scroll bar
:set guioptions-=r  

"remove left-hand scroll bar
:set guioptions-=L  

" remove visual bells from GVIM -> Duplicated from .vimrc
set t_vb=
