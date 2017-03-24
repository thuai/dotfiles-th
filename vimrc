execute pathogen#infect()

" Configure of Vundle
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'  "文件浏览
Plugin 'majutsushi/tagbar'    "代码符号
Plugin 'wesleyche/SrcExpl'    "类似sourceInsight的代码预览窗口

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
" ------- End of Vundle ----------

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set tabstop=4
set nu

syntax on
" syntax off

set smartindent
set laststatus=2

set autochdir

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

"powerline {
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}

" map for key "
inoremap jj <Esc>
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>kj
" nnoremap j VipJ

" leader key of vim "
let mapleader=";"

"------ begin ctags && cscope ------ "
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_left = 1
nnoremap <F3> :TagbarToggle<CR>
let NERDTreeWinPos='right'
nnoremap <F2> :NERDTreeToggle<CR>
nmap <F4> :SrcExplToggle<CR>
let g:Srcexpl_winHeight = 8
" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

let g:SrcExpl_pluginList = [
         \ "__Tag_List__",
                 \ "_NERD_tree_"
                     \ ]

set tags=tags;/  "搜索上一级建立的tag
"------ end ctags && cscope ------ "
