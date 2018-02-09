" 设置相对行号
set rnu
set nu

" 设置光标接近底部或上部第三行时开始移屏
set so=3

" 设置语法检测
syntax on

" TAB键长度在indent文件夹中，以适用不同类型文件
set tabstop=8
set smarttab

" 自动缩进
set ai
" 智慧缩进
set si
set wrap

" 显示光标所在行列
" set cursorline
set cursorcolumn

" 设置unix文件格式
"set fileformat=uinix


"选择colorscheme
colorscheme wombat256mod
"colorscheme slate
"colorscheme vividchalk
"colorscheme desert
"colorscheme neon
"colorscheme molokai

"设置tmux
set term=xterm-256color

"去除错误时发出的杂音
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"语法高亮
syntax on

"设置终端配色
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" always show the status line
set laststatus=2

" 忽略编译文件
set wildmenu
set wildignore=*.o,*~,*.pyc,*.mod

" 设置Source Code Pro字体
set anti enc=utf-8
"set guifont=Source\ Code\ Pro\
"set guifont=LucidaMono
"set guifont=UbuntuMono

set shell=/bin/bash

" Disable arrows
" habbit destroying
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" 普通模式下，方向键改为切换窗口
noremap <Up>    <C-w>k
noremap <Down>  <C-w>j
noremap <Left>  <C-w>h
noremap <Right> <C-w>l

" 普通模式下，用tab键导航标签页切换
noremap <tab> gt
noremap <s-tab> gT

" 寄存器复制粘贴
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" 映射ESC
imap fj <esc>
vmap fj <esc>

" 调用命令模式
nnoremap : ;
nnoremap ; :

" 映射:lclose以关闭syntastics下方编译结果窗口
" nnoremap <Leader>lc :lclose<cr>

