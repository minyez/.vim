""""""""""""""""""""""""""""""
" => C header
"""""""""""""""""""""""""""""""
autocmd bufnewfile *.c so /home/stevezhang/header/c_header.txt
autocmd bufnewfile *.c exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.c exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd Bufwritepre,filewritepre *.c exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c execute "normal `a"


""""""""""""""""""""""""""""""
" => Fortran90 header
"""""""""""""""""""""""""""""""
autocmd bufnewfile *.f90 so /home/stevezhang/header/fortran_header.txt
autocmd bufnewfile *.f90 exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.f90 exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.f90 execute "normal ma"
autocmd Bufwritepre,filewritepre *.f90 exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.f90 execute "normal `a"

""""""""""""""""""""""""""""""
" => F header
"""""""""""""""""""""""""""""""
autocmd bufnewfile *.F so /home/stevezhang/header/fortran_header.txt
autocmd bufnewfile *.F exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.F exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.F execute "normal ma"
autocmd Bufwritepre,filewritepre *.F exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.F execute "normal `a"

""""""""""""""""""""""""""""""
" => Python header
"""""""""""""""""""""""""""""""
autocmd bufnewfile *.py so /home/stevezhang/header/py_header.txt
autocmd bufnewfile *.py exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.py exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.py execute "normal ma"
autocmd Bufwritepre,filewritepre *.py exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.py execute "normal `a"

""""""""""""""""""""""""""""""
" => Shell header
"""""""""""""""""""""""""""""""
autocmd bufnewfile *.sh so /home/stevezhang/header/sh_header.txt
autocmd bufnewfile *.sh exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.sh exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.sh execute "normal ma"
autocmd Bufwritepre,filewritepre *.sh exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.sh execute "normal `a"

set ruler           " 显示标尺  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
"set completeopt=preview,menu 
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu



