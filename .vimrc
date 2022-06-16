" ===================================================
" Vim 配置
" ===================================================
"
" 初始化全局变量

" mode: 0 idea (default)
" mode: 1 mac
" mode: 2 gvim

" 选择当前系统的模式
let g:mode = 0

" 设置leader字符为空格
let mapleader = " "


" ==================================================
" vim-plug 插件安装=================================
" ==================================================


call plug#begin()


" 文件树
Plug 'scrooloose/nerdtree'
" 图标
Plug 'ryanoasis/vim-devicons'

call plug#end()




" 配置编码格式
set encoding=UTF-8

" 设置鼠标可以点击

set mouse=a


" 设置命令模式补全提示
set wildmenu
set wildmode=longest:list,full

" 设置结尾空格和制表符显示
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<

" 设置记录多少历史操作
set history=1000

" 出错时不要发出声音
set noerrorbells

" 设置保存历史操作记录(即使退出编辑页面)
"set undofile
" 设置undo文件保存路径(需要自己创建此路径)
"set undodir=~/.vim/.undo//

" 设置高亮匹配的括号
set showmatch

" 设置光标所在行数
set ruler

" 设置是否显示状态栏 0: 显示 1: 只在多窗口时显示 2: 显示
set laststatus=2

" 设置不换行
set nowrap

" 设置水平滚动光标离左右边界的字符数 (需要在配置不自动换行的情况下使用(set nowrap)))
set sidescrolloff=10

" 设置垂直滚动光标离底部顶部的行数
set scrolloff=10

" 设置关闭vi的兼容模式
set nocompatible

" 设置光标行当前高亮
" set cursorline

" 设置语法高亮
syntax on

" 设置shift + > 缩进可以忽略空格
set shiftround

" 设置一个tab的宽度
set tabstop=4
" 设置每一级缩进的长度
set shiftwidth=4
" 设置删除tab的空格数量（设置为-1可以自动和shiftwidth保持一致）
set softtabstop=-1
" 设置tab按键换成空格
set expandtab
" 设置自动缩进 (set autoindent, smartindent更智能)
set smartindent

" 设置忽视大小写
set ignorecase
" 设置搜索内容包含大写时，不忽略大小写
set smartcase

" 设置vim中的拷贝可以拷贝到系统的粘贴板中
set clipboard=unnamed

" 设置显示行号
set nu
" 设置显示相对行号
set relativenumber

" 设置搜索内容方框选中
set incsearch
" 设置搜索所有内容高亮显示(无法取消高亮显示)
set hlsearch





" =================================================================
" Normal 模式键盘映射==============================================
" =================================================================

" NERDTree 配置
nnoremap <silent><leader>1 :NERDTreeToggle<CR>
nnoremap <silent><leader>ff :NERDTreeFind<CR>
nnoremap <silent><leader>h :tabp<CR>
nnoremap <silent><leader>l :tabn<CR>


" 屏幕移动
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" 设置双击q来强制退出
nnoremap qq :q!<CR>




" 设置当nerdtree为最后一个窗口时退出
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif




" ================================================================
" Insert 模式键盘映射=============================================
" ================================================================

" 设置 jk 映射为 esc键
inoremap jk <ESC>
inoremap kj <ESC>


" 当前行的行首
inoremap <C-H> <ESC>I
" 当前行的行尾
inoremap <C-L> <ESC>A
" 下一行的行首
inoremap <C-J> <ESC><DOWN>I
" 下一行的行尾
inoremap <C-K> <ESC><UP>A

" 自动补全括号
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O


" ================================================================
" Visual 模式键盘映射=============================================
" ================================================================










function! Test()
    set nu
    echo "test success"
endfunction







" =====================================================================
" 软件设置: 设置在iTerm2中将光标转化为细光标
" =====================================================================
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
