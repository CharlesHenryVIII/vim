# VIM/GVIM
1. Download and install [vim](https://www.vim.org/download.php)
2. Create/Set HOME environment variable to `C:/Users/<username>/dotfiles`
3. Create symbolic links
    - Windows
        - May require `cmd.exe /c mklink` or just `mklink`
        - `cmd.exe /c mklink /D %HOME%\.vim         C:\projects\vim\.vim`
        - `cmd.exe /c mklink    %HOME%\.vimrc       C:\projects\vim\.vimrc`
        - `cmd.exe /c mklink    %HOME%\.gvimrc      C:\projects\vim\.gvimrc`
        - `cmd.exe /c mklink    %HOME%\.ideavimrc   C:\projects\vim\.ideavimrc`
        - `cmd.exe /c mklink    %LOCALAPPDATA%\nvim\init.vim C:\projects\vim\init.vim`
    - Linux
        - ln -s something something
4. run vim
    - Windows: `gvim.exe`
    - Linux: `vim`


# NEOVIM/NEOVIDE
1. Download and install [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
2. Download and install [Neovide](https://neovide.dev/)
3. create `~appdata/local/nvim/init.vim`

```
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
```

4. Open Visual Studio Installer
5. Modify install and add the following 2 individual Components
    - `C++ Clang Compiler for Windows`
    - `MSBuild support for LLVM (clang-cl) toolset`

6. Update environment variable "paths" with the clang and MSBUild install location
    - clang location: `C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\Llvm\x64\bin`
    - MSbuild location: `C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin`
