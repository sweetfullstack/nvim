" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:□

" 设定文件浏览器目录为当前目录
set bsdir=buffer
"设置编码
set encoding=utf-8

" 设置文件编码
set fenc=utf-8
"set to use clipboard of system
set clipboard=unnamed

" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"忽略大小写查找
set ic

"自动匹配括号
set showmatch

" tab宽度
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set expandtab

"光标距离屏幕边缘行数
set scrolloff=3

"高亮搜索显示结果，无需显示整行
set hlsearch
set display=lastline

"一直显示状态栏
set laststatus=2

"修改文件默认缩进
au BufNewFile,BufRead *.py
                        \ set tabstop=4 |
                        \ set softtabstop=4 |
                        \ set shiftwidth=4 |
                        \ set textwidth=79 |
                        \ set expandtab |
                        \ set autoindent |
                        \ set fileformat=unix

au BufNewFile,BufRead *.c
                        \ set tabstop=4 |
                        \ set softtabstop=4 |
                        \ set shiftwidth=4 |
                        \ set textwidth=79 |
                        \ set expandtab |
                        \ set autoindent |
                        \ set fileformat=unix


au BufNewFile,BufRead *.js, *.html, *.css
                        \ set tabstop=2 |
                        \ set softtabstop=2 |
                        \ set shiftwidth=2

au BufNewFile,BufRead *.vimrc
                        \ set tabstop=4 |
                        \ set softtabstop=4 |
                        \ set shiftwidth=4


"fcitx配置
let g:input_toggle = 1
function! Fcitx2en()
    let s:input_status = system("fcitx-remote")
    if s:input_status == 2
        let g:input_toggle = 1
        let l:a = system("fcitx-remote -c")
    endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2en()
"##### auto fcitx end ######
