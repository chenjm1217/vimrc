""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'

Bundle 'scrooloose/nerdtree'
Bundle 'Blackrush/vim-gocode'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"

" Encdoing
set encoding=utf-8

syntax on
:set t_Co=256
colorscheme molokai

set number
set ruler
set shiftwidth=4
set cursorline
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set incsearch
set autoindent
set cindent

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader= ","

nmap <leader>e :e ~/.vimrc<cr>
nmap <leader>s :source ~/.vimrc<cr>
nmap <leader><leader> :w<cr>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>

" 关闭vim对vi的兼容模式，建议设置，否则会有很多不兼容的问题
set nocompatible

" 开启语法高亮
syntax on

" 显示行号
set number

" 传说中的去掉边框用下边这一句,windows下
set go=

" 设置字体颜色
color desert

" 设置背景色，每种配色有两种方案，一个light、一个dark 
set background=dark

" 设置C风格的缩进 
set autoindent
set smartindent

" 将Tab键替换为空格
set expandtab

" 设置Tab宽度等于4个空格
set tabstop=4

" 默认缩进4个空格大小 
set shiftwidth=4 

" 设置按退格键时可以一次删除4个空格
set smarttab

" 设置单词中间不断行
set lbr

" 中文中可以断行，不自动添加空格
set fo+=mB

" 设置按退格键时可以一次删除4个空格
set softtabstop=4

" 自动换行
set wrap 

" 命令行高
set cmdheight=1

" 缓冲区空则隐藏
set hid

" 高亮显示结果
set hlsearch

" 在输入要搜索的文字时，vim会实时匹配
set incsearch

" 设置搜索时忽略大小写
set ignorecase

" 尽可能智能搜索
set smartcase

" 启用通配符
set magic

" 切换窗口 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-down> <C-W>j
map <C-up> <C-W>k
map <C-left> <C-W>h
map <C-right> <C-W>l

" 分割窗口
map <leader>v :vsplit<cr>
map <leader>h :split<cr>

" 关闭屏幕
map <leader>c :close<cr>
map <leader>o :only<cr>

" 关闭当前buffer
map <leader>bd :Bclose<cr>

" 关闭所有buffer
map <leader>ba :1,1000 bd!<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" 格式化状态栏 
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l

" 使用Shift+方向选中
"set keymodel=startsel,stopsel

" 设置进行选择时，光标所在字符也被选中
set selection=inclusive
" set selection=exclusive

" 只在下拉菜单中显示匹配项目,自动插入所有匹配项目的相同文本
set completeopt=menu,longest

" 在windows版本中vim的退格键模式默认与vi兼容, 重新配置backspace键工作方式
set backspace=indent,eol,start

" 设置到光标到达行首/尾时，继续按键可以自动换行，默认不开启
" b:[Normal, Visual] backspace
" s:[Normal, Visual] space
" h:[Normal, Visual] h
" l:[Normal, Visual] l
" <:[Normal, Visual] 左方向键
" >:[Normal, Visual] 右方向键
" ~:[Normal] ~ [翻转大小写]
" [:[Insert, Replace] 左方向键
" ]:Insert, Replace] 右方向键
set whichwrap=b,s,h,l,<,>,[,]

" 设置在编辑过程中右下角显示光标的行列信息
set ruler

" 在状态栏显示正在输入的命令
set showcmd

" 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来
set wildmenu

" Tab补全的时候忽略编译文件 
set wildignore=*.o,*~,*.pyc

" 设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
 set showmatch

" 设置历史记录条数
set history=1000

" 设置备份,更改文件时不生成备份文件~
set nobackup

" 开启文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" 如果是c/c++类型
autocmd FileType c,cpp,h,cc :set number 
" 代码折叠
"autocmd FileType c,cpp :set foldmethod=syntax 
" 对齐
autocmd FileType c,cpp,h,cc :set cindent

" 如果是python文件
autocmd FileType python :set number 
"autocmd FileType python :set foldmethod=syntax 
autocmd FileType python :set smartindent

" 折叠快捷键
" zc:折叠当前
" zo:打开当前
" zn:打开所有
" zN:折叠所有

if has('mouse')
    "set mouse=c
    set mouse=v
endif

" 粘贴时不自动缩进
:set pastetoggle=<F11>

"BufferExplorer in Airline
"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1


"设置切换Buffer快捷键"
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

"Nerdtree
map <F6> :NERDTreeToggle<CR>

" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" " 是否显示隐藏文件
let NERDTreeShowHidden=1
" " 设置宽度
let NERDTreeWinSize=31
" " 在终端启动vim时，共享NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1
" " 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" " 显示书签列表
let NERDTreeShowBookmarks=1

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
