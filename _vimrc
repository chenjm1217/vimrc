"""""""""""""""""""""""""""""""""""""""""""""""""""""
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" 代码提示
Plugin 'Valloric/YouCompleteMe'

" 在.cpp和.h之间切换
Plugin 'a.vim'

" 语法分析
Plugin 'scrooloose/syntastic'

" python 提示
Plugin 'davidhalter/jedi'

" 同时编辑多个标签，重构神器
Plugin 'terryma/vim-multiple-cursors'

" 神级插件，快速跳转，默认<leader><leader>w/f{char}/l{line-num}
Plugin 'easymotion/vim-easymotion'

" 查找文件，直接Ctrl+p,比lookupfiles更好用
Plugin 'ctrlpvim/ctrlp.vim'

" 快速注释,<leader>cc/cu
Plugin 'scrooloose/nerdcommenter'

" GO 支持
Plugin 'fatih/vim-go'
Plugin 'Blackrush/vim-gocode'

" 文件浏览窗口
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" tag 查看工具，比较好
Plugin 'majutsushi/tagbar'

" better than powerline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""
"def global_setting {
let mapleader = ","
let g:mapleader= ","

nmap <leader><leader> :w<cr>
"}

"""""""""""""""""""""""""""""""""""""""
" common setting
" 关闭vim对vi的兼容模式，建议设置，否则会有很多不兼容的问题
set nocompatible

" 开启语法高亮
syntax on

" 显示行号
set number
set numberwidth=5

" 传说中的去掉边框用下边这一句,windows下
set go=

" 设置C风格的缩进 
set autoindent
set smartindent

" 将Tab键替换为空格
set expandtab

" 可以将当前文件中已经存在的tab键全部替换为4个空格
" :retab!

" 设置按退格键时可以一次删除4个空格
set softtabstop=4

" 设置Tab宽度等于4个空格
set tabstop=4

" 默认缩进4个空格大小 
set shiftwidth=4

" 设置按退格键时可以一次删除4个空格
set smarttab

" backspace支持删除
set backspace=indent,eol,start

" 设置单词中间不断行
set lbr

" 中文中可以断行，不自动添加空格
set fo+=mB

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

" 是否启用paste模式
:set pastetoggle=<F11>

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

" 设置进行选择时，光标所在字符也被选中
set selection=inclusive

" 只在下拉菜单中显示匹配项目,自动插入所有匹配项目的相同文本
set completeopt=menu,longest

" 设置在编辑过程中右下角显示光标的行列信息
set ruler

" 高亮当前行
set cursorline

" 在状态栏显示正在输入的命令
set showcmd

" 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来
set wildmenu

" Tab补全的时候忽略编译文件 
set wildignore=*.o,*~,*.pyc

" 高亮匹配模式
set showmatch

" 设置历史记录条数
set history=10000

" 设置备份,更改文件时不生成备份文件~
set nobackup

" 设置当前编码方式
set encoding=utf-8

" 设置文件类型
set ffs=unix,dos,mac

" 当打开文件时，自动按照以下方式自动判断编码并解码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 开启文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" 防止linux终端下无法拷贝
if has('mouse')
    "set mouse=c
    set mouse=v
endif

" 不开启错误提示音
set noerrorbells
set novisualbell

" 全选，很好用！
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
vmap <C-c> "+y

"""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai

"""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1


"""""""""""""""""""""""""""""""""""""""""""
" Nerdtree
map <F6> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1

""""""""""""""""""""""""""""""""""""""""""""""
" 设置tags文件，暂时不启用Bundle 
" set tags+=tags
" set tags+=../tags
" set tags+=~/tags
" " 打开Taglist/TxtBrowser窗口，在右侧栏显示
" nmap <leader>tl :Tlist<CR><c-l>
" " :Tlist,调用TagList
" let Tlist_Ctags_Cmd='ctags'                     " 因为我们放在环境变量里，所
" 以可以直接执行
" let Tlist_Show_One_File = 1                     " 只显示当前文件的tags
" let Tlist_Exit_OnlyWindow = 1                   " 如果Taglist窗口是最后一个
" 窗口则退出Vim
" let Tlist_Use_Right_Window = 1                  " 在右侧窗口中显示
" let Tlist_File_Fold_Auto_Close = 1              " 自动折叠
" let Tlist_Sort_Type = "name"                    " sorted by name
" let Tlist_Process_File_Always = 0                   " 是否一直处理tags.1:处
" 理;0:不处理。不是一直实时更新tags，因为没有必要
" let Tlist_Inc_Winwidth = 0

""""""""""""""""""""""""""""""""""""""""""""""
" def for YouCompleteMe (){

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

let g:ycm_server_use_vim_stdout = 1

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" 回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

" 让Vim的补全菜单行为与一般IDE一致
set completeopt=longest,menu

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up>       pumvisible() ? "<C-p>" :"<Up>"
inoremap <expr> <PageDown> pumvisible() ? "<PageDown><C-p><C-n>" :"<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "<PageUp><C-p><C-n>" :"<PageUp>"

" Youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1

" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2

" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" force recomile with syntastic
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1

"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" 跳转到定义处
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>

" 跳转到声明处
nnoremap <leader>s :YcmCompleter GoToDefinition<CR>

" 跳转到定义处
nnoremap <silent><leader>. :YcmCompleter GoToDefinitionElseDeclaration<CR>

" 获取变量类型 
nnoremap <leader>/ :YcmCompleter GetType<CR>

let g:ycm_python_binary_path = '/usr/bin/python'
" }

"""""""""""""""""""""""""""""
" def for plugin_a {
" :A 在.h文件和.cpp文件之间切换
map <leader>a :A<cr>
map <leader>av :AV<cr>
" }

"""""""""""""""""""""""""""""
" def for_syntastic() {
let g:syntastic_check_on_open=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" }

""""""""""""""""""""""""""""""
" 切换缓存文件
nnoremap <F2> :bn<CR>
nnoremap <F3> :bp<CR>

""""""""""""""""""""""""""""""
" def for_multi_cursors() {
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" }

""""""""""""""""""""""""""""""""
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
