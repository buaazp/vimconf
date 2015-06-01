""""""""""""""""""""""""""""""
" plug settings
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Plug 'junegunn/seoul256.vim'
" Plug 'fatih/molokai'
Plug 'junegunn/vim-easy-align'
"Plug 'junegunn/vim-github-dashboard'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'techlivezheng/vim-plugin-minibufexpl'
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'tomtom/tcomment_vim'
Plug 'ervandew/supertab'
" Plug 'Shougo/neocomplcache.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'fatih/vim-go'
" Plug 'wting/rust.vim'

call plug#end()

""""""""""""""""""""""""""""""
" keybind setting
""""""""""""""""""""""""""""""
vnoremap <Enter> <Plug>(EasyAlign)
nnoremap <silent><C-d> :bd<CR> :syntax on<CR>
nnoremap <silent><Tab> :bn<CR>
nnoremap <silent><S-Tab> :bp<CR>
"用空格键来打开/关闭折叠
nnoremap <silent><space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

"开关文件浏览器
noremap <silent><F2> :NERDTreeToggle <CR>
"在文件浏览器中定位当前文件
noremap <silent><F2>f :NERDTreeFind <CR>
noremap <silent><F3>a :DoxAuthor<CR>
noremap <silent><F3>f :Dox<CR>
noremap <silent><F3>b :DoxBlock<CR>
noremap <silent><F3>l :DoxLic<CR>
noremap <silent><F4> :TagbarToggle<CR>
"nnoremap <silent><F5> :GitGutterToggle<CR> 
nnoremap <silent><F5> :nohl<CR>
noremap <silent><F6> :PlugInstall<CR> 
"设置a.vim插件的快捷键
noremap <silent><F9> :A<CR>
"设置F12为显示行号快捷键
noremap <silent><F12> :set number!<CR>
set      pastetoggle=<F11>

""""""""""""""""""""""""""""""
" global settings
""""""""""""""""""""""""""""""
set      shell=/bin/sh
syntax   enable
filetype plugin indent on
syntax   on
set      number

"搜索时及时匹配且忽略大小写
set      incsearch
set      ignorecase

set      shiftwidth=4
set      softtabstop=4
set      tabstop=4

"将Tab替换为空格
set      expandtab
set      smarttab
retab
 
set      foldenable
set      foldmethod=manual
set      foldlevel=1
 
"光标到底部和顶部时保持5行距离
set      scrolloff=5
 
set      nocompatible " Use Vim defaults (much better!)
set      history=1500 " keep 1500 lines of command line history
set      ruler " show the cursor position all the time
set      laststatus=2

"去掉预览窗口preview和设置longest
set      completeopt=menu,longest

"命令行高度为2
set      cmdheight=2
 
"使用VIM不兼容模式
set      nocp

"搜索时高亮显示被找到的文本
set      hlsearch

"允许继续向前删除
set      backspace=indent,eol,start

"允许光标跨行
set      whichwrap=b,<,>,[,],h,l

language message en_US.UTF-8
set      helplang=cn
set      ambiwidth=double
set      encoding=utf-8
set      langmenu=zh_CN.UTF-8
set      fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"不在单词中间断行
set      linebreak
"允许汉字断行
set      fo+=mB
 
"显示括号配对情况
set      showmatch

"打开普通文件类型的自动缩进。 该自动缩进不如 cindent 智能， 但它可以为你编辑非C/C++ 文件提供一定帮助。
set      autoindent

"不使用 selectmode。
set      selectmode=
 
"使用“Shift + 方向键”选择文本
set      keymodel=startsel,stopsel
 
"在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来。
set      wildmenu

"如果去掉这一行,默认值set mouse=a就生效了,这时不能用鼠标选中复制.
set      mouse=v

" ctags在当前目录找不到tags文件就向父目录找
set      tags=tags;

"打开文件时自动到达上次浏览时的位置
set      viminfo='1000,f1,<500
autocmd  BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"git commit添加注释时设置最大宽度和自动换行
autocmd  Filetype gitcommit setlocal spell textwidth=72

"与系统剪贴板共享
"set      clipboard+=unnamed
"打开拼写检查。
"set      spell
"set      backup " keep a backup file
"set      ruler
" 我的状态行显示的内容（包括文件类型和解码） 
"set      statusline=%f%m%r%h%w\ [enc=%{&enc}]\ [fenc=%{&fenc}]\ [format=%{&ff}]\ [type=%y]\ [pos=%l/%L行,%v列][%p%%]\ %{strftime(\"%m/%d/%y\ -\ %H:%M:%S\")}
"设置状态行颜色
"highlight StatusLine guifg=SlateBlue guibg=Yellow
"highlight StatusLineNC guifg=Gray guibg=White

""""""""""""""""""""""""""""""
" vimim setting
""""""""""""""""""""""""""""""
let g:vimim_enable_static_enu              = 2
" let g:vimim_enable_sexy_input_style        = 2
" 关闭中文标点
let g:vimim_disable_chinese_punctuation    = 1
"中英文之间不加空格
let g:vimim_disable_seamless_english_input = 1

""""""""""""""""""""""""""""""
" airline setting
""""""""""""""""""""""""""""""
let g:airline#extensions#whitespace        = 0 "关闭空白符检测
let g:airline_powerline_fonts              = 1
let g:airline#extensions#tabline#enabled   = 0 "顶部tab栏显示
let g:airline_theme                        = "molokai" "设定主题

""""""""""""""""""""""""""""""
" color settings
""""""""""""""""""""""""""""""
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
" let g:seoul256_background                  = 233
" let g:molokai_original                     = 1
let g:rehash256                            = 1
colorscheme molokai

""""""""""""""""""""""""""""""
"go-vim settings
""""""""""""""""""""""""""""""
let g:go_highlight_functions               = 1
let g:go_highlight_methods                 = 1
let g:go_highlight_structs                 = 1
let g:go_fmt_fail_silently                 = 1
let g:go_disable_autoinstall               = 1
let g:go_fmt_autosave                      = 1
" let g:go_fmt_command                       = "goimports"

""""""""""""""""""""""""""""""
"neocomplete settings
""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup        = 1

""""""""""""""""""""""""""""""
"NerdTree setting
""""""""""""""""""""""""""""""
" 关闭文件时同时关闭文件浏览器
let g:NERDTreeQuitOnOpen                   = 1
let g:NERDTreeWinSize                      = 20

""""""""""""""""""""""""""""""
"minibuffer setting
""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim           = 1
let g:miniBufExplMapWindowNavArrows        = 1
let g:miniBufExplMapCTabSwitchBufs         = 1
let g:miniBufExplModSelTarget              = 1
let g:miniBufExplTabWrap                   = 1
let g:miniBufExplUseSingleClick            = 1

""""""""""""""""""""""""""""""
" doxygen setting
""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_funcName     = "yes"
let g:doxygen_enhanced_color               = 1
let g:DoxygenToolkit_authorName            = "招牌疯子 zp@buaa.us"
let s:licenseTag                           = "  \<enter>"
let s:licenseTag                           = s:licenseTag . "  zimg - high performance image storage and processing system.\<enter>"
let s:licenseTag                           = s:licenseTag . "      http://zimg.buaa.us \<enter>"
let s:licenseTag                           = s:licenseTag . "  \<enter>"
let s:licenseTag                           = s:licenseTag . "  Copyright (c) 2013-2014, Peter Zhao <zp@buaa.us>.\<enter>"
let s:licenseTag                           = s:licenseTag . "  All rights reserved.\<enter>"
let s:licenseTag                           = s:licenseTag . "  \<enter>"
let s:licenseTag                           = s:licenseTag . "  Use and distribution licensed under the BSD license.\<enter>"
let s:licenseTag                           = s:licenseTag . "  See the LICENSE file for full text.\<enter>"
let g:DoxygenToolkit_licenseTag            = s:licenseTag

""""""""""""""""""""""""""""""
" tagbar setting
""""""""""""""""""""""""""""""
let g:tagbar_width                         = 20
let g:tagbar_type_go                       = {
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

