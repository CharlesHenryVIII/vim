set runtimepath-=~/vimfiles
set runtimepath^=~/.vim
set runtimepath-=~/vimfiles/after
set runtimepath+=~/.vim/after
set runtimepath+=~/.vim/neovim
set packpath-=~/vimfiles
set packpath^=~/.vim
set packpath-=~/vimfiles/after
set packpath+=~/.vim/after
set packpath+=~/.vim/neovim/plugins
let &packpath = &runtimepath
source ~/.vimrc
source ~/.vim/neovim/init.lua

"source ~/neovim/autoload/plug.vim
"call plug#begin('~/neovim/lua/plugins')
"" below are some vim plugins for demonstration purpose.
"" add the plugin you want to use here.
"Plug 'nvim-treesitter/nvim-treesitter'
""Plug 'iCyMind/NeoSolarized'
"
""Plug 'vim-airline/vim-airline'
""Plug 'vim-airline/vim-airline-themes'
"call plug#end()

