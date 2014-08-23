"Auto encode detection.
set fileencodings=iso-2022jp,cp932,sjis,euc-jp,utf-8
"Enable filetype option.
filetype off
filetype on
"Change Tab Switch
if v:version>=700
  nnoremap <C-Tab>   gt
  nnoremap <C-S-Tab> gT
endif
nnoremap <Space>th :tabfirst<CR>
nnoremap <Space>tl :tablast<CR>
"Color Setting
colorscheme evening
"colorscheme darkblue
"colorscheme lucius
"Display Line Numbers
set number
"Enable Incremental search
set incsearch
"Ignore case in search patterns
set ignorecase
"Recognize a difference between upper/lower cases when target string contains upper case
set smartcase
"Tab width which is enabled when new file with <Tab> characters is opened.
set tabstop=4
"Auto indent width
set shiftwidth=4
"Tab width which is enabled when new <Tab> characters is inserted.
"(Set 0 to this and the same width of "tabstop" is used)
set softtabstop=0
"Insert space instead of Tab
"To insert <Tab> with this setting, type "Ctrl-V <Tab>".
set expandtab
""Set some settings depending on filetype.
"if exists("did_load_filetypes")
"  finish
"endif
"To check the filetype of the current buffer, run the following command.
":verbose :setlocal filetype?
"Make new indent and current indent same
set autoindent
"Enable high level indent when new line made
set smartindent
"Emphasize corresponding {} when } written
set showmatch
"Highlight cursor line
set cursorline
"Highlight Searched Words
set hlsearch
"Copy words from other applications with p key
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
else
  set clipboard=unnamed
endif
"Enable syntax highlight
syntax on
"Do NOT save back up file
set nobackup
"Do NOT create swap file
set noswapfile
"Do not adjust the size of other windows when one window is closed
set noequalalways
set ruler
"Change current directory to the file in the current window.
"set autochdir
"Custamizes for Ex mode auto completion
set wildmenu
set wildmode=list:full
"Ex command history setting
set history=200
"Window always has the statusline
set laststatus=2
set nrformats=hex
"Let taglist to search "tags" file to upper directories.
set tags=tags;
"Specify ctags to utilize Taglist correctly.
if has('win32') || has('win64')
  let Tlist_Ctags_Cmd = 'C:\ctags58\ctags.exe'
else
endif
"Font Size
if has('win32') || has('win64')
  " Windows
  set guifont=MS_Gothic:h10:cSHIFTJIS
else
endif
"fcitx Setting
if has('win32') || has('win64')
else
  if executable('fcitx-remote')
    autocmd! InsertLeave * call system('fcitx-remote -c')
  endif
endif
"Indent Setting for *.shtem90
autocmd! FileType sh,vim setlocal tabstop=2 softtabstop=0 shiftwidth=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"lightline Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let s:base03 = [ '#242424', 235 ]
"let s:base023 = [ '#353535 ', 236 ]
"let s:base02 = [ '#444444 ', 238 ]
"let s:base01 = [ '#585858', 240 ]
"let s:base00 = [ '#666666', 242  ]
"let s:base0 = [ '#808080', 244 ]
"let s:base1 = [ '#969696', 247 ]
"let s:base2 = [ '#a8a8a8', 248 ]
"let s:base3 = [ '#d0d0d0', 252 ]
"let s:yellow = [ '#cae682', 180 ]
"let s:orange = [ '#e5786d', 173 ]
"let s:red = [ '#e5786d', 203 ]
"let s:magenta = [ '#f2c68a', 216 ]
"let s:blue = [ '#8ac6f2', 117 ]
"let s:cyan = s:blue
"let s:green = [ '#95e454', 119 ]
"let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
"let s:p.normal.left = [ [ s:base02, s:blue ], [ s:base3, s:base01 ] ]
"let s:p.normal.right = [ [ s:base02, s:base0 ], [ s:base1, s:base01 ] ]
"let s:p.inactive.right = [ [ s:base023, s:base01 ], [ s:base00, s:base02 ] ]
"let s:p.inactive.left =  [ [ s:base1, s:base02 ], [ s:base00, s:base023 ] ]
"let s:p.insert.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
"let s:p.replace.left = [ [ s:base023, s:red ], [ s:base3, s:base01 ] ]
"let s:p.visual.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
"let s:p.normal.middle = [ [ s:base2, s:base02 ] ]
"let s:p.inactive.middle = [ [ s:base1, s:base023 ] ]
"let s:p.tabline.left = [ [ s:base3, s:base00 ] ]
"let s:p.tabline.tabsel = [ [ s:base2, s:base023 ] ]
"let s:p.tabline.middle = [ [ s:base02, s:base1 ] ]
"let s:p.tabline.right = [ [ s:base2, s:base01 ] ]
"let s:p.normal.error = [ [ s:base03, s:red ] ]
"let s:p.normal.warning = [ [ s:base023, s:yellow ] ]
"
"let g:lightline.colorscheme.mystatuslinecolor.palette = s:p

let g:lightline = {
  \ 'colorscheme': 'Tomorrow_Night_Blue',
  \ }
"Change the color of the status line
"augroup InsertHook
"    autocmd!
"    autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
"    autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
"augroup END
""Replcace 'j' and 'gj' etc..
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
"Settings for QuickFix Window
augroup Quickfix
  autocmd!
  autocmd FileType qf nnoremap <silent><buffer> j j&
  autocmd FileType qf nnoremap <silent><buffer> k k&
  autocmd FileType qf nnoremap <silent><buffer> gj gj&
  autocmd FileType qf nnoremap <silent><buffer> gk gk&
  autocmd FileType qf nnoremap <silent><buffer> q :<C-u>ccl<CR>
  "autocmd FileType qf nnoremap q :<C-u>ccl<CR>
augroup END
"Replace ":" with ";" in Normal mode
"nnoremap ; :
"nnoremap : ;
"Yank from cursor position to the end of line
nnoremap Y y$
"Quit with entering <ESC> towice
nnoremap <ESC><ESC> :q<CR>
"Jump to the marked position
nnoremap <C-M><C-M> `m
"Jump to the last insrted position
nnoremap <C-M><C-I> `^
"Jump to the last editted position
nnoremap <C-M><C-E> `.
"Jump to the head of the last yanked position
nnoremap <C-M><C-[> `[
"Jump to the end of the last yanked position
nnoremap <C-M><C-]> `]
"Jump to the head of the last select region with Visual-Mode
nnoremap <C-M><C-M><C-[> `[
"Jump to the end of the last select region with Visual-Mode
nnoremap <C-M><C-M><C-]> `]
"Count the last search word
nnoremap <Space>cw. :<C-u>%s///gn<CR>
"Quickfix Jump Setttings
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :cfirst<CR>
nnoremap ]Q :clast<CR>
"Location List Jump Setttings
nnoremap [l :lprev<CR>
nnoremap ]l :lnext<CR>
nnoremap [L :lfirst<CR>
nnoremap ]L :llast<CR>
"Change current window size
nnoremap <silent> <C-Left>  :5wincmd <<CR>
nnoremap <silent> <C-Right> :5wincmd ><CR>
nnoremap <silent> <C-Up>    :5wincmd +<CR>
nnoremap <silent> <C-Down>  :5wincmd -<CR>
"Move focus to other windows
nnoremap <silent> <S-Left>  :wincmd h<CR>
nnoremap <silent> <S-Right> :wincmd l<CR>
noremap <silent> <S-Up>    :wincmd k<CR>
nnoremap <silent> <S-Down>  :wincmd j<CR>
"Move GUI Window Position
"nnoremap <C-S-Right> :<C-u>call MyFunc_MoveGUIWindowPos(5, 0)<CR>
"function! MyFunc_MoveGUIWindowPos(dx, dy)
"    let l:x = getwinposx()
"    let l:y = getwinposx()
""    let l:x = getwinposx() + a:dx
""    let l:y = getwinposx() + a:dy
"    "execute "winpos " . l:x . " " . l:y
"    execute "winpos " . l:x . " " . l:y
"endfunction
"Move cursor left when ', ", [, {, ( are inserted.
inoremap '' ''<Left>
inoremap "" ""<Left>
inoremap [] []<Left>
inoremap {} {}<Left>
inoremap () ()<Left>
inoremap <> <><Left>
inoremap `` ``<Left>
"inoremap <C-J> <Down>
"inoremap <C-K> <Up>
"inoremap <C-H> <Left>
"inoremap <C-L> <Right>
"nnoremap <F4> :execute "vimgrep /" . expand("<cword>") . "/j ../**/*.cpp ../**/*.c ../**/*.h ../**/*.txt ../**/*.py ../**/*.mk ../**/*.java" \| topleft cwindow<CR>
"Ctrl+U : Erase all words at the left of cursor.
"Ctrl+W : Erase a word at the left of cursor.
nnoremap <F4> :Regrep
nnoremap <C-S> :Regrep
"command! -complete=file -nargs=+ Grep  call s:grep([<f-args>])
"function! s:grep(args)
"  execute 'vimgrep' '/'.a:args[-1].'/j' join(a:args[:-2]) . '| topleft cwindow'
"endfunction
"
"nnoremap <F3> :Grep **/*.{c,cpp,h,py}
"Set the directory in which current file exists to the current directory.
nnoremap <silent><F3>
\   :execute "cd " . expand("%:p:h")<CR>
\   :pwd<CR>
nnoremap <silent><Space>cd.
\   :execute "cd " . expand("%:p:h")<CR>
\   :pwd<CR>

"Open / Close Quickfix Window
nnoremap <silent> <C-Q> :cw<CR>
nnoremap <C-S-Right> :intro
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vimrc edit/load settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Open _vimrc
nnoremap <Space>v.
\        :<C-u>edit $MYVIMRC<CR>
"Open _gvimrc
nnoremap <Space>g.
\        :<C-u>edit $MYGVIMRC<CR>
"Reload _vimrc and _gvimrc
nnoremap <Space>s.
\        :<C-u>source $MYVIMRC<CR> :source $MYGVIMRC<CR>
"Switch to alternative buffer.
nnoremap <Space>b.
\        :<C-u>edit #<CR>
nnoremap <Space>tn.
\        :<C-u>tabnew<CR>
nnoremap <C-T><C-N>
\        :<C-u>tabnew<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"neobundle settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent off
if has('win32') || has('win64')
  let $VIM_HOME="C:/vim74-kaoriya-win64"
  set runtimepath&
  set runtimepath^=$VIM_HOME
  set runtimepath^=$VIM_HOME/.vim
  set runtimepath^=$VIM_HOME/plugins/vimproc
"    set runtimepath^=$VIM_HOME/.vim/migemo
"    set runtimepath^=$VIM_HOME/.vim/migemo/runtime/plugin
"    set runtimepath^=$VIM_HOME/.vim/bundle/neobundle/vimproc
"    set runtimepath^=$VIM_HOME/.vim/bundle/neobundle/vimproc/autoload
    "set runtimepath+="C:/cscope"
"    set runtimepath+=F:/shortcut
"    set runtimepath+="C:/Program Files (x86)/Hamana20051010gdi/"
"    let $PATH=$PATH.";C:/Program Files (x86)/Lynx for Win32"
    "Don't put the following 2 lines in "if has('vim_starting')".
    "Refer to this URL
    "https://github.com/Shougo/neobundle.vim/issues/19
  set runtimepath+=$VIM/.vim/bundle/neobundle/neobundle.vim
"    set runtimepath+=$VIM_HOME/.vim/colorscheme
    "set runtimepath^=$VIM_HOME/.vim/colorscheme
    "set C:\vim74-kaoriya-win64\.vim\colorscheme
  call neobundle#rc(expand('$VIM/.vim/bundle/neobundle'))
else
  set runtimepath+=$HOME/.vim/bundle/neobundle
  set runtimepath+=~/.vim/bundle/neobundle/neobundle.vim
  "set runtimepath+=$VIM_HOME/.vim/colorscheme
  "set runtimepath^=$VIM_HOME/.vim/colorscheme
  " set runtimepath+=~/.vim/bundle/neobundle/neobundle.vim/autoload
  " set runtimepath+=~/.vim/bundle/neobundle/neobundle.vim/doc
  " set runtimepath+=~/.vim/bundle/neobundle/vimproc.vim
  " set runtimepath+=~/.vim/bundle/neobundle/vimproc.vim/autoload
  " set runtimepath+=~/.vim/bundle/neobundle/vimproc.vim/doc
  " set runtimepath+=~/.vim/bundle/neobundle/vimshell.vim
  " set runtimepath+=~/.vim/bundle/neobundle/vimshell.vim/autoload
  " set runtimepath+=~/.vim/bundle/neobundle/vimshell.vim/doc
  call neobundle#rc(expand('$HOME/.vim/bundle/neobundle'))
endif
set runtimepath^="C:/vim74-kaoriya-win64/hoge"

"Status-Checking function to switch neocomplete (which requires lua) / neobundle.
function! s:meet_neocomplete_requirements()
  return has('lua') && (v:version > 703 || (v:version == 703 && has('patch885')))
endfunction
"NeoBundle
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'git://github.com/Shougo/vimfiler.git'
"NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Shougo/vimshell.git'
if s:meet_neocomplete_requirements()
  NeoBundle 'Shougo/neocomplete.git'
else
  NeoBundle 'Shougo/neocomplcache.git'
endif
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'git://github.com/vim-scripts/taglist.vim.git'
NeoBundle 'git://github.com/intuited/lh-vim-lib.git'
NeoBundle 'git://github.com/intuited/lh-vim-ut.git'
NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'git://github.com/vim-scripts/grep.vim.git'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'fuenor/qfixhowm'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/DirDiff.vim'
"NeoBundle 'taku-o/vim-toggle'
NeoBundle 'kana/vim-smartchr'
"NeoBundle 'vim-scripts/repeat.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/Align'
"NeoBundle 'vim-scripts/YankRing.vim'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'taku-o/vim-toggle'
NeoBundle 'thinca/vim-ref'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'chazy/cscope_maps'
"NeoBundle 'kokukuma/monday'
"NeoBundle 'yuroyoro/monday'
"NeoBundle 'nishigori/vim-sunday'
"NeoBundle 'yuroyoro/monday'
"Color Schemes
"Unite -auto-preview colorscheme
"NeoBundle 'w0ng/vim-hybrid'
"NeoBundle 'nanotech/jellybeans.vim'
"NeoBundle 'noahfrederick/Hemisu'
"NeoBundle 'vim-scripts/Lucius'
"NeoBundle 'jpo/vim-railscasts-theme'
"NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'vim-scripts/Wombat'
"NeoBundle 'itchyny/landscape.vim'
"NeoBundle 'Lokaltog/vim-distinguished'
"NeoBundle 'tpope/vim-vividchalk'
"NeoBundle 'vim-scripts/molokai'
"NeoBundle 'morhetz/gruvbox'
"NeoBundle 'vim-scripts/moria'
"NeoBundle 'vim-scripts/herald.vim'
"Unite Sources
NeoBundle 'Shougo/unite-outline'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'tyru/eskk.vim'
NeoBundle 'tyru/skkdict.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'haya14busa/vim-migemo'
"NeoBundle 'koron/cmigemo'
"Build vimproc automatically.
if has('win32') || has('win64')
  " NOT install vimproc via NeoBundle
  " because it is included in Kaoriya Vim
else
  NeoBundle 'Shougo/vimproc', {
        \ 'build' : {
        \     'windows' : 'make -f make_mingw64.mak',
        \     'cygwin' : 'make -f make_cygwin.mak',
        \     'mac' : 'make -f make_mac.mak',
        \     'unix' : 'make -f make_unix.mak',
        \    },
        \ }
endif
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""
"undofile setting
"""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32') || has('win64')
  let $VIM_BK_ROOT=$VIM
else
  let $VIM_BK_ROOT=$HOME
endif
let $VIM_BK='.vim_bk'
if !isdirectory($VIM_BK_ROOT.'/'.$VIM_BK)
  call mkdir($VIM_BK, $VIM_BK_ROOT)
endif
set undodir=$VIM_BK_ROOT/$VIM_BK
set undofile
"""""""""""""""""""""""""""""""""""""""""""""""""""
"grep.vim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32') || has('win64')
  let MY_GREP_PATH_ROOT='C:\MinGW\msys\1.0\bin'
  let Grep_Path=MY_GREP_PATH_ROOT.'\grep.exe'
  let Fgrep_Path=MY_GREP_PATH_ROOT.'\grep.exe -F'
  let Egrep_Path=MY_GREP_PATH_ROOT.'\grep.exe -E'
  let Grep_Find_Path=MY_GREP_PATH_ROOT.'\find.exe'
  let Grep_Xargs_Path=MY_GREP_PATH_ROOT.'\xargs.exe'
else
endif
" Specify the Quotation Character.
let Grep_Shell_Quote_Char=''''
" Specify the directory to be excluded by GREP.
let Grep_Skip_Dirs='.svn'
let Grep_Default_Filelist='*.c *.cpp *.h *.mk *.py *.java *.txt'
"""""""""""""""""""""""""""""""""""""""""""""""""""
"cscope settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  if has('win32') || has('win64')
       set csprg=C:/cscope/cscope.exe
       "let Cscope_Path="C:/cscope/cscope.exe"
       let Cscope_Path="C:\\cscope\\cscope.exe"
  else
       let Cscope_Path="/usr/bin/cscope"
       "set csprg=/usr/local/bin/cscope
  endif
  set csto=0
  set nocst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
  endif
  set csverb
endif
command! Cscope :call MyFunc_GenerateCscope(Cscope_Path)
func! MyFunc_GenerateCscope(cscope)
  "Create cscope.out file and connect to it.
  let l:current_dir = getcwd()
  let l:target_dir = input("Create cscope in which dir?: ", expand("%:p:h"), "file")
  if l:target_dir == ""
      return
  endif
  exe "cd " . l:target_dir
  echo "\r"
  set path&
  let l:addit_flag = input("Add other dir? [y/n]: ")
  if l:addit_flag == "y"
      let l:addit_dir = input("Additional search dir path?: ", expand("%:p:h"), "file")
      exe "!" . a:cscope . " -R -b -k -P " . l:target_dir . " -s ". l:addit_dir
      "Register header file path to "path" for Jump to header file from include statement.
      exec "set path+=" . l:target_dir . "/**"
  elseif l:addit_flag == "n"
      exe "!" . a:cscope . " -R -b -k -P " . l:target_dir
      let l:addit_dir = ""
      "Register header file path to "path" for Jump to header file from include statement.
      exec "set path+=" . l:target_dir . "/**," . l:addit_dir . "/**"
  else
      return
  endif
  echo "\r"
"    exe "!" . a:cscope . " -R -b -k"
"    exe "!" . a:cscope . " -R -b -k -P " . l:target_dir . " -s ". l:addit_dir
"    exe "!" . a:cscope . " -P " . l:target_dir
  exe "cd " . l:current_dir
  exe "cscope kill -1"
  if has('win32') || has('win64')
      exe "cscope add " . l:target_dir . "\\cscope.out " . l:target_dir
  else
      exe "cscope add " . l:target_dir . "/cscope.out " . l:target_dir
  endif
endfunc
nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""
"diffsplit settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
if &diff
"setup for diff mode
  set foldopen=all
else
"   setup for non-diff mode
  set foldopen&
endif
" Move to the next different point: "]c" 
" Move to the previous different point: "[c" 
"""""""""""""""""""""""""""""""""""""""""""""""""""
"MiniBufferExplorer settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"The width/height of miniBufExpl window is fixed.
let g:miniBufExplMaxSize = 1
let g:miniBufExplMapWindowNavVim = 1 "Move 'hjkl' in MiniBufExpl window
let g:miniBufExplSplitToEdge = 1
"let g:miniBufExplorerMoreThanOne=1
let g:miniBufExplorerMoreThanOne=100
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplSplitBelow=1
nnoremap <silent><Space>m. :MiniBufExplorer<CR>
nnoremap <silent><Space>mc. :CMiniBufExplorer<CR>
nnoremap <silent><Space>mu. :UMiniBufExplorer<CR>
"nnoremap <C-N> :MBEbn<CR>
"nnoremap <C-P> :MBEbp<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""
"VimFiler settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"disable safe mode
let g:vimfiler_safe_mode_by_default=0
"Change current directory to the currently opend directory by VimFiler
let g:vimfiler_enable_auto_cd=1
nnoremap <silent><Space>fh. :VimFilerSplit -horizontal<CR>
"nnoremap <silent> <Space>f. :execute "VimFilerExplorer " . expand("%:p:h")<CR>
nnoremap <silent> <Space>f. :call MyVimFiler_OpenVimFilerExplorer()<CR>
nnoremap <silent> <Space>fc. :VimFilerClose explorer<CR>
func! MyVimFiler_OpenVimFilerExplorer()
  execute "cd " . expand("%:p:h")
  execute "VimFilerExplorer"
endfunc
call vimfiler#set_execute_file('bmp,jpg,png,gif,pdf', 'open')
call vimfiler#set_execute_file('txt','gvim')
"call vimfiler#set_execute_file('txt','notepad')
"call vimfiler#set_execute_file('txt','xyzzy')
if has('win32') || has('win64')
  "call vimfiler#set_execute_file('jpg','C:\Program Files (x86)\Hamana20060619\Hamana.exe')
  call vimfiler#set_execute_file('jpg','C:\Program Files (x86)\IrfanView\i_view32.exe')
else
endif
"Modify the behavior of jumping to alternate-file with <C-^>
"After a file is opnend from VimFiler
"not want to jump back to vimfiler window
"but want to the previous file by <C-^>,
autocmd! FileType vimfiler
\ nmap <buffer> e 
\ :let g:alt_buf_stock = MyFunc_KeepAltBufWithVimFiler()<CR>
"Returns the previously opend file name to remember it
"when some files are opend from "vimfiler.
func! MyFunc_KeepAltBufWithVimFiler()
  let l:alt_buf_crnt = expand('#:p')
  exe "call vimfiler#mappings#do_switch_action(g:vimfiler_edit_action)"
  return l:alt_buf_crnt
endfunc
"If current buffer is opend from vimfiler,
"With <C-^>, previously opend buffer is opend.
nnoremap <C-^> :call MyFunc_SwitchToAltBuf()<CR>
func! MyFunc_SwitchToAltBuf()
  let l:alt_buf_head = split(expand('#'), ':')
  if l:alt_buf_head[0] == "vimfiler"
      exe "e ".g:alt_buf_stock
  else
      exe "e #"
  endif
endfunc
"call vimfiler#set_execute_file('jpg', 'hamana')
"call vimfiler#set_execute_file('JPG', 'hamana')
"call vimfiler#set_execute_file('exe', vimfiler_execute_system_associated)
"Utilize "Unite file" for file/directory searching with "/" command on VimFiler
"autocmd FileType vimfiler
"        \ nnoremap <buffer><silent>/
"        \ :<C-u>Unite file -default-action=vimfiler -start-insert<CR>
let g:vimfiler_force_overwrite_statusline = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""
"VimShell settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Space>sh :VimShellPop<CR>
nnoremap <Space>sv :VimShell -split<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Settings for neocomplete / neocomplcache (This settings are based on neocomplcache doc file)
"""""""""""""""""""""""""""""""""""""""""""""""""""
if s:meet_neocomplete_requirements()
  "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
  " Disable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  " Use smartcase.
  let g:neocomplete#enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

  " Define dictionary.
  let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
          \ }

  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
      let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()

  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
  endfunction
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplete#close_popup()
  inoremap <expr><C-e>  neocomplete#cancel_popup()
  " Close popup by <Space>.
  "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

  " For cursor moving in insert mode(Not recommended)
  "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
  "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
  "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
  "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
  " Or set this.
  "let g:neocomplete#enable_cursor_hold_i = 1
  " Or set this.
  "let g:neocomplete#enable_insert_char_pre = 1

  " AutoComplPop like behavior.
  "let g:neocomplete#enable_auto_select = 1

  " Shell like behavior(not recommended).
  "set completeopt+=longest
  "let g:neocomplete#enable_auto_select = 1
  "let g:neocomplete#disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  " Enable heavy omni completion.
  if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
  endif
  "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

  " For perlomni.vim setting.
  " https://github.com/c9s/perlomni.vim
  let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
else "s:meet_neocomplete_requirements()
  let g:neocomplcache_enable_at_startup = 1
  "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
  " Disable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplcache.
  let g:neocomplcache_enable_at_startup = 1
  " Use smartcase.
  let g:neocomplcache_enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplcache_min_syntax_length = 3
  let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
  " Enable heavy features.
  " Use camel case completion.
  "let g:neocomplcache_enable_camel_case_completion = 1
  " Use underbar completion.
  "let g:neocomplcache_enable_underbar_completion = 1
  " Define dictionary.
  let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
          \ }
  " Define keyword.
  if !exists('g:neocomplcache_keyword_patterns')
      let g:neocomplcache_keyword_patterns = {}
  endif
  let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplcache#undo_completion()
  inoremap <expr><C-l>     neocomplcache#complete_common_string()
  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplcache#smart_close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
  endfunction
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplcache#close_popup()
  inoremap <expr><C-e>  neocomplcache#cancel_popup()
  " Close popup by <Space>.
  "inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
  " For cursor moving in insert mode(Not recommended)
  "inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
  "inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
  "inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
  "inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
  " Or set this.
  "let g:neocomplcache_enable_cursor_hold_i = 1
  " Or set this.
  "let g:neocomplcache_enable_insert_char_pre = 1
  " AutoComplPop like behavior.
  "let g:neocomplcache_enable_auto_select = 1
  " Shell like behavior(not recommended).
  "set completeopt+=longest
  "let g:neocomplcache_enable_auto_select = 1
  "let g:neocomplcache_disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
  " Enable omni completion.
  augroup OmniCompletion
      autocmd!
      autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
      autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
      autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
      autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
      autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  augroup END
  " Enable heavy omni completion.
  if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
  endif
  let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
  " For perlomni.vim setting.
  " https://github.com/c9s/perlomni.vim
  let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
endif "s:meet_neocomplete_requirements()
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Settings neosnippet
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)
" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Unite settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Ignore case in search patterns (e.g. "A" and "a")
call unite#set_profile('default', 'ignorecase', 1)
call unite#set_profile('files', 'ignorecase', 1)
call unite#set_profile('bookmark', 'ignorecase', 1)
"Recognize the difference btw upper/lower cases if target string contains upper case
call unite#set_profile('default', 'smartcase', 1)
call unite#set_profile('files', 'smartcase', 1)
call unite#set_profile('bookmark', 'smartcase', 1)
"Open list of buffers which are opened in the current tab.
nnoremap <C-L><C-B> :<C-u>Unite buffer_tab<CR>
nnoremap <C-L><C-F> :<C-u>Unite file -buffer-name=files -start-insert<CR>
nnoremap <C-L><C-D> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <C-L><C-M> :<C-u>Unite bookmark -default-action=vimfiler<CR>
nnoremap <C-L><C-A> :<C-u>Unite file buffer file_mru -buffer-name=all -start-insert<CR>
let g:unite_source_history_yank_enable = 1
nnoremap <C-L><C-P> :<C-u>Unite history/yank<CR>
"nnoremap <C-L><C-L> :Unite line<CR>
"nnoremap <C-L><C-L> :call unite#start(['line'], {'source__direction' : 'all'})<CR>
"nnoremap <C-L><C-L> :call unite#start(['line'], {'source__direction' : 'backward'})<CR>
"nnoremap <C-L><C-L> :call unite#start(['line'], {'backward' : 'source__direction'})<CR>
"nnoremap <C-L><C-L> :call unite#start(['line'], {'source__direction' : 'forward'})<CR>
"nnoremap <silent><C-L><C-L> :call unite#start(['line'], {'source__direction' : ''})<CR>
nnoremap <silent><C-L><C-L> :<C-u>Unite line -start-insert<CR>
"Open recently used file list
nnoremap <silent><C-L><C-R> :<C-u>Unite file_mru<CR>
nnoremap <silent><C-L><C-O> :<C-u>Unite outline -start-insert<CR>
nnoremap <silent><C-L><C-H> :<C-u>Unite help -start-insert<CR>
nnoremap <silent><C-L><C-A> :<C-u>UniteResume my_grep<CR>
nnoremap <silent><C-L><C-Q> :<C-u>UniteClose my_grep<CR>
nnoremap <silent><C-L><C-T> :<C-u>Unite tab<CR>
nnoremap <silent><C-L><C-W> :<C-u>Unite window<CR>
nnoremap <silent><C-L><C-U><C-V> :<C-u>execute "VimFiler -split -horizontal " . expand("%:p:h")<CR>
nnoremap <silent><C-L><C-V> :<C-u>execute "VimFiler " . expand("%:p:h")<CR>
nnoremap <silent><C-L><C-N><C-V> :<C-u>execute "VimFiler -tab"<CR>
"nnoremap <C-L><C-N><C-V>
""\   :let tmp = expand("%:p:h")<CR>
"\   :let tmp = expand(".")<CR>
"\   :echo tmp<CR>
"\   :execute "VimFiler -tab"<CR>
""\   :execute "VimFiler -tab " . tmp<CR>
""\   :execute "VimFilerTab " . tmp<CR>
"nnoremap <C-L><C-U><C-V> :execute "VimFiler -split -horizontal directory:" . expand("%:p:h")<CR>
nnoremap <silent><C-L><C-J> :<C-u>Unite bookmark<CR>
"augroup UniteBookMark
"    autocmd!
"    autocmd FileType vimfiler nnoremap <silent><buffer><C-L><C-J> :<C-u>Unite bookmark<CR>
"augroup END
"nnoremap <silent><C-L><C-J><C-T> :<C-u>VimFiler -tab<CR>

"UniteBookmarkAdd
"Unite bookmark
"autocmd FileType vimfiler call unite#custom_default_action('source/bookmark/directory', 'vimfiler')
call unite#custom_default_action('source/bookmark/directory', 'vimfiler')
call unite#custom#source('bookmark', 'sorters', 'sorter_word')
"unite-grep settings
nnoremap <silent><C-L><C-S> :Unite -auto-preview -no-quit -buffer-name=my_grep my_grep<CR>
if has('win32') || has('win64')
    let AG_PATH ="C:/MinGW/msys/1.0/bin/ag.exe"
elseif has('mac')
    let AG_PATH ="/opt/local/bin/ag"
else
    let AG_PATH ="/usr/local/bin/ag"
endif
if executable('ag')
  "let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_command = AG_PATH
  let g:unite_source_grep_default_opts = '--nocolor --nogroup'
  "let g:unite_source_grep_default_opts = '--nocolor --nogroup -G "(\.c$|\.txt$)"'
  "let g:unite_source_grep_default_opts = '--nocolor --nogroup -G "(\.c$|\.h$|)"'
  "let g:unite_source_grep_default_opts = '--nocolor --nogroup -G "(\.py$|\.txt$|)"'
  "let g:unite_source_grep_default_opts = '--nocolor --nogroup -G "(\.py$|\.txt$|)"'
  "let g:my_ag_enabled = 1
else
  let g:unite_source_grep_command = Grep_Path
  let g:unite_source_grep_default_opts = '-R -n'
  "let g:my_ag_enabled = 0
endif
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 200
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""
"eskk.vim Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32') || has('win64')
"     \     'path': "C:/vim74-kaoriya-win64/.vim/skk_dict/SKK-JISYO.L",
  let g:eskk#large_dictionary = {
  \     'path': $VIM_HOME . "/.vim/skk_dict/SKK-JISYO.L",
  \     'sorted': 1,
  \     'encoding': 'euc-jp',
  \}
  let g:eskk#dictionary = {
  \     'path': $VIM_HOME . "/.vim/skk_dict/.my_skk-jisyo",
  \     'sorted': 0,
  \     'encoding': 'cp932',
  \}
else
endif
let g:eskk#enable_completion = 1
"let g:eskk#egg_like_newline = 1
let g:eskk#keep_state = 1
let g:eskk#dictionary_save_count = 1
let g:eskk#register_completed_word = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
"Qfixhawm settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Howm command key map
"let QFixHowm_Key = 'g'
"Howm command 2nd stroke key map
let QFixHowm_KeyB = '.'
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Taglist settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Place Taglist window at left side
let Tlist_Use_Right_Window = 1

"Set Taglist Window Width
let Tlist_WinWidth = 35

"Sho tags for the current buffer only
let Tlist_Show_One_File = 1

let Tlist_Exit_OnlyWindow = 1

let Tlist_Inc_Winwidth = 1


"let Tlist_WinWidth = 1

let Tlist_Compact_Format = 1

let Tlist_Close_On_Select = 0

"set title titlestring=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)

"noremap <C-T><C-T>  :TlistToggle<CR>
nnoremap <Space>t. :TlistToggle<CR>

"Update Taglist
noremap <C-T><C-U>  :TlistUpdate<CR>
nnoremap <Space>tu. :TlistUpdate<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""
"EasyMotion settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="'"
let g:EasyMotion_grouping=1
let g:EasyMotion_do_shade = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""
"SmartChar settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <expr> = MySmartChar_CharEq()
"autocmd! FileType vim inoremap <expr> = MySmartChar_CheckPrevWord() ? '=' : smartchr#loop('=')

"augroup SmartCharSetting
"    autocmd!
"    autocmd FileType *.c,*.cpp,*.h,*.py,*.mk,*.java inoremap <expr> = MySmartChar_CheckPrevWord() ? '=' : smartchr#loop(' = ', ' == ', '=')
"    "autocmd FileType c,cpp,h,py,mk,java inoremap <buffer> <expr> = MySmartChar_CheckPrevWord() ? '=' : smartchr#loop(' = ', ' == ', '=')
"augroup END
" Change the input behavior when '=' is input.
" NOTE: '\%#' means the cursor position
"       Refer to the help "pattern.txt" for the reference.
func! MySmartChar_CharEq()
  " '= '
  if search('=\s\%#', 'bcn')
      return smartchr#loop(' = ', '=', ' == ')
  " > < + - * / & | ! 
  elseif search('\(>\|<\|+\|-\|*\|/\|&\||\|!\)\%#', 'bcn')
      return '='
  " <Space>
  elseif search('\s\%#', 'bcn') 
      return '= '
  else
      return smartchr#loop(' = ', '=', ' == ')
  endif
endfunc
"inoremap <buffer> <expr> , smartchr#loop(',', '->', '<-')
"inoremap buffer> <expr> + smartchr#one_of('+', '+=', '++')
"inoremap <buffer> <expr> - smartchr#one_of('-', '-=', '--')
"inoremap <buffer> <expr> < smartchr#one_of('<', '<=', '<<')
"inoremap <buffer> <expr> > smartchr#one_of('>', '>=', '>>')
"""""""""""""""""""""""""""""""""""""""""""""""""""
"SmartChar settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"set IndentGuidesEnable
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 1
let g:indent_guides_space_guides = 1
let g:indent_guides_guide_size = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Matchit settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_words = '<if>:<end if>'
let b:match_words = '<#if>:<#elif>:<#else>:<#endif>'
let b:match_words = '<function!>:<endfunction>'
"""""""""""""""""""""""""""""""""""""""""""""""""""
"QuickRun settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:quickrun_config = {
\   "_" : {
\       "runner" : "vimproc",
\       "runner/vimproc/updatetime" : 40,
\       "outputter/buffer/split" : ":botright 8sp"
\   }
\}
"Set buffer local command line args. (After that you can run script by '\r' with these arguments)
nnoremap <Bslash>c
\           :cd %:p:h<CR>
\           :let b:quickrun_config={'args':''}
nnoremap <Space>r.
\            :QuickRun -args ""
"""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-ref settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ref_source_webdict_sites = {
\   'gt': 'http://translate.google.co.jp/#en/ja/%s',
\}
"\   'alc': 'http://eow.alc.co.jp/search?q=%s&ref=sa'
"\   'alc': 'http://www.alc.co.jp/%s'
"\   'url': 'www.alc.co.jp',
""""""""""""""""""""""""""""""""""""""""""""""""""""
""Open Brouser settings
""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap ,bw :execute "OpenBrowserSmartSearch " . expand('<cword>')<CR>
"nnoremap ,ba :execute "OpenBrowser " . "http://eow.alc.co.jp/search?q=" . expand('<cword>')<CR>
""nmap ,gw <Plug>(openbrowser-smart-search)
""nmap ,gs <Plug>(openbrowser-search)
""map <F9> <Plug>(openbrowser-search)
""nmap ,gs :<C-u>call openbrowser#_keymapping_smart_search('n')<CR>
""nnoremap ,gs :<C-u>call openbrowser#_keymapping_smart_search('n')<CR>
""nmap ,gs :<C-u>call
""nnoremap ,gs :pwd<CR>
"nmap <F9> :<C-u>call openbrowser#_keymapping_smart_search('n')<CR>
""nnoremap <silent> <Plug>(openbrowser-smart-search) :<C-u>call openbrowser#_keymapping_smart_search('n')<CR>
"nmap gx <Plug>(openbrowser-smart-search)
""""""""""""""""""""""""""""""""""""""""""""""""""""
"Lua settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:Lua_Compiler = "luac.exe"
"let g:Lua_Interpreter = "lua.exe"
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Pyclewn settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <S-b><S-b> :execute "Cbreak " . line('.')<CR>
"nnoremap <S-b><S-c> :execute "Cclear " . line('.')<CR>
""nnoremap <S-b>
""\   :let breakpoint_line = line('.')<CR>
""\   :execute "Cbreak " . breakpoint_line<CR>
"nnoremap <F5> :<C-U>Crun<CR>
"nnoremap <S-F5> :<C-U>Cquit<CR>
"nnoremap <F6> :<C-U>Ccontinue<CR>
"nnoremap <F7> :<C-U>execute "Cdbgvar " . expand('<cword>')<CR>
"nnoremap <S-F7> :<C-U>execute "Cdelvar " . expand('<cword>')<CR>
"nnoremap <F10> :<C-U>Cnext<CR>
"nnoremap <F11> :<C-U>Cstep<CR>
"nnoremap <F9> :<C-U>MyFuncInitDebug<CR>
"command! MyFuncInitDebug :call MyFunc_InitDebug()
"function! MyFunc_InitDebug()
"    execute "cd " . expand("%:p:h")
"    let l:current_dir = getcwd()
"    let l:target_src = input("Which executable file do you want to debug?: ", expand("%:t"))
"    let l:target_exe = expand("%:t:r") . ".exe"
""    echo "\r"
""    echo l:target_src
""    echo "\r"
""    echo l:target_exe
"    echo "\r"
"    execute "!gcc -g " . l:target_src . " -o " . l:target_exe
"    execute "Cfile " . l:target_exe
"endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Status Line settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%{winnr('$')>1?'[W:'.winnr().'/'.winnr('$'):''}
set statusline+=%{']'}
set statusline+=%<
set statusline+=\ "Blanc Space
set statusline+=%F "File Name
"set statusline+=%t "File Name
set statusline+=%=
set statusline+=%c,
set statusline+=\ "Blanc Space
set statusline+=%1l "Current Line Number
set statusline+=/   "Slash
set statusline+=%L  "Total Line Number
"""""""""""""""""""""""""""""""""""""""""""""""""""
"User Defined Snippets settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neosnippet#snippets_directory=$VIM_HOME."/.vim/mysnippets"
func! ReturnLineNum()
  echo line('.')
  return line('.')
endfunc
command! ReturnLineNum :call num = ReturnLineNum()
"""""""""""""""""""""""""""""""""""""""""""""""""""
"User Defined settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Toggle FullScreen <--> Non-FullScreen
noremap <F1> :MyFuncToggleFullScreen<CR>
let my_fullscreen_state=0
func! MyFunc_ToggleFullScreen(state)
  if a:state == 0
      execute "simalt ~x"
      return 1
  else
      execute "simalt ~r"
      return 0
  endif
endfunc
command! MyFuncToggleFullScreen :let my_fullscreen_state = MyFunc_ToggleFullScreen(my_fullscreen_state)
"Copy all to clipboard.
nnoremap <Space>a. :%y+<CR>
"nnoremap <F12> :execute "!ctags -R " . expand("%:p:h")
"nnoremap <F12> :echo expand("%:p:h")
"nnoremap <F12> :let my_current_dir = expand("%:p:h") \|
"\               execute "!ctags -R " . my_current_dir
"\               echo my_current_dir
"nnoremap <F12> ma ggVGY `a
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Create ctags from vim
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Specify ctags path.
if has('win32') || has('win64')
    let Ctags_Path = "C:\\ctags58\\ctags.exe"
else
    let Ctags_Path = "/usr/bin/ctags"
endif
command! Ctags :call MyFunc_GenerateCtags(Ctags_Path)
func! MyFunc_GenerateCtags(ctags)
  let l:current_dir = getcwd()
  let l:target_dir = input("Create ctags in which dir?: ", expand("%:p:h"))
  exe "cd " . l:target_dir
  echo "\r"
  exe "silent! !" . a:ctags . " -R ."
  exe "cd " . l:current_dir
endfunc
nnoremap <C-Q><C-Q><C-K> <C-A>
nnoremap <C-Q><C-Q><C-J> <C-X>

function! MyFunc_CompareValue(lhs, rhs)
    return a:lhs - a:rhs
endfunction

function! MyFunc_SearchTargetAndSetToggledWord(toggle_comb_list, mode_inc_dec)
  let l:is_found = 0 " 0:Target not found, 1:Target found
  let l:ret = [l:is_found, 0, 0, 0] "[is_found, target_word, toggled_word, column_position_of_target_word]
  let l:found_list = [] "[[clumn_position_of_target_word, target_word, toggled_word], ....]
  let l:col_list = []

  "Move cursor to include the word under cursor to search region.
  let l:cursor_pos_current = getpos('.')
  let l:cursor_pos_tmp = l:cursor_pos_current[:]

  "Move cursor back with "normal b" to include the word under cursor to for search area.
  execute "normal b"
  let l:cursor_pos_b = getpos('.')
  "Prevent cursor from going back to the above line with "normal b" when cursor pos is the head of the current line.
  if l:cursor_pos_tmp[1] != l:cursor_pos_b[1]
    call setpos('.', l:cursor_pos_current)
  endif

  for l:target_comb in a:toggle_comb_list
    let l:index = 0
    for l:target in l:target_comb
      let l:toggled_word = l:index+1 < len(target_comb) ? l:target_comb[l:index+1] : l:target_comb[0]

      "Exclude the word which includes the target words. e.g.) "truely", "is_true"
      let [l:lnum, l:col] = searchpos('\<'.l:target.'\>', 'cen', line('.'))
      "Found target word located ahead of cursor.
      if l:col >= l:cursor_pos_current[2]
        call add(l:found_list, [l:col, l:target, l:toggled_word])
        call add(l:col_list, l:col)
      "If target word is found but its column value is less than cursor pos, earch again from the cursor position.
      "e.g.) Thus it's possible to find the target "true" whose column value is bigger than cursor's one.
      "       (Cursor position is *)
      "        true  *         true
      elseif l:col != 0
        call setpos('.', l:cursor_pos_current)
 
        "Exclude the word which includes the target words. e.g.) "truely", "is_true"
        let [l:lnum, l:col] = searchpos('\<'.l:target.'\>', 'cen', line('.'))
        if l:col >= l:cursor_pos_current[2]
            call add(l:found_list, [l:col, l:target, l:toggled_word])
            call add(l:col_list, l:col)
        endif
      else
        " Do Nothing.
      endif
      let l:index += 1
    endfor
  endfor

  if l:col_list != []
    let l:col_list = sort(l:col_list, "MyFunc_CompareValue")
    "Which forward target word is the nearest one from cursor?
    for l:elem in l:found_list
      if l:elem[0] == l:col_list[0]
        let l:is_found = 1
        "return [l:is_found, l:elem[1], l:elem[2], l:elem[0]]
        let l:ret = [l:is_found, l:elem[1], l:elem[2], l:elem[0]]
      endif
    endfor
  endif

  call setpos('.', l:cursor_pos_current)
  "Search numbers
  let l:val_pos = searchpos('\d', 'cen', line('.'))
  if l:val_pos[1] != 0
    if l:ret[3] == 0 || l:val_pos[1] < l:ret[3]
      let l:is_found = 0
      let l:ret[0] = l:is_found
      if a:mode_inc_dec == '+'
        "execute "normal \<C-A>"
        "execute "normal \<Space>\<Space>\<C-K>"
        execute "normal \<C-Q>\<C-Q>\<C-K>"
      elseif a:mode_inc_dec == '-'
        "execute "normal \<C-X>"
        "execute "normal \<Space>\<Space>\<C-J>"
        execute "normal \<C-Q>\<C-Q>\<C-J>"
      else
        "Do Nothing.
      endif
    endif
  else
    "Do Nothing
  endif

  "echo "l:is_found = " . l:is_found
  "return [l:is_found, 0, 0, 0]
  return l:ret
endfunction

func! MyFunc_ToggleWords(toggle_comb_list, mode_inc_dec)
  let l:current_cursor_pos = getpos('.')
  "let l:ret = MyFunc_SearchTargetAndSetToggledWord(a:toggle_comb_list)
  let l:ret = MyFunc_SearchTargetAndSetToggledWord(a:toggle_comb_list, a:mode_inc_dec)
  if l:ret[0] != 0
    let l:target_pos = l:current_cursor_pos[:]
    let l:target_pos[2] = l:ret[3]
    let l:tmp_pos = l:target_pos[:]
    call setpos('.', l:tmp_pos)
    execute "normal ciw" . l:ret[2]
  else
    call setpos('.', l:current_cursor_pos)
  endif
  "echo "[target, toggled] = [" . l:ret[1] . ", " . l:ret[2]
  return l:ret[0]
endfunc

"Toggle combination which is consisits of the words including upper case
"should be listed before the combination which is consists of the words which
"is the same name but consists of only lower case
let g:my_toggle_comb_list = [
  \ ['Start', 'End'],
  \ ['True', 'False'],
  \ ['true', 'false'],
  \ ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
  \ ['hoge', 'geho']
\]
"    \ ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'],
nnoremap <C-A> :<C-U>call MyFunc_ToggleWords(g:my_toggle_comb_list, '+')<CR>
nnoremap <C-X> :<C-U>call MyFunc_ToggleWords(g:my_toggle_comb_list, '-')<CR>
let FILE_PATH='C:/Program\ Files\ (x86)/xyzzy'
let BROWSER_PATH='C:/PF/Opera/opera.exe'
"nnoremap <F12> :<C-u>call system('gvim -c VimFilerDouble')<CR>
func! MyFunc_TmpFunc()
  execute ";"
  "execute ':<C-R>"'
endfunc
if has('win32') || has('win64')
    let help_path = 'C:/vim74-kaoriya-win64/vim74/doc'
else
endif
let s:source_helplist = {
\   'name': 'helplist',
\ }
"\   'default_kind' : 'openable',
let help_path = "C:/vim74-kaoriya-win64/plugins/vimdoc-ja/doc/"
"nnoremap <F11> :<C-u>echo globpath(g:help_path, "*.jax")
function! MyFunc_EchoHelpJax()
  for l:e in split(globpath(g:help_path, "*.jax"), "\n")
    echo l:e
  endfor
endfunction
"let s:source_helplist.default_action = {'file': 'above'}
function! s:source_helplist.gather_candidates(args, context)
  let l:help_list = split(globpath(g:help_path, "*.jax"), "\n")
  return map(l:help_list, '{
  \   "word": fnamemodify(v:val, ":t"),
  \   "source": "helplist",
  \   "kind": "file",
  \   "action__path": v:val,
  \ }')
endfunction
"  \   "word": v:val,
"      \'[fnamemodify(v:val, ":t:r"), fnamemodify(v:val, ":p")]'), 'v:val[0]'),
"  \   "word": split(v:val, "\"),
"  \   "default_action": {"file": "above"},
"  \   "default_action": {"helplist": "above"},
"  \   "default_action": "above",
"  \   "action": "open",
"  \   "action__path": "C:/vim74-kaoriya-win64/plugins/vimdoc-ja/doc/develop.jax",
"  \   "kind": "openable",
"  \   "word": printf(format, v:key + 1, v:val),
"  \   "action__path": g:help_path,
"  \   "word": printf(format, v:key + 1, v:val),
"  \   "word": "hoge",
"  \   "source": "help",
"  \   "kind": "openable",
"  \   "action__path": path,
"  \   "action__line": v:key + 1,
call unite#define_source(s:source_helplist)
unlet s:source_helplist
"nnoremap <silent><C-L><C-H> :<C-u>Unite helplist<CR>
let s:source_uhh_nyaa = {
\   'name': 'uhh-nyaa',
\   'default_action': 'insert',
\ }
function! s:source_uhh_nyaa.gather_candidates(args, context)
  let result = [
  \   "（」・ω・）」うー！（／・ω・）／にゃー！",
  \   "（」・ω・）」うー！（／・ω・）／にゃー！",
  \   "Are you known?",
  \ ]
  return map(result, "{ 'word': v:val, 'action__common': 'insert' }")
endfunction
call unite#define_source(s:source_uhh_nyaa)
unlet s:source_uhh_nyaa
let s:unite_source = {
\   'name': 'lines',
\ }
function! s:unite_source.gather_candidates(args, context)
  let lines = getbufline('#', 1, '$')
  let path = expand('#:p')
  let format = '%' . strlen(len(lines)) . 'd: %s'
  return map(lines, '{
  \   "word": printf(format, v:key + 1, v:val),
  \   "source": "lines",
  \   "kind": "jump_list",
  \   "action__path": path,
  \   "action__line": v:key + 1,
  \ }')
endfunction
call unite#define_source(s:unite_source)
unlet s:unite_source
"""""""""""""""""""""""""""""""""""""""""""""""""""
"ag.exe (the Silver Searcher) settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"let AG_DEFAULT_FILELIST='c cpp h mk py java txt'
let AG_DEFAULT_FILELIST='\.c \.cpp \.h \.mk \.py \.java \.txt'
"ToDo: Make it possible to search the word "command!"
command! Agregrep :call MyFunc_RunAg(AG_PATH, AG_DEFAULT_FILELIST)
function! MyFunc_RunAg(ag, file_list)
  let l:current_dir = getcwd()
  let l:target_word = input("What is the target word?: ", expand("<cword>"))
  if l:target_word == ""
    return
  endif
  let l:target_dir = input("Search recursively from which dir?: ", expand("%:p:h"), "file")
  if l:target_dir == ""
    return
  endif
  let l:target_pattern = input("What is the matching pattern?: ", a:file_list)
  if l:target_pattern == ""
    return
  endif
  let l:options = '-G "(' . substitute(l:target_pattern, ' ', '$|', 'g') . '$)"'
  let l:ag_cmd = a:ag . " " . l:options . " -i " . l:target_word . " " . l:target_dir
  echo "\r"
  let l:cmd_output = system(ag_cmd)
  execute "cd " . l:target_dir
  let l:tmpfile = tempname()
  execute "redir! > " . l:tmpfile
    silent echon "Search results for pattern: " . l:target_word . "\n"
    silent echo l:cmd_output
  redir END
  execute "cgetfile " . l:tmpfile
  botright copen
  execute "cd " . l:current_dir
  call delete(l:tmpfile)
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""
"DirDiff settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"set nofoldenable
"set foldcolumn = 0
command! Ddiff :call MyFunc_DirDiff()
func! MyFunc_DirDiff()
  let l:current_dir = getcwd()
  let l:fst_dir = input("First dir?: ", expand("%:p:h"), "file")
  if l:fst_dir == ""
    return
  endif
  echo "\r"
  let l:snd_dir = input("Second dir?: ", l:fst_dir, "file")
  if l:snd_dir == ""
    return
  endif
  echo "\r"
  exe "DirDiff " . l:fst_dir . " ". l:snd_dir
endfunc
autocmd! FileType vimfiler command! Ddiff :call MyFunc_DirDiffWithVimFiler()
func! MyFunc_DirDiffWithVimFiler()
  exe "wincmd w"
  let l:marked_files = vimfiler#get_marked_files()
  if len(l:marked_files) < 1
    "echo "Select 2 directries or 2 files."
    call MyFunc_DirDiff()
    return
  endif
  let l:item_fst = l:marked_files[0]['action__path']
  exe "wincmd w"
  let l:marked_files = vimfiler#get_marked_files()
  if len(l:marked_files) < 1
    "echo "Select 2 directries or 2 files."
    call MyFunc_DirDiff()
    return
  endif
  let l:item_sec = l:marked_files[0]['action__path']
  exe "normal \<Plug>(vimfiler_close)"
  exe "DirDiff " . l:item_fst . " ". l:item_sec
endfunc
"autocmd! WinEnter * if &diff setlocal set nofoldenable
"autocmd! WinEnter,WinLeave * :call MyFunc_Test()
"func! MyFunc_Test()
"    if &diff
"        setlocal nofoldenable
"    else
"        setlocal foldenable
"    endif
"    "exe ":intro "
"endfunc

"set list
"set nolist

"set list
"set nolist
"
"
"
"
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""
"unite-grep for ag (Silver Searcher)
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Following codes are modified based on grep.vim

" Variables
" Set from grepprg.
call unite#util#set_default(
    \ 'g:unite_source_grep_command', 'grep')
call unite#util#set_default(
    \ 'g:unite_source_grep_default_opts', '-inH')

call unite#util#set_default('g:unite_source_grep_recursive_opt', '-r')
call unite#util#set_default('g:unite_source_grep_max_candidates', 100)
call unite#util#set_default('g:unite_source_grep_search_word_highlight', 'Search')
call unite#util#set_default('g:unite_source_grep_ignore_pattern',
    \'\~$\|\.\%(o\|exe\|dll\|bak\|sw[po]\)$\|'.
    \'\%(^\|/\)\.\%(hg\|git\|bzr\|svn\)\%($\|/\)\|'.
    \'\%(^\|/\)tags\%(-\a*\)\?$')
call unite#util#set_default('g:unite_source_grep_encoding', 'char')


"function! unite#sources#grep#define()
"  return s:source
"endfunction

let s:source_my_grep = {
  \ 'name': 'my_grep',
  \ 'max_candidates': g:unite_source_grep_max_candidates,
  \ 'hooks' : {},
  \ 'syntax' : 'uniteSource__Grep',
  \ 'matchers' : 'matcher_regexp',
  \ 'ignore_pattern' : g:unite_source_grep_ignore_pattern,
  \ 'variables' : {
  \      'command' : g:unite_source_grep_command,
  \      'default_opts' : g:unite_source_grep_default_opts,
  \      'recursive_opt' : g:unite_source_grep_recursive_opt,
  \      'search_word_highlight' : g:unite_source_grep_search_word_highlight,
  \   },
  \ }

call unite#define_source(s:source_my_grep)

function! s:source_my_grep.hooks.on_init(args, context)
  if !unite#util#has_vimproc()
    call unite#print_source_error(
          \ 'vimproc is not installed.', s:source_my_grep.name)
    return
  endif

  if type(get(a:args, 0, '')) == type([])
    let a:context.source__target = a:args[0]
    let targets = a:context.source__target
  else
    let default = get(a:args, 0, '')

    if default == ''
      "let default = '.'
      let default = expand("%:p:h")
    endif

    if type(get(a:args, 0, '')) == type('')
          \ && get(a:args, 0, '') == ''
          \ && a:context.input == ''
      let target = unite#util#substitute_path_separator(
            \ unite#util#input('Target Dir?: ', default, 'file'))
    else
      let target = default
    endif

    if target == '%' || target == '#'
      let target = unite#util#escape_file_searching(bufname(target))
    elseif target ==# '$buffers'
      let target = join(map(filter(range(1, bufnr('$')),
            \ 'buflisted(v:val) && filereadable(bufname(v:val))'),
            \ 'unite#util#escape_file_searching(bufname(v:val))'))
    elseif target == '**'
      " Optimized.
      let target = '.'
    else
      " Escape filename.
      let target = escape(target, ' ')
    endif

    let a:context.source__target = [target]

    let targets = map(filter(split(target), 'v:val !~ "^-"'),
          \ 'substitute(v:val, "\\*\\+$", "", "")')
  endif

  let a:context.source__extra_opts = get(a:args, 1, '')

  let l:file_types = 'c h cpp mk java txt vim'
  let l:file_types = unite#util#input('FileType: ', file_types)
  "Removr unnecessary space ' ' at the end of line, if it exists.
  let l:file_types = substitute(l:file_types, '\s$', '', 'g')
  if executable('ag')
    let l:file_types = ' -G "(\.' . substitute(l:file_types, ' ', '$|\\.', 'g') . '$)"'
    let variables = unite#get_source_variables(a:context)
    let variables.default_opts = variables.default_opts . l:file_types
  else "grep(MINGW)
    if l:file_types != ''
      let l:file_types = ' --include=*.' . substitute(l:file_types, ' ', ' --include=*.', 'g')
      let variables = unite#get_source_variables(a:context)
      let variables.default_opts = variables.default_opts . l:file_types
    endif
  endif
"  echo "\r"
"  echon variables.default_opts

  let l:dflt_ptn = expand('<cword>')
  let a:context.source__input = get(a:args, 2, a:context.input)
  if a:context.source__input == ''
    "let a:context.source__input = unite#util#input('Pattern: ')
    let a:context.source__input = unite#util#input('Pattern: ', dflt_ptn)
  endif

  let a:context.source__directory =
        \ (len(targets) == 1) ?
        \ unite#util#substitute_path_separator(
        \  unite#util#expand(targets[0])) : ''

  let a:context.source__ssh_path = ''
  if exists('b:vimfiler') &&
        \ exists('*vimfiler#get_current_vimfiler')
    if !empty(b:vimfiler)
      let vimfiler = b:vimfiler
    else
      let vimfiler = vimfiler#get_current_vimfiler()
    endif

    if get(vimfiler, 'source', '') ==# 'ssh'
      let [hostname, port, path] =
            \ unite#sources#ssh#parse_path(
            \  vimfiler.source.':'.vimfiler.current_dir)
      let a:context.source__ssh_path =
            \ printf('%s://%s:%s/', vimfiler.source, hostname, port)

      call map(a:context.source__target,
            \ "substitute(v:val, 'ssh://', '', '')")
    endif
  endif
endfunction
function! s:source_my_grep.hooks.on_syntax(args, context)
  if !unite#util#has_vimproc()
    return
  endif

  syntax case ignore
  syntax region uniteSource__GrepLine
        \ start=' ' end='$'
        \ containedin=uniteSource__Grep
  syntax match uniteSource__GrepFile /^[^:]*/ contained
        \ containedin=uniteSource__GrepLine
        \ nextgroup=uniteSource__GrepSeparator
  syntax match uniteSource__GrepSeparator /:/ contained
        \ containedin=uniteSource__GrepLine
        \ nextgroup=uniteSource__GrepLineNr
  syntax match uniteSource__GrepLineNr /\d\+\ze:/ contained
        \ containedin=uniteSource__GrepLine
        \ nextgroup=uniteSource__GrepPattern
  execute 'syntax match uniteSource__GrepPattern /'
        \ . substitute(a:context.source__input, '\([/\\]\)', '\\\1', 'g')
        \ . '/ contained containedin=uniteSource__GrepLine'
  highlight default link uniteSource__GrepFile Directory
  highlight default link uniteSource__GrepLineNr LineNR
  execute 'highlight default link uniteSource__GrepPattern'
        \ unite#get_source_variables(a:context).search_word_highlight
endfunction
function! s:source_my_grep.hooks.on_close(args, context)
  if has_key(a:context, 'source__proc')
    call a:context.source__proc.kill()
  endif
endfunction
function! s:source_my_grep.hooks.on_post_filter(args, context)
  for candidate in a:context.candidates
    let candidate.kind = [((a:context.source__ssh_path != '') ?
          \ 'file/ssh' : 'file'), 'jump_list']
    let candidate.action__directory =
          \ unite#util#path2directory(candidate.action__path)
    let candidate.action__col_pattern = a:context.source__input
    let candidate.is_multiline = 1
  endfor
endfunction

function! s:source_my_grep.gather_candidates(args, context)
  let variables = unite#get_source_variables(a:context)
  if !executable(variables.command)
    call unite#print_source_message(printf(
          \ 'command "%s" is not executable.',
          \    variables.command), s:source_my_grep.name)
    let a:context.is_async = 0
    return []
  endif

  if !unite#util#has_vimproc()
    call unite#print_source_message(
          \ 'vimproc plugin is not installed.', self.name)
    let a:context.is_async = 0
    return []
  endif

  if empty(a:context.source__target)
        \ || a:context.source__input == ''
    call unite#print_source_message('Canceled.', s:source_my_grep.name)
    let a:context.is_async = 0
    return []
  endif

  if a:context.is_redraw
    let a:context.is_async = 1
  endif

  let cmdline = printf('%s %s %s %s %s %s',
    \   unite#util#substitute_path_separator(variables.command),
    \   variables.default_opts,
    \   variables.recursive_opt,
    \   a:context.source__extra_opts,
    \   string(a:context.source__input),
    \   join(map(a:context.source__target,
    \           "substitute(v:val, '/$', '', '')")),
    \)
  if a:context.source__ssh_path != ''
    " Use ssh command.
    let [hostname, port, path] =
          \ unite#sources#ssh#parse_path(a:context.source__ssh_path)
    let cmdline = substitute(substitute(
          \ g:unite_kind_file_ssh_command . ' ' . cmdline,
          \   '\<HOSTNAME\>', hostname, 'g'), '\<PORT\>', port, 'g')
  endif

  call unite#print_source_message('Command-line: ' . cmdline, s:source_my_grep.name)

  let save_term = $TERM
  try
    " Disable colors.
    let $TERM = 'dumb'

    let a:context.source__proc = vimproc#plineopen3(
          \ vimproc#util#iconv(cmdline, &encoding, 'char'), 1)
  finally
    let $TERM = save_term
  endtry

  return self.async_gather_candidates(a:args, a:context)
endfunction

function! s:source_my_grep.async_gather_candidates(args, context)
  let variables = unite#get_source_variables(a:context)

  if !has_key(a:context, 'source__proc')
    let a:context.is_async = 0
    call unite#print_source_message('Completed.', s:source_my_grep.name)
    return []
  endif

  let stderr = a:context.source__proc.stderr
  if !stderr.eof
    " Print error.
    let errors = filter(stderr.read_lines(-1, 100),
          \ "v:val !~ '^\\s*$'")
    if !empty(errors)
      call unite#print_source_error(errors, s:source_my_grep.name)
    endif
  endif

  let stdout = a:context.source__proc.stdout
  if stdout.eof
    " Disable async.
    let a:context.is_async = 0
    call unite#print_source_message('Completed.', s:source_my_grep.name)

    call a:context.source__proc.waitpid()
  endif

  let candidates = map(stdout.read_lines(-1, 100),
          \ "unite#util#iconv(v:val, g:unite_source_grep_encoding, &encoding)")
  if variables.default_opts =~ '^-[^-]*l'
        \ || a:context.source__extra_opts =~ '^-[^-]*l'
    let candidates = map(filter(candidates,
          \ 'v:val != ""'),
          \ '[v:val, [v:val[2:], 0]]')
  else
    let candidates = map(filter(candidates,
          \  'v:val =~ "^.\\+:.\\+$"'),
          \ '[v:val, split(v:val[2:], ":", 1)]')
  endif

  if a:context.source__ssh_path != ''
    " Use ssh command.
    let [hostname, port, path] = unite#sources#ssh#parse_path(
          \     a:context.source__ssh_path)
  endif

  let _ = []
  for candidate in candidates
    if len(candidate[1]) <= 1 || candidate[1][1] !~ '^\d\+$'
      let dict = {
            \   'action__path' : a:context.source__target[0],
            \ }
      if len(candidate[1]) <= 1
        let dict.action__line = candidate[0][:1][0]
        let dict.action__text = candidate[1][0]
      else
        let dict.action__line = candidate[0][:1].candidate[1][0]
        let dict.action__text = join(candidate[1][1:], ':')
      endif
    else
      let dict = {
            \   'action__path' : candidate[0][:1].candidate[1][0],
            \   'action__line' : candidate[1][1],
            \   'action__text' : join(candidate[1][2:], ':'),
            \ }
    endif

    if a:context.source__ssh_path != ''
      let dict.action__path =
            \ a:context.source__ssh_path . dict.action__path
    else
      let dict.action__path =
            \ unite#util#substitute_path_separator(
            \   fnamemodify(dict.action__path, ':p'))
    endif

    let dict.word = printf('%s:%s:%s',
          \  unite#util#substitute_path_separator(
          \     fnamemodify(dict.action__path, ':.')),
          \ dict.action__line, dict.action__text)

    call add(_, dict)
  endfor

  return _
endfunction

function! s:source_my_grep.complete(args, context, arglead, cmdline, cursorpos)
  return ['%', '#', '$buffers'] + unite#sources#file#complete_directory(
        \ a:args, a:context, a:arglead, a:cmdline, a:cursorpos)
endfunction

"unlet s:source

" vim: foldmethod=marker

command! Mygrep :Unite my_grep

"Memo: How to convert file formats on Vim
"http://advweb.seesaa.net/article/3074705.html
"If opend file occurs MOJIBAKE
":e ++enc=utf-8
":e ++enc=euc-jp
":e ++enc=shift_jis

