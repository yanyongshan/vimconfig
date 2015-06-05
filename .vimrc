" 管理插件的插件Vundle 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" My Plugin begin

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'kien/ctrlp.vim'
" 自动补全
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails.git'
" 代码补全
Plugin 'msanders/snipmate.vim'
" 代码补全
Plugin 'Shougo/neocomplcache.vim'
"用于补全括号和引号,它的作用其实就是( 、[ 、{  补全，如当你输入 '(' 后自动显示出 '()'
Plugin 'Raimondi/delimitMate'
"Plugin 'Townk/vim-autoclose'
" 更美观的状态栏
Plugin 'Lokaltog/vim-powerline'
" 添加注释的插件
Plugin 'scrooloose/nerdcommenter'
" 快速匹配的功能
Plugin 'tmhedberg/matchit'
Plugin 'mileszs/ack.vim'
Plugin 'Townk/vim-autoclose'
"Plugin 'vim-scripts/vim-auto-save'
Plugin 'altercation/solarized'
" 语法检查
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
"Plugin 'vim-scripts/fcitx.vim'
Plugin 'slim-template/vim-slim'
" 有道词典翻译
"Plugin 'ianva/vim-youdao-translater'
Plugin 'junegunn/goyo.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

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
" NOTE: comments after Bundle command are not allowed



"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  NERDTree 插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" F2键快速调出和隐藏它
map <F2> :NERDTreeToggle<CR>   

" 如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif 

let NERDTreeShowHidden = 1 "NERDTREE显示隐藏文件

" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1

" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
" autocmd VimEnter * NERDTree



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <C-t> :ClearAllCtrlPCache<CR>\|:CtrlP<CR> "Bindi C-t for Clear all cache and open CtrlP



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplache 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:neocomplcache_enable_at_startup = 1 "打开vim时自动启动 

let g:neocomplcache_force_overwrite_completefunc = 1 "强制启动，避免无法运行,避免和其他插件的冲突:Another plugin set completefunc! Disabled neocomplcache



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" powerline 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set t_Co=256
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim auto save
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:auto_save = 1  " enable AutoSave on Vim startup


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic 配置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pep8']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 有道词典配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
"nnoremap <silent> <C-t> <Esc>:Ydc<CR> 
"noremap <leader>yd :Yde<CR>
















""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 其他vim设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" 高亮显示
syntax on

" 显示行号
set number

" 显示括号对应
set showmatch

" 设置编码
set encoding=utf-8

"设置中文帮助文档
set helplang=cn

"支持鼠标操作
set mouse=a

"高亮搜索
set hls is

"设置tab键的空格
set tabstop=2 
set sw=2
set ts=2

" 显示输入的命令
set showcmd

set cursorline  "设置光标行

"""""""""""""""""""""""""""""""""""""""""""""""
" vim配色方案 Tips:必须往后放一点， why? 
"""""""""""""""""""""""""""""""""""""""""""""""

let g:solarized_termcolors=256

"colorscheme codeschool "设置色彩主题

colorscheme molokai "设置色彩主题

"syntax enable
"set background=dark
"colorscheme solarized "设置色彩主题
