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
"" ��������
"" https://github.com/altercation/vim-colors-solarized
""let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'tomasr/molokai'
"" ��������
"" https://github.com/tomasr/molokai
"let g:molokai_original=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'The-NERD-tree'
" Ŀ¼������
" https://github.com/vim-scripts/The-NERD-tree
" A tree explorer plugin for navigating the filesystem

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Plugin 'jlanzarotta/bufexplorer'
""" ����鿴
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
" ��ǩ
" https://github.com/vim-scripts/taglist.vim
" Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'OmniCppComplete'
" ���벹ȫ
" https://github.com/vim-scripts/OmniCppComplete
" C/C++ omni-completion with ctags database

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'a.vim'
" ��ͷ�ļ�.h��ʵ��.cpp֮���л�
" https://github.com/vim-scripts/a.vim
" Alternate Files quickly (.c --> .h etc)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'majutsushi/tagbar'
" ��ǩ����,��taglist���ʺ�C++,�ܹ����ദ��
" https://github.com/majutsushi/tagbar
" Vim plugin that displays tags in a window, ordered by scope

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'fholgado/minibufexpl.vim'
" �ļ��򿪼�¼
" https://github.com/fholgado/minibufexpl.vim
" Elegant buffer explorer - takes very little screen space

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'winmanager'
"" ���ڹ�����
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
""" ���ĵ��༭
""" https://github.com/fholgado/minibufexpl.vim
""" Elegant buffer explorer - takes very little screen space
""" ���ļ��л���Ҳ��ʹ�����˫����Ӧ�ļ��������л�
""let g:miniBufExplMapWindowNavVim    = 1
""let g:miniBufExplMapWindowNavArrows = 1
""let g:miniBufExplMapCTabSwitchBufs  = 1
""let g:miniBufExplModSelTarget       = 1
""" ���FileExplorer���ڱ�С����
""let g:miniBufExplForceSyntaxEnable = 1
""let g:miniBufExplorerMoreThanOne=2
""let g:miniBufExplCycleArround=1
""" buffer �л���ݼ���Ĭ�Ϸ�������ҿ����л�buffer
""map <C-Tab> :MBEbn<cr>
""map <C-S-Tab> :MBEbp<cr>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'kien/ctrlp.vim'
"" �ļ����� 
"" https://github.com/kien/ctrlp.vim
"" Fuzzy file, buffer, mru, tag, etc finder.
"" CtrlP������vim�򿪵�Ŀ¼һֱ���ϲ�������.git/.svn����������Ŀ�����Ŀ¼������ҵ��������Ϊ��Ŀ�ĸ�Ŀ¼
"" ��ctrlp����
"let g:ctrlp_map = '<leader>ff'
"let g:ctrlp_cmd = 'CtrlP'
"" �൱��mru���ܣ�show recently opened files
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
" ����״̬��
" https://github.com/Lokaltog/vim-powerline
" The ultimate vim statusline utility. DEPRECATED in favor of Lokaltog/powerline.
"let g:Powerline_symbols = 'unicode'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'kien/rainbow_parentheses.vim'
"" ����ƥ�����
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
"" ���ӻ����� 
"" https://github.com/nathanaelkane/vim-indent-guides 
"" A Vim plugin for visually displaying indent levels in code
"let g:indent_guides_enable_on_vim_startup = 0  " Ĭ�Ϲر�
"let g:indent_guides_guide_size            = 1  " ָ�������ߵĳߴ�
"let g:indent_guides_start_level		  = 2  " �ӵڶ��㿪ʼ���ӻ���ʾ����
"" \ig ��/�ر� vim-indent-guides
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'bronson/vim-trailing-whitespace'
"" �����Ч�ո� 
"" https://github.com/bronson/vim-trailing-whitespace
"" Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
"" �������������Ч�Ŀո���
"map <leader><space> :FixWhitespace<cr>	" ,+space ȥ��ĩβ�ո�
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'Lokaltog/vim-easymotion'
"" �����ƶ�
"" https://github.com/Lokaltog/vim-easymotion
"" Vim motions on speed!
"" Ч������ɱ��ﵣ���ת����������λ��

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'
" �Զ���ȫ
" https://github.com/Valloric/YouCompleteMe
" A code-completion engine for Vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Plugin 'SirVer/ultisnips'
"" �궨�岹ȫ
"" https://github.com/SirVer/ultisnips
"" UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
""let g:UltiSnipsExpandTrigger = "<tab>"
""let g:UltiSnipsJumpForwardTrigger = "<tab>"
""let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
""�����Ŵ���Ƭ�ε��ļ���.vim/snippets�£�ʹ���Զ����Ĭ�ϵģ�����ĵ�ȫ�֣��г�ͻ�Ļ���ʾ
""let g:UltiSnipsSnippetDirectories=["snippets", "bundle/ultisnips/UltiSnips"]
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'scrooloose/nerdcommenter'
"" ���ټӼ�ע��
"" https://github.com/scrooloose/nerdcommenter
"" Vim plugin for intensely orgasmic commenting
"" <leader>cc��ע�͵�ǰѡ���ı������ѡ�е�����������ÿ������� //�����ѡ��һ�еĲ�����������ѡ�в���ǰ����ӷֱ� /��/
"" <leader>cu��ȡ��ѡ���ı����ע��
"let NERDSpaceDelims = 1
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'Raimondi/delimitMate'
"" �Զ����Ų�ȫ
"" https://github.com/Raimondi/delimitMate
"" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'godlygeek/tabular'
"" �������
"" https://github.com/godlygeek/tabular
"" Vim script for text filtering and alignment
"" ,bb ��=�Ŷ������ [Tabular���]
"nmap <leader>bb :Tab /=<CR>
"" ,bn �Զ������    [Tabular���]
"nmap <leader>bn :Tab /
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'scrooloose/syntastic'
"" ��̬�������
"" https://github.com/scrooloose/syntastic
"" Syntax checking hacks for vim
"let g:syntastic_error_symbol = '�7�1'	"set error or warning signs
"let g:syntastic_warning_symbol = '�7�2'
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
"" ������ת��TODO�б�
"" https://github.com/vim-scripts/TaskList.vim
"" Eclipse like task list 
"map <leader>td <Plug>TaskList
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'genutils'
"" ���ÿ�
"" https://github.com/vim-scripts/genutils
"" General utility functions
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'lookupfile'
"" �����ļ� 
"" https://github.com/vim-scripts/lookupfile
"" Lookup files using Vim7 ins-completion
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'a.vim'
"" ��ͷ�ļ���ʵ���ļ�֮���л�
"" https://github.com/vim-scripts/a.vim
"" Alternate Files quickly (.c --> .h etc)
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'Mark'
"" ������ͬ����ɫ 
"" https://github.com/vim-scripts/Mark
"" a little script to highlight several words in different colors simultaneously
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'echofunc.vim'
""  ����������ʾ��������
"" https://github.com/vim-scripts/echofunc.vim
"" Echo the function declaration in the command line for C/C++
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'grep.vim'
"" grep��vim�м���
"" https://github.com/vim-scripts/grep.vim
"" Grep search tools integration with Vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'ctags.vim'
"" �ڱ�������ʾ������
"" https://github.com/vim-scripts/ctags.vim
"" Display function name in the title bar.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'cscope.vim'
"" ���������Ѵ��ڵ�cscope���ݿ��ļ�����
"" https://github.com/vim-scripts/cscope.vim
"" Create cscope database and connect to existing proper database automatically.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'CCTree'
"" C���Ե�������� 
"" https://github.com/vim-scripts/CCTree
"" C Call-Tree Explorer - Source-code analysis, real-time display of code flow



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin ''
" 
" 
" 
"

"�����Լ�д�˸����ƵĲ�������ڱ��ص�ʱ��
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
" �Զ�����.vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
" ��nerdree���ڣ����������ʾ
nmap <silent><F2> :NERDTreeToggle<cr>
nmap <leader>nt :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
let g:netrw_home='~/bak'
let g:NERDTreeWinSize=25
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end


" ����tags�ļ�
set tags+=tags
set tags+=../tags
set tags+=~/tags
" ��Taglist/TxtBrowser���ڣ����Ҳ�����ʾ
nmap <leader>tl :Tlist<CR><c-l>
" :Tlist,����TagList
let Tlist_Ctags_Cmd='ctags'						" ��Ϊ���Ƿ��ڻ�����������Կ���ֱ��ִ��
let Tlist_Show_One_File = 1						" ֻ��ʾ��ǰ�ļ���tags
let Tlist_Exit_OnlyWindow = 1					" ���Taglist���������һ���������˳�Vim
let Tlist_Use_Right_Window = 1					" ���Ҳര������ʾ
let Tlist_File_Fold_Auto_Close = 1				" �Զ��۵�
let Tlist_Sort_Type = "name"					" sorted by name
let Tlist_Process_File_Always = 0					" �Ƿ�һֱ����tags.1:����;0:����������һֱʵʱ����tags����Ϊû�б�Ҫ
let Tlist_Inc_Winwidth = 0
" Ctrl+]   Ctrl+o    Ctrl+T

nmap <silent><F3> :TagbarToggle<CR>	" ,tb ��tagbar����
nmap <leader>tb :TagbarToggle<CR>	" ,tb ��tagbar����
let g:tagbar_autofocus = 1
let g:tagbar_width = 30
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()


let g:miniBufExplMaxSize = 3	" �������߶� 
nmap <leader>bm :MBEToggle<cr>
nmap <leader>bn :MBEbn<cr>
nmap <leader>bp :MBEbp<cr>
nmap <leader>bf :MBEbf<cr>
nmap <leader>bb :MBEbb<cr>


" :A ��.h�ļ���.cpp�ļ�֮���л�
map <leader>a :A<cr>
map <leader>av :AV<cr>

" YouCompleateMe
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
autocmd InsertLeave * if pumvisible() == 0|pclose|endif		"�뿪����ģʽ���Զ��ر�Ԥ������
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"		"�س���ѡ�е�ǰ��
"�������Ҽ�����Ϊ ����ʾ������Ϣ
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"Youcompleteme  Ĭ��tab  s-tab ���Զ���ȫ��ͻ
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "�رռ���.ycm_extra_conf.py��ʾ


let g:ycm_collect_identifiers_from_tags_files=1	" ���� YCM ���ڱ�ǩ����
let g:ycm_min_num_of_chars_for_completion=2	"�ӵ�2�������ַ��Ϳ�ʼ����ƥ����
let g:ycm_cache_omnifunc=0	" ��ֹ����ƥ����,ÿ�ζ���������ƥ����
let g:ycm_seed_identifiers_with_syntax=1	" �﷨�ؼ��ֲ�ȫ
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"��ע��������Ҳ�ܲ�ȫ
let g:ycm_complete_in_comments = 1
"���ַ���������Ҳ�ܲ�ȫ
let g:ycm_complete_in_strings = 1
"ע�ͺ��ַ����е�����Ҳ�ᱻ���벹ȫ
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <silent><C-d> :YcmCompleter GoToDefinitionElseDeclaration<CR> " ��ת�����崦
nnoremap <silent><leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR> " ��ת�����崦

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
	"�ж���ǰ����ϵͳ����
	let g:iswindows=1
else
	let g:iswindows=0
endif

autocmd BufEnter * lcd %:p:h

" ָ������λ��
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

" �ر�vim��vi�ļ���ģʽ���������ã�������кܶ಻���ݵ�����
set nocompatible

" �����﷨����
syntax on

" ��ʾ�к�
set number

" ��˵�е�ȥ���߿����±���һ��,windows��
set go=

" ����������ɫ
color desert

" ���ñ���ɫ��ÿ����ɫ�����ַ�����һ��light��һ��dark 
set background=dark

" ����C�������� 
set autoindent
set smartindent

" ��Tab���滻Ϊ�ո�
set expandtab

" ����Tab��ȵ���4���ո�
set tabstop=4

" Ĭ������4���ո��С 
set shiftwidth=4 

" ���ð��˸��ʱ����һ��ɾ��4���ո�
set smarttab

" ���õ����м䲻����
set lbr

" �����п��Զ��У����Զ���ӿո�
set fo+=mB

" ���ð��˸��ʱ����һ��ɾ��4���ո�
set softtabstop=4

" �Զ�����
set wrap 

" �����и�
set cmdheight=1

" ��������������
set hid

" ������ʾ���
set hlsearch

" ������Ҫ����������ʱ��vim��ʵʱƥ��
set incsearch

" ��������ʱ���Դ�Сд
set ignorecase

" ��������������
set smartcase

" ����ͨ���
set magic

" �л����� 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-down> <C-W>j
map <C-up> <C-W>k
map <C-left> <C-W>h
map <C-right> <C-W>l

" �ָ��
map <leader>v :vsplit<cr>
map <leader>h :split<cr>

" �ر���Ļ
map <leader>c :close<cr>
map <leader>o :only<cr>

" �رյ�ǰbuffer
map <leader>bd :Bclose<cr>

" �ر�����buffer
map <leader>ba :1,1000 bd!<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" ��ʽ��״̬�� 
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l

" ʹ��Shift+����ѡ��
"set keymodel=startsel,stopsel

" ���ý���ѡ��ʱ����������ַ�Ҳ��ѡ��
set selection=inclusive
" set selection=exclusive

" ֻ�������˵�����ʾƥ����Ŀ,�Զ���������ƥ����Ŀ����ͬ�ı�
set completeopt=menu,longest

" ��windows�汾��vim���˸��ģʽĬ����vi����, ��������backspace��������ʽ
set backspace=indent,eol,start

" ���õ���굽������/βʱ���������������Զ����У�Ĭ�ϲ�����
" b:[Normal, Visual] backspace
" s:[Normal, Visual] space
" h:[Normal, Visual] h
" l:[Normal, Visual] l
" <:[Normal, Visual] �����
" >:[Normal, Visual] �ҷ����
" ~:[Normal] ~ [��ת��Сд]
" [:[Insert, Replace] �����
" ]:Insert, Replace] �ҷ����
set whichwrap=b,s,h,l,<,>,[,]

" �����ڱ༭���������½���ʾ����������Ϣ
set ruler

" ��״̬����ʾ�������������
set showcmd

" ������ģʽ��ʹ�� Tab �Զ���ȫ��ʱ�򣬽���ȫ����ʹ��һ��Ư���ĵ��в˵���ʽ��ʾ����
set wildmenu

" Tab��ȫ��ʱ����Ա����ļ� 
set wildignore=*.o,*~,*.pyc

" ����ƥ��ģʽ ���Ƶ�����һ��������ʱ��ƥ����Ӧ���Ǹ�������
 set showmatch

" ������ʷ��¼����
set history=1000

" ���ñ���,�����ļ�ʱ�����ɱ����ļ�~
set nobackup

" ���õ�ǰ���뷽ʽ
set encoding=utf-8

" �����ļ�����
set ffs=unix,dos,mac

" �����ļ�ʱ���Զ��������·�ʽ�Զ��жϱ��벢����
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" �����ļ������Զ�ʶ�������ļ����Ͳ������������ļ����͵��Զ�����
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" �����c/c++����
autocmd FileType c,cpp,h,cc :set number 
" �����۵�
"autocmd FileType c,cpp :set foldmethod=syntax 
" ����
autocmd FileType c,cpp,h,cc :set cindent

" �����python�ļ�
autocmd FileType python :set number 
"autocmd FileType python :set foldmethod=syntax 
autocmd FileType python :set smartindent

" �۵���ݼ�
" zc:�۵���ǰ
" zo:�򿪵�ǰ
" zn:������
" zN:�۵�����

" ���������
set guifont=Bitstream_Vera_Sans_Mono:h9:cANSI

" ��ס�ո����»��ߴ���Ŷ
set gfw=��Բ:h10:cGB2312

" ����Unicode�ַ��е�ĳЩ���������������ʾ�������ۺŵ�
set ambiwidth=double

" ��ֹlinux�ն����޷�����
if has('mouse')
	set mouse=c
endif

" ������ر�ʱ���ɻָ��ļ���Ϊ�˱���������ǲ�ȡ����
" set noswapfile

" ͻ����ʾ��ǰ��/��
" set cursorline
" set cursorcolumn

" �Զ�����
" set autowrite

" ����ƴд���,��̫�Ѻ�
" set spell

" ������������ʾ��
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
		" -R: �����������ļ�ʱ��������Ŀ¼���еĴ���
		" -b: ֻ���������ļ���������cscope�Ľ���
		" -k: �����������ļ�ʱ��������/usr/includeĿ¼
		" -q: ����cscope.in.out��cscope.po.out�ļ����ӿ�cscope�������ٶ�
        silent! execute "!cscope -bq -i cscope.files"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        "�����ctags�ŵ�cscope����֮����У�����ִ��������䣬�ӿ��ٶ�
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
"" ��ɫ����
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
"" �ļ���ʽ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Favorite filetype
""Use Unix as the standard file type
"set ffs=unix,dos,mac
"
"nmap <leader>fd :se ff=dos<cr>
"nmap <leader>fu :se ff=unix<cr>
