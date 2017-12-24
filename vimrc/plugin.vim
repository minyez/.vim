set nocompatible
filetype off

" ============================
" set the runtime path to include Vundle and initialize
set rtp+=/home/stevezhang/.vim/bundle/Vundle.vim

" ============================
call vundle#begin()
" 安装所需插件
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'tomedunn/vim.fortran'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'tommcdo/vim-exchange'
Plugin 'bling/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'raimondi/delimitmate'
" syntax related
Plugin 'scrooloose/syntastic'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'octol/vim-cpp-enhanced-highlight'
" Snippets related
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
" auto-compeletion
Plugin 'valloric/youcompleteme'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neocomplcache'
"Plugin 'tomtom/tcomment_vim'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'scrooloose/nerdtree'

call vundle#end()
" ============================
filetype plugin indent on
filetype plugin on

" ==== UltiSnips ====
set runtimepath+=~/.vim/bundle/ultisnips
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsEditSplit = 'vertical'
" if trigger not working, add these lines
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>','<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>','<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" ==== Tabular ====
" align : in normal and visual mode
" by using a= to align equal mark
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
" by using a: to align after colon mark
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
" by using a\, (escape) to align comma mark
nmap <Leader>a\, :Tabularize /,<CR>
vmap <Leader>a\, :Tabularize /,<CR>

" ==== syntaxstic ====
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_always_populate_loc_list = 1
" 关闭警告
let g:syntastic_quiet_messages = { 'level': 'warnings' }

"""""""""""""""""""""""
" Doxygen Plugin
"""""""""""""""""""""""
"doxygen toolkit 
let g:DoxygenToolkit_briefTag_pre="@brief " 
let g:DoxygenToolkit_paramTag_pre="@param " 
let g:DoxygenToolkit_returnTag="@returns " 
let g:DoxygenToolkit_fileTag="@file " 

let g:DoxygenToolkit_blockHeader="-----------------------------------" 
let g:DoxygenToolkit_blockFooter="-----------------------------------" 

let g:DoxygenToolkit_authorName="Min-Ye Zhang, stevezhang@pku.edu.cn" 
let s:licenseTag = "\<enter>" 
let s:licenseTag = s:licenseTag . "TODO:\<enter>" 
let s:licenseTag = s:licenseTag . "\<enter>" 
let g:DoxygenToolkit_licenseTag = s:licenseTag 


let g:DoxygenToolkit_briefTag_funcName="no" 
let g:doxygen_enhanced_color=1 
let g:DoxygenToolkit_commentType="C" 
let g:DoxygenToolkit_classTag = "@class " 

"自定义快捷键
"vmap <C-S-P>    dO#endif<Esc>PO#if 0<Esc>
"map <F12> <Esc>:Dox<cr>
"map <F10> <Esc>:DoxAuthor<cr>
"map <F11> <Esc>:DoxLic<cr>
"map <F4>b :DoxBlock<CR>
"map <F4>l :DoxLic<CR>
"map <F4>c odocClass<C-B>
"map <F4>m odocMember<C-B>
"map <F9> :DoxBlock<CR>
