""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember

set nocompatible 
set history=500

" Enable filetype plugins

filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside

set autoread

" with a map leader it's possible to do extra key combinations
" like <leader> w saves the current file

let mapleader=","

" Fast saving

nmap <leader>w :w!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k

set so=7

" Turn on the wild menu

set wildmenu

set autoindent"×Ô¶¯Ëõ½ø

set showcmd
" Always show current position

set ruler

" Height of the command bar

set cmdheight=2

" A buffer becomes hidden when it is abandoned

set hid

" Configure backspace so it acts as it should act

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Ignore case when searching

set ignorecase

" When searching try to be smart about cases

set smartcase

" Highlignt search results

set hlsearch

" Make search act like search in modern browers

set incsearch

" Don't redraw while executing macros(good performance config)

set lazyredraw

" For regular expressions turn magic on

set magic

" Show matching brackets when text indicator is over them

set showmatch

" How many tenths of a second to blink when matching brackets

set mat=2

" No annoying sound on error

set noerrorbells

set novisualbell

set t_vb=

set tm=500

" Add a bit extra margin to the left

set foldcolumn=1

" Avoid garbled charachters in chinese language windows os

let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set mouse=a  " allow mouse
set fdm=marker " ´úÂëÕÛµþ
set shortmess=atI
set smartindent "ÖÇÄÜÑ¡Ôñ¶ÔÆë·½Ê½
set cindent" cËõ½ø
set autochdir "×Ô¶¯ÇÐ»»Ä¿Â¼
set cursorline
set autoread

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax Highlignting

syntax enable

" Set utf8 as standard encoding ad en_US as the standard language

set encoding=utf8

set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
" Use Unix as the standard file type

set ffs=unix,dos,mac

if has("win16") || has("win32")

    set guifont=DejaVu_Sans_Mono:h14:cDEFAULT " ÉèÖÃ×ÖÌå
else
    set guifont=Menlo:h18
endif




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off ,since mote stuff is in SVN, git et.c anyway...

set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs

set expandtab

" Be smart when using tabs;

set smarttab

" 1 tab == 4 spaces

set shiftwidth=4
set tabstop=4

" Linebreak on 500 charachters

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line

set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first no-blank charachter
map 0 ^

"Delete trailing white space on save,useful for some filetypes

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction



"=============vundleµÄÅäÖÃÄÚÈÝ===========================
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



"===============nerdTreeÅäÖÃ================================
" NerdTree²Å²å¼þµÄÅäÖÃÐÅÏ¢
""½«F2ÉèÖÃÎª¿ª¹ØNERDTreeµÄ¿ì½Ý¼ü
map <f2> :NERDTreeToggle<cr>
""ÐÞ¸ÄÊ÷µÄÏÔÊ¾Í¼±ê
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""´°¿ÚÎ»ÖÃ
let g:NERDTreeWinPos='left'
""´°¿Ú³ß´ç
let g:NERDTreeSize=30
""´°¿ÚÊÇ·ñÏÔÊ¾ÐÐºÅ
let g:NERDTreeShowLineNumbers=1
""²»ÏÔÊ¾Òþ²ØÎÄ¼þ
let g:NERDTreeHidden=0
"============autosave=====================
let g:auto_save = 1
let g:auto_save_events=["InsertLeave","TextChanged"]
let g:auto_save_write_all_buffers = 1

"================¼üÅÌÓ³Éä==================
map <F3> "+gP<cr>
"map <F4> "+y<cr>
map <F4> :let @a=expand('%:p')<cr>
map <F5> :e ~/.vimrc<cr>
map <F6> :ToggleBufExplorer<cr>
map <F7> :source ~\.vimrc<cr>
map <F9> :normal gg=G<cr>
"===================ÅäÉ«================
if !has("gui_running")
    set t_Co=256
endif
colorscheme khaki
"===================´úÂë×¢ÊÍ===========
let g:DoxygenToolkit_authorName="freewm@163.com" 
" :DoxAuthor
" :Dox
"===================´úÂë×Ô¶¯²¹È«=========
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

