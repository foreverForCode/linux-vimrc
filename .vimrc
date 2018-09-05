"=============基本设置=================================
set nocompatible " 不兼容vi模式
set nu "设置行号
syntax on "语法高亮
set shiftwidth=4 " 缩进4个字节
set softtabstop=4
set tabstop=4
set expandtab
set ignorecase " 搜索忽略大小写
set hlsearch
set incsearch
set guifont=DejaVu_Sans_Mono:h14:cDEFAULT " 设置字体
set fileencoding=utf-8 "设置文件字体格式
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
set backspace=indent,eol,start  "解决window backspace失效问题
set autoindent"自动缩进
filetype off                  " required
set mouse=a  " allow mouse
set fdm=marker " 代码折叠
set shortmess=atI
set smartindent "智能选择对齐方式
set cindent" c缩进
set nobackup "去除备份
set noswapfile
set autochdir "自动切换目录
set cursorline
set autoread
"=============vundle的配置内容===========================
" set the runtime path to include Vundle and initialize
" we can use a config for all paltform
if has("win16") || has("win32")
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif
"if has("gui_macvim")
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin '907th/vim-auto-save'
Plugin 'mattn/emmet-vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/khaki.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"===============nerdTree配置================================
" NerdTree才插件的配置信息
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
"============autosave=====================
let g:auto_save = 1
let g:auto_save_events=["InsertLeave","TextChanged"]
let g:auto_save_write_all_buffers = 1

"================键盘映射==================
map <F3> "+gP<cr>
"map <F4> "+y<cr>
map <F4> :let @a=expand('%:p')<cr>
map <F5> :e ~/.vimrc<cr>
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
let g:user_emmet_leader_key='<C-y>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"======================================
"===================tag===============
set tags=~/path/tags

set tags+=~/.vim/systags

set tags=tags
"==============auto pair==============

