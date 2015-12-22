"===============================
" FileName: .vimrc
" Author:   kylinwowo
" Version:  1.0
" Email:    kylinwowo@gmail.com
" Date:     2013-11-14
"===============================


"===============================
" Vundle.
"===============================

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My bundles here
Bundle 'ScrollColors'
Bundle 'Colour-Sampler-Pack'
Bundle 'bufexplorer.zip'
Bundle 'a.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'belluzj/cosmic-sans-neue'
Bundle 'msanders/snipmate.vim'
Bundle 'bling/vim-airline'
Bundle 'yegappan/grep'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'kylinwowo/cvim'
Bundle 'kylinwowo/taglist'

filetype plugin indent on



"===============================
" Basic Settings.
"===============================

" No compatible
set nocompatible

" No backup
set nobackup

" No swap file
set noswapfile

" C indent
set cindent

" Ignore case
set ignorecase

" Tab width
set ts=4

" Line number
set number

" Shift width
set shiftwidth=4

" Expand tab
set expandtab

" Encoding
set encoding=utf-8
set fileencodings=utf-8,gbk
set fileencoding=utf-8
set termencoding=utf-8

" 256 color
set t_Co=256

" Colorscheme
colorscheme wood

" Highlight search
set hlsearch

" Syntax enable
syntax enable

" Plugin on
filetype plugin indent on

" Highlight function name
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfunctions ctermfg=81


"===============================
" Ctags.
"===============================

set tags=tags

" Current path
set tags+=./tags

" MiniGUI
"set tags+=~/ap136/apps/libminigui-gpl/tags

" Freetype2
"set tags+=~/src/freetype-2.5.3/freetype-2.5.3/tags

" UCGUI
"set tags+=~/src/ucgui/UCGUI390a/Start/tags

" MKL
"set tag+=~/MKL16Z256VLH4/tags

" Libghttp
"set tag+=~/src/libghttp-1.0.9/tags

" Linux kernel
"set tag+=~/kernel/linux/tags

" 842+
"set tag+=~/sdmp/tags

" cJSON
"set tag+=~/cJSON/tags

" HR390
"set tag+=~/HR390/tags

" CM
"set tag+=~/cm/frameworks/tags
"set tag+=~/cm/hardware/tags
"set tag+=~/cm/kernel/tags

" Kernel
set tag+=~/kernel/linux-4.1.1/tags

"===============================
" Cscope.
"===============================
if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb
    set csre
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

"===============================
" Plugin settings.
"===============================

" Taglist
"let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

" Airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''

" Supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabMappingTabLiteral = "<C-V>"

" Syntastic
let g:syntastic_java_checkers = []

"===============================
" Mapping commands.
"===============================

" Taglist
nmap <F5> :TlistToggle<CR>

" NERDTree
nmap <F6> :NERDTreeToggle<CR>

" Open .c or .h file
nmap <F7> :AV<CR>

" Delete space end of line
nmap <F4> :FixWhitespace<CR>

" Tab switch
nmap <F2> :bp<CR>
nmap <F3> :bn<CR>

" Close all window
nmap 'q :qall<CR>

" Grep
nmap <leader>g :Grep<CR>

" End with ;
nmap ; A;<ESC>

" Switch window
nmap <leader>ww <C-w><C-w>

" Jump
nmap ( [(
nmap ) ])
nmap { [{
nmap } ]}

" Auto complete
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
" inoremap < <><ESC>i
inoremap " ""<ESC>i
