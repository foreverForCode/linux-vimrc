set nu

syntax on

set nocompatible

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set autoindent

set smartindent
set nobackup
set cursorline
set mouse =a
set hlsearch
set incsearch
set shortmess=atI
set autochdir
set guifont=Menlo:h18
"set guifont=Courier_new:h16:cDEFAULT
set fileencoding=utf8
set fileencodings=utf8,usc-bom,gbk,cp936,gb2312,gb18030
set autoindent
set fdm=marker
set shortmess=atI
set showcmd
set ruler

set noswapfile
"=================bundle===================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/khaki.vim'
Plugin '907th/vim-auto-save'
Plugin 'Shougo/neocomplete.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mattn/emmet-vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"===============nerdTree配置================================
"" NerdTree才插件的配置信息
""将F2设置为开关NERDTree的快捷键
map <f2> :NERDTreeToggle<cr>
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=30
""窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
""不显示隐藏文件
let g:NERDTreeHidden=0
"=========================autosave================
let auto_save = 1
let g:auto_save_events=["InsertLeave","TextChanged"]
let g:auto_save_write_all_buffers = 1

"================键盘映射==================
map <F5> :exec '!python' shellescape(@%,1)<cr>
""map <F4> "+y<cr>
map <F4> :let @a=expand('%:p')<cr>
map <F3> :e ~/.vimrc<cr>
map <F6> :ToggleBufExplorer<cr>
map <F7> :source ~\.vimrc<cr>
map <F9> :normal gg=G<cr>


"===================配色================
if !has("gui_running")
    set t_Co=256
endif
colorscheme khaki
"===================代码注释===========
let g:DoxygenToolkit_authorName="freewm@163.com" 
" :DoxAuthor
" :Dox
"===================代码自动补全=========
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
"==================emmet=================
let g:user_emmet_leader_key='<C-z>'
"======================================
set tags=tags
