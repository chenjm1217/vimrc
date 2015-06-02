" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Jul 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edit by chenjunming since 2015/04/14
" Last change: 2015/05/13
" VIM Version = 7.4
" Ref Person: RenMiaoJian
" Ref UrL: http://www.cnblogs.com/zhongcq/p/3642794.html
" Ref UrL: http://blog.csdn.net/redguardtoo/article/details/1172136
" Ref UrL: http://easwy.com/blog/archives/advanced-vim-skills-catalog/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Vundle:https://github.com/gmarik/Vundle.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install
" 1. get from github: git clone https://github.com/gmarik/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
" 2. set edit .vimrc as below
" 3. install the Vundle in vim :PluginInstall

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
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'altercation/vim-colors-solarized'
"" 窗口主题
"" https://github.com/altercation/vim-colors-solarized
""let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'tomasr/molokai'
"" 窗口主题
"" https://github.com/tomasr/molokai
"let g:molokai_original=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'The-NERD-tree'
" 目录树导航
" https://github.com/vim-scripts/The-NERD-tree
" A tree explorer plugin for navigating the filesystem

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Plugin 'jlanzarotta/bufexplorer'
""" 缓存查看
""" https://github.com/jlanzarotta/bufexplorer
""" BufExplorer Plugin for Vim
""nmap <silent><leader><F3> :BufExplorerVerticalSplit<cr>
""nmap <silent><F3> :BufExplorerHorizontalSplit<cr>
""nmap <leader>bv :BufExplorerVerticalSplit<cr>
""nmap <leader>bh :BufExplorerHorizontalSplit<cr>
""let g:bufExplorerDefaulthelp=0		" Don't show the default help
""let g:bufExplorerShowRelativePath=1	" Show relative paths
""let g:bufExplorerSortBy="mru"		" Sort by most recently used
""let g:bufExplorerSplitRight=0		" Split left
""let g:bufExplorerSplitVertical=1	" Split vertical
""let g:bufExplorerSplitVertSize=25	" Split width
""let g:bufExplorerUseCurrentWindow=1	" Open window in new window
""let g:bufExplorerMaxHeight = 30		" Set the max height
""let g:bufExplorerMinHeight = 5		" Set the min height
""autocmd BufWinEnter \[Buf\List\] setl nonumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'taglist.vim'
" 标签
" https://github.com/vim-scripts/taglist.vim
" Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'OmniCppComplete'
" 代码补全
" https://github.com/vim-scripts/OmniCppComplete
" C/C++ omni-completion with ctags database

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'a.vim'
" 在头文件.h和实现.cpp之间切换
" https://github.com/vim-scripts/a.vim
" Alternate Files quickly (.c --> .h etc)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'majutsushi/tagbar'
" 标签导航,比taglist更适合C++,能够按类处理
" https://github.com/majutsushi/tagbar
" Vim plugin that displays tags in a window, ordered by scope

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'fholgado/minibufexpl.vim'
" 文件打开记录
" https://github.com/fholgado/minibufexpl.vim
" Elegant buffer explorer - takes very little screen space

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'winmanager'
"" 窗口管理器
"" https://github.com/vim-scripts/winmanager
"" A windows style IDE for Vim 6.0
""Used by winmanager
"let g:NERDTree_title="[NERD Tree]" 
"function! NERDTree_Start()
"	exec 'NERDTree'
"endfunction
"function! NERDTree_IsValid()
"	return 1
"endfunction
"let g:winManagerWindowLayout = "NERDTree|BufExplorer"
"let g:winManagerWidth = 25
"let g:defaultExplorer = 0
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
"nmap wm :WMToggle<cr>
"nmap <silent><leader><F2> :WMToggle<cr>:q<cr>:TagbarToggle<cr>		" Open/Close WinManager
"
"let g:bufExplorerSortBy = "name"
"
""let g:NERDTree_title = "NERDTree"
""function! NERDTree_Start()
"""	exe 'NERDTree'
""endfunction
""function! NERDTree_IsValid()
"""	return 1
""endfunction
""let g:winManagerWindowLayout='NERDTree'
"""let g:winManagerWindowLayout='NERDTree|TagList'  
""let g:winManagerWidth=35			" Set the window width
""let g:defaultExplorer=1
""nmap <C-W><C-F> :FirstExplorerWindow<cr>	" Tab to the first window
""nmap <C-W><C-B> :BottomExplorerWindow<cr>	" Tab to he bottom window
"""nmap <silent> <leader>wm :WMToggle<cr>		" Open/Close WinManager
""nmap <silent> <F4> :WMToggle<cr>		" Open/Close WinManager
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Plugin 'fholgado/minibufexpl.vim'
""" 多文档编辑
""" https://github.com/fholgado/minibufexpl.vim
""" Elegant buffer explorer - takes very little screen space
""" 多文件切换，也可使用鼠标双击相应文件名进行切换
""let g:miniBufExplMapWindowNavVim    = 1
""let g:miniBufExplMapWindowNavArrows = 1
""let g:miniBufExplMapCTabSwitchBufs  = 1
""let g:miniBufExplModSelTarget       = 1
""" 解决FileExplorer窗口变小问题
""let g:miniBufExplForceSyntaxEnable = 1
""let g:miniBufExplorerMoreThanOne=2
""let g:miniBufExplCycleArround=1
""" buffer 切换快捷键，默认方向键左右可以切换buffer
""map <C-Tab> :MBEbn<cr>
""map <C-S-Tab> :MBEbp<cr>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'kien/ctrlp.vim'
"" 文件搜索 
"" https://github.com/kien/ctrlp.vim
"" Fuzzy file, buffer, mru, tag, etc finder.
"" CtrlP会沿着vim打开的目录一直向上查找类似.git/.svn等这样的项目管理的目录，如果找到则将这个作为项目的根目录
"" 打开ctrlp搜索
"let g:ctrlp_map = '<leader>ff'
"let g:ctrlp_cmd = 'CtrlP'
"" 相当于mru功能，show recently opened files
"map <leader>fp :CtrlPMRU<CR>
""set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
"let g:ctrlp_custom_ignore = {
"    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
"	\ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
"\ }
""\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
"let g:ctrlp_working_path_mode=0
"let g:ctrlp_match_window_bottom=1
"let g:ctrlp_max_height=15
"let g:ctrlp_match_window_reversed=0
"let g:ctrlp_mruf_max=500
"let g:ctrlp_follow_symlinks=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'Lokaltog/vim-powerline'
" 美化状态栏
" https://github.com/Lokaltog/vim-powerline
" The ultimate vim statusline utility. DEPRECATED in favor of Lokaltog/powerline.
"let g:Powerline_symbols = 'unicode'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'kien/rainbow_parentheses.vim'
"" 括号匹配高亮
"" https://github.com/kien/rainbow_parentheses.vim
"" Better Rainbow Parentheses
"let g:rbpt_colorpairs = [
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['black',       'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['red',         'firebrick3'],
"    \ ]
"let g:rbpt_max = 40
"let g:rbpt_loadcmd_toggle = 0
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'nathanaelkane/vim-indent-guides'
"" 可视化缩进 
"" https://github.com/nathanaelkane/vim-indent-guides 
"" A Vim plugin for visually displaying indent levels in code
"let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
"let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
"let g:indent_guides_start_level		  = 2  " 从第二层开始可视化显示缩进
"" \ig 打开/关闭 vim-indent-guides
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'bronson/vim-trailing-whitespace'
"" 标记无效空格 
"" https://github.com/bronson/vim-trailing-whitespace
"" Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
"" 将代码行最后无效的空格标红
"map <leader><space> :FixWhitespace<cr>	" ,+space 去掉末尾空格
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'Lokaltog/vim-easymotion'
"" 快速移动
"" https://github.com/Lokaltog/vim-easymotion
"" Vim motions on speed!
"" 效率提升杀手锏，跳转到光标后任意位置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'
" 自动补全
" https://github.com/Valloric/YouCompleteMe
" A code-completion engine for Vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Plugin 'SirVer/ultisnips'
"" 宏定义补全
"" https://github.com/SirVer/ultisnips
"" UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
""let g:UltiSnipsExpandTrigger = "<tab>"
""let g:UltiSnipsJumpForwardTrigger = "<tab>"
""let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
""定义存放代码片段的文件夹.vim/snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
""let g:UltiSnipsSnippetDirectories=["snippets", "bundle/ultisnips/UltiSnips"]
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'scrooloose/nerdcommenter'
"" 快速加减注释
"" https://github.com/scrooloose/nerdcommenter
"" Vim plugin for intensely orgasmic commenting
"" <leader>cc，注释当前选中文本，如果选中的是整行则在每行首添加 //，如果选中一行的部分内容则在选中部分前后添加分别 /、/
"" <leader>cu，取消选中文本块的注释
"let NERDSpaceDelims = 1
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'Raimondi/delimitMate'
"" 自动括号补全
"" https://github.com/Raimondi/delimitMate
"" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'godlygeek/tabular'
"" 代码对齐
"" https://github.com/godlygeek/tabular
"" Vim script for text filtering and alignment
"" ,bb 按=号对齐代码 [Tabular插件]
"nmap <leader>bb :Tab /=<CR>
"" ,bn 自定义对齐    [Tabular插件]
"nmap <leader>bn :Tab /
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'scrooloose/syntastic'
"" 静态代码分析
"" https://github.com/scrooloose/syntastic
"" Syntax checking hacks for vim
"let g:syntastic_error_symbol = '✗'	"set error or warning signs
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_check_on_open=1
"let g:syntastic_enable_highlighting = 0
""let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
""let g:syntastic_python_checkers=['pyflakes']
"""highlight SyntasticErrorSign guifg=white guibg=black
"
"let g:syntastic_cpp_include_dirs = ['/usr/include/']
"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"let g:syntastic_enable_balloons = 1	"whether to show balloons
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'vim-scripts/TaskList.vim'
"" 快速跳转到TODO列表
"" https://github.com/vim-scripts/TaskList.vim
"" Eclipse like task list 
"map <leader>td <Plug>TaskList
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'genutils'
"" 公用库
"" https://github.com/vim-scripts/genutils
"" General utility functions
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'lookupfile'
"" 查找文件 
"" https://github.com/vim-scripts/lookupfile
"" Lookup files using Vim7 ins-completion
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'a.vim'
"" 在头文件和实现文件之间切换
"" https://github.com/vim-scripts/a.vim
"" Alternate Files quickly (.c --> .h etc)
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'Mark'
"" 高亮不同的颜色 
"" https://github.com/vim-scripts/Mark
"" a little script to highlight several words in different colors simultaneously
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'echofunc.vim'
""  在命令行显示函数声明
"" https://github.com/vim-scripts/echofunc.vim
"" Echo the function declaration in the command line for C/C++
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'grep.vim'
"" grep在vim中集成
"" https://github.com/vim-scripts/grep.vim
"" Grep search tools integration with Vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'ctags.vim'
"" 在标题栏显示函数名
"" https://github.com/vim-scripts/ctags.vim
"" Display function name in the title bar.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'cscope.vim'
"" 创建或与已存在的cscope数据库文件链接
"" https://github.com/vim-scripts/cscope.vim
"" Create cscope database and connect to existing proper database automatically.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'CCTree'
"" C语言调用浏览器 
"" https://github.com/vim-scripts/CCTree
"" C Call-Tree Explorer - Source-code analysis, real-time display of code flow



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin ''
" 
" 
" 
"

"当你自己写了个定制的插件，放在本地的时候
"Plugin 'file:///home/chenjunming/.vim/plugin/fold.vim'


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
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set mapleader
let mapleader = ","
let g:mapleader= ","

nmap <leader>e :e ~/.vimrc<cr>
nmap <leader>s :source ~/.vimrc<cr>
nmap <leader><leader> :w<cr>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
" 自动重载.vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
" 打开nerdree窗口，在左侧栏显示
nmap <silent><F2> :NERDTreeToggle<cr>
nmap <leader>nt :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
let g:netrw_home='~/bak'
let g:NERDTreeWinSize=25
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end


" 设置tags文件
set tags+=tags
set tags+=../tags
set tags+=~/tags
" 打开Taglist/TxtBrowser窗口，在右侧栏显示
nmap <leader>tl :Tlist<CR><c-l>
" :Tlist,调用TagList
let Tlist_Ctags_Cmd='ctags'						" 因为我们放在环境变量里，所以可以直接执行
let Tlist_Show_One_File = 1						" 只显示当前文件的tags
let Tlist_Exit_OnlyWindow = 1					" 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window = 1					" 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close = 1				" 自动折叠
let Tlist_Sort_Type = "name"					" sorted by name
let Tlist_Process_File_Always = 0					" 是否一直处理tags.1:处理;0:不处理。不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth = 0
" Ctrl+]   Ctrl+o    Ctrl+T

nmap <silent><F4> :TagbarToggle<CR>	" ,tb 打开tagbar窗口
nmap <leader>tb :TagbarToggle<CR>	" ,tb 打开tagbar窗口
let g:tagbar_autofocus = 1
let g:tagbar_width = 30
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()


let g:miniBufExplMaxSize = 3	" 设置最大高度 
nmap <leader>m :MBEToggle<cr>
nmap <leader>n :MBEbn<cr>
nmap <leader>p :MBEbp<cr>
nmap <leader>f :MBEbf<cr>
nmap <leader>b :MBEbb<cr>


" :A 在.h文件和.cpp文件之间切换
map <leader>a :A<cr>
map <leader>av :AV<cr>

" YouCompleateMe
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
autocmd InsertLeave * if pumvisible() == 0|pclose|endif		"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"		"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"Youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示


let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	"从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <silent><F11> :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
nnoremap <silent><leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" General setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! MySys()
	if has("win32")
		return "win32"
	elseif has("unix")
		return "unix"
	else
		return "mac"
	endif
endfunction

if(has("win32") || has("win95") || has("win64") || has("win16"))
	"判定当前操作系统类型
	let g:iswindows=1
else
	let g:iswindows=0
endif

autocmd BufEnter * lcd %:p:h

" 指向最后打开位置
if has("autocmd")
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif " has("autocmd")

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

" 高亮显示结果
set hlsearch

" 在输入要搜索的文字时，vim会实时匹配
set incsearch

" 设置搜索时忽略大小写
set ignorecase

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

" 设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
 set showmatch

" 设置历史记录条数
set history=1000

" 设置备份,更改文件时不生成备份文件~
set nobackup

" 设置当前编码方式
set encoding=utf-8

" 当打开文件时，自动按照以下方式自动判断编码并解码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

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

" 字体的设置
set guifont=Bitstream_Vera_Sans_Mono:h9:cANSI

" 记住空格用下划线代替哦
set gfw=幼圆:h10:cGB2312

" 对于Unicode字符中的某些符号用两倍宽度显示，如破折号等
set ambiwidth=double

" 防止linux终端下无法拷贝
if has('mouse')
	set mouse=c
endif

" 当意外关闭时生成恢复文件，为了保险起见还是部取消了
" set noswapfile

" 突出显示当前行/列
" set cursorline
" set cursorcolumn

" 自动保存
" set autowrite

" 启用拼写检查,不太友好
" set spell

" 不开启错误提示音
set noerrorbells
set novisualbell

function! Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.cc' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
		" -R: 在生成索引文件时，搜索子目录树中的代码
		" -b: 只生成索引文件，不进入cscope的界面
		" -k: 在生成索引文件时，不搜索/usr/include目录
		" -q: 生成cscope.in.out和cscope.po.out文件，加快cscope的索引速度
        silent! execute "!cscope -bq -i cscope.files"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        "如果把ctags放到cscope生成之后进行，可以执行下面这句，加快速度
		silent! execute "!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q -L cscope.files"
        "silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
endfunction

map <F12> :call Do_CsTag()<CR>
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 配色方案
"syntax enable
"set background=dark
""set background=dark
"set t_Co=256
"" below function is error on linux server
""if g:isGUI
"	colorscheme solarized
"	"colorscheme molokai
"	"colorscheme phd 
""else
"	"colorscheme solarized
"	"colorscheme molokai
"	"colorscheme phd
""endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"internationalization
"I only work in Win2k Chinese version
"if has("multi_byte")
"	set tenc=utf-8,gbk
"	set fencs=utf-8,gbk
"	set termencoding=utf-8
"	set encoding=utf-8
"	"set fileencodings=ucs-bom,utf-8,chinese
"	set fileencoding=gb18030
"	"set fileencodings=utf-8,gb18030,utf-16,big5
"	set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""if you use vim in tty,
""'uxterm -cjk' or putty with option 'Treat CJK ambiguous characters as wide' on
"if exists("&ambiwidth")
"	set ambiwidth=double
"endif
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("gui_running")
"	"set guioptions-=m
"	set guioptions-=T
"	set guioptions-=l
"	set guioptions-=L
"	set guioptions-=r
"	set guioptions-=R
"
"	if MySys()=="win32"
"		"start gvim maximized
"		if has("autocmd")
"			au GUIEnter * simalt ~x
"		endif
"	endif
"	"let psc_style='cool'
"	"sudo cp ~/.vim/color/desert_my.vim /usr/share/vim/vim73/colors/
"	"colorscheme desert_my
"else
"	"set background=dark
"	"colorscheme desert_my
"endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Below is part of the default setting of vim_sample
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Only do this part when compiled with support for autocommands.
"if has("autocmd")
"
"  " Enable file type detection.
"  " Use the default filetype settings, so that mail gets 'tw' set to 72,
"  " 'cindent' is on in C files, etc.
"  " Also load indent files, to automatically do language-dependent indenting.
"  filetype plugin indent on
"
"  " Put these in an autocmd group, so that we can delete them easily.
"  augroup vimrcEx
"  au!
"
"  " For all text files set 'textwidth' to 78 characters.
"  autocmd FileType text setlocal textwidth=78
"
"  " When editing a file, always jump to the last known cursor position.
"  " Don't do it when the position is invalid or when inside an event handler
"  " (happens when dropping a file on gvim).
"  " Also don't do it when the mark is in the first line, that is the default
"  " position when opening a file.
"  autocmd BufReadPost *
"    \ if line("'\"") > 1 && line("'\"") <= line("$") |
"    \   exe "normal! g`\"" |
"    \ endif
"
"  augroup END
"
"else
"  set autoindent		" always set autoindenting on
"endif " has("autocmd")
"
"" Convenient command to see the difference between the current buffer and the
"" file it was loaded from, thus the changes you made.
"" Only define it when not defined already.
"if !exists(":DiffOrig")
"  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
"		  \ | wincmd p | diffthis
"endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => General Autocommand
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Switch to current dir
"map <leader>cd :cd %:p:h<cr>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Enable folding, I find it very useful
"if exists("&foldenable")
"set fen
"endif
"
"if exists("&foldlevel")
"set fdl=0
"endif
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 文件格式 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Favorite filetype
""Use Unix as the standard file type
"set ffs=unix,dos,mac
"
"nmap <leader>fd :se ff=dos<cr>
"nmap <leader>fu :se ff=unix<cr>
