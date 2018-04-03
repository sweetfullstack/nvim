"F５一键编译执行
map <F5> :call CompileRun()<CR>
func! CompileRun()
▸   ▸   exec "w"
▸   ▸   if &filetype == 'c'
▸   ▸   ▸   exec "!g++ % -o %<"
▸   ▸   ▸   exec "!time ./%<"
▸   ▸   elseif &filetype == 'cpp'
▸   ▸   ▸   exec "!g++ % -o %<"
▸   ▸   ▸   exec "!time ./%<"
▸   ▸   elseif &filetype == 'java'
▸   ▸   ▸   exec "!javac %<"
▸   ▸   ▸   exec "!time java %<"
▸   ▸   elseif &filetype == 'sh'
▸   ▸   ▸   :!time bash %
▸   ▸   elseif &filetype == 'python'
▸   ▸   ▸   exec "!time python %"
▸   ▸   elseif &filetype == 'go'
▸   ▸   ▸   exec "!time go run %"
▸   ▸   endif
endfunc

" 切换标签窗口
nmap <F8> :TagbarToggle<CR>
