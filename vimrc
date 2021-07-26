"============================================================================================
"                                             _
"                         _   _ _   _  __   _(_)_ __ ___
"                        | | | | | | | \ \ / / | '_ ` _ \
"                        | |_| | |_| |  \ V /| | | | | | |
"                         \__, |\__, |   \_/ |_|_| |_| |_|
"                         |___/ |___/
"   
"============================================================================================

set nocompatible                                 " be iMproved, required
filetype off                                     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


""""""""""""""""""""""""""""""""""""""""""基础配置"""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on                       " 开启文件类型检查

set number                                      " 设置行号
set mouse=a                                     " 设置光标移动
set history=1024                                " history
set guifont=Source_Code_Pro:h12                 " 设置字体
set ruler                                       " 显示当前位置
set autoread                                    " 自动加载外部修改
set autowrite                                   " 自动保存
set ignorecase smartcase                        " ignorecase smartcase
set hlsearch incsearch                          " Highlight search results
set cmdheight=2                                 " Height of the command bar
set paste                                       " 格式化粘贴
set expandtab smarttab shiftwidth=4 tabstop=4   " Tab 替换为空格, 智能缩进
set smartindent                                 " 智能缩进
set nobackup                                    " 不生成时文件
set noswapfile                                  " 不生成.swap文件
set nowrap                                      " 禁止折行
set guifont=Courier_New:h16
set guifontwide=STXihei:h16
set backspace=2                                 " 可以连续删除多行

"set cursorcolumn                               " 高亮当前列
"set cursorline                                 " 高亮当前行

let &termencoding=&encoding                     " 设置编码
set fileencodings=utf-8,gb18030,gbk,gb2312,big5

let mapleader = ','                             " Change the mapleader
let g:mapleader = ','
noremap \ ,

set laststatus =2 "always has status line        " 状态栏配置

autocmd FileType javascript,html,css,xml set ai
autocmd FileType javascript,html,css,xml set sw=2
autocmd FileType javascript,html,css,xml set ts=2
autocmd FileType javascript,html,css,xml set sts=2

syntax enable

vmap <c-c> :w !pbcopy<CR><CR>

" 窗口切换快捷键
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" 切换tab
nnoremap <S-TAB> :tabprevious<CR>
nnoremap <TAB> :tabnext<CR>
nmap <leader>tt :tabnew<CR>

" 快捷键配置
autocmd FileType python nnoremap <leader>pdb :-1read $HOME/.vim/.snippets/pdb.py<CR>==
autocmd FileType python nnoremap <leader>ipdb :-1read $HOME/.vim/.snippets/ipdb.py<CR>==
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""插件配置"""""""""""""""""""""""""""""""""""""""""""

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" 插件: vim基础配置，例如关键字配色和缩进等等
Plugin 'tpope/vim-sensible'

" 插件: 树形导航
Plugin 'scrooloose/nerdtree'   
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeWinSize=24
let NERDTreeIgnore=['\.pyc', '\.swp', '\~']

" 插件: 快速搜索
Plugin 'Yggdroot/LeaderF'
let g:Lf_ShortcutF = '<C-P>'
nnoremap <leader>f :LeaderfBufTagAllCword<CR>
nnoremap <leader>st :LeaderfBufTagAll<CR>
nnoremap <leader>m :LeaderfMruCwd<CR>

" 插件: 集成git操作
Plugin 'tpope/vim-fugitive'

" 插件: 语法检查
Plugin 'w0rp/ale'
autocmd FileType python nnoremap <leader>= :0,$!yapf<CR>
let g:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_fixers = ['yapf']
let g:ale_completion_enabled = 0

" python flake8语法检查设置
let b:ale_python_flake8_options = '--max-line-length=100 --ignore=E126,E127,E265,E266'

" 插件: 快速注释
Plugin 'scrooloose/nerdcommenter'   

" 插件: 大纲式快速导航
Plugin 'majutsushi/tagbar'     
nnoremap <leader>b :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'    " Proper Ctags locations
let g:tagbar_widtt=26                            " Default is 40, seems too wide
let g:vim_markdown_folding_disabled = 1
autocmd FileType python nnoremap <leader>y :TagbarToggle<CR>

" 插件: 全局搜索
Plugin 'mileszs/ack.vim'       
Plugin 'rking/ag.vim'

" 插件: 文档编辑
Plugin 'tommcdo/vim-exchange'
Plugin 'terryma/vim-multiple-cursors'       
Plugin 'Lokaltog/vim-easymotion'                 " 快速跳转
Plugin 'Flowerowl/ici.vim'

" 插件: 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" 插件: vim-scripts repos
Plugin 'L9'
Plugin 'elixir-editors/vim-elixir'

" 插件: React jsx语法检查
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'sillybun/vim-repl'


" 插件: dracula 主题配色
Plugin 'dracula/vim'
"set background=dark
"colorscheme dracula                              " 设置当前主题为dracula

" 插件: molokai 主题配色
Plugin 'tomasr/molokai'
"colorscheme molokai                              " 设置当前主题为molokai
"let g:molokai_original = 1                       " 匹配原始molokai原始背景色
"let g:rehash256 = 1

" 插件: vim-one 主题配色
Plugin 'rakr/vim-one'
"colorscheme one                                  " 设置当前主题为one
"set background=dark
"set termguicolors

" 插件: everforest 主题配色
"Plugin 'sainnhe/everforest'
"colorscheme everforest                           " 设置当前主题为everforest
"set background=dark

" 插件: gruvbox 主题配色
Plugin 'morhetz/gruvbox'
colorscheme gruvbox                              " 设置当前主题为gruvbox
set background=dark


" 插件: git 侧边栏插件
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 0

" 插件: golang
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
"autocmd BufferWritePost,FileWritePost *.go execute 'go fmt'
"autocmd BufWritePre *.go '!go fmt'
"autocmd FileType go autocmd BufWritePre <buffer> Fmt
let g:syntastic_go_checkers=['go', 'govet', 'golint']
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:go_version_warning = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:go_addtags_skip_unexported = 0

" 插件: 自动关闭 HTML 标签
Plugin 'docunext/closetag.vim'

" 插件: css
Plugin 'hail2u/vim-css3-syntax', {'for': 'css'}

" 插件: js
Plugin 'pangloss/vim-javascript'

" 插件: json语法检查
Plugin 'elzr/vim-json'

" 插件: python
Plugin 'hdima/python-syntax'

" 插件: python pep8
Plugin 'hynek/vim-python-pep8-indent'

" 插件: godef
Plugin 'dgryski/vim-godef'

let g:godef_split=3                    "vim-godef跳转方式：左右打开新窗口
let g:godef_same_file_in_same_window=1 "函数在同一个文件中时不需要打开新窗口

" 插件: indentLine(缩进指示线)
Plugin 'yggdroot/indentline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"""""""""""""""""""""""""""""""""""配置插件结束"""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""Bundle使用说明"""""""""""""""""""""""""""""""""

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"  auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
