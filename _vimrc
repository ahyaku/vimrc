"Auto encode detection.
"set fileencodings=utf-8,iso-2022jp,cp932,sjis,euc-jp
set fileencodings=utf-8,iso-2022jp,sjis,euc-jp
set fileformats=unix,dos
"Enable filetype option.
filetype off
filetype on
"Change Tab Switch
if v:version>=700
  nnoremap <C-Tab>   gt
  nnoremap <C-S-Tab> gT
endif
nnoremap <C-N> gt
nnoremap <C-P> gT
nnoremap <Space>th :tabfirst<CR>
nnoremap <Space>tl :tablast<CR>
set t_Co=256
"Color Setting
colorscheme desert
"colorscheme evening
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
"Indent Setting [NOTE: check filetype with ":set filetype"]
autocmd! FileType sh,vim,javascript,json,html setlocal tabstop=2 softtabstop=0 shiftwidth=2
autocmd! FileType hs setlocal tabstop=4 softtabstop=0 shiftwidth=4
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
nnoremap <silent> <S-Up>    :wincmd k<CR>
nnoremap <silent> <S-Down>  :wincmd j<CR>
"Move cursor left when ', ", [, {, ( are inserted.
inoremap '' ''<Left>
inoremap "" ""<Left>
inoremap [] []<Left>
inoremap {} {}<Left>
inoremap () ()<Left>
inoremap <> <><Left>
inoremap `` ``<Left>
nnoremap <F4> :Regrep
nnoremap <C-S> :Regrep
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
"Disable "IM ON" when switch to Normal Mode.
inoremap <silent><ESC> <ESC>:set iminsert=0<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Path setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent off
set runtimepath&
if has('win32') || has('win64')
  let $VIM_HOME="C:/vim74-kaoriya-win64"
  set runtimepath^=$VIM_HOME
  set runtimepath^=$VIM_HOME/.vim
  set runtimepath^=$VIM_HOME/plugins/vimproc
else
  "For Haskell dev environment
  set runtimepath+=~/.cabal/bin/
  set runtimepath+=~/.cabal/
endif
let $PATH_DEIN=substitute(expand($VIM), "\\", "/", "g")."/.vim/dein/repos/github.com/Shougo/dein.vim"
set runtimepath+=$PATH_DEIN

"Status-Checking function to switch neocomplete (which requires lua) / neobundle.
function! s:meet_neocomplete_requirements()
  return has('lua') && (v:version > 703 || (v:version == 703 && has('patch885')))
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""
"dein.vim setting
"""""""""""""""""""""""""""""""""""""""""""""""""""
"let $PATH_HOGE=substitute(expand($VIM), "\\", "/", "g")."/hoge/fuga"
"if !isdirectory(expand($PATH_HOGE))
"  execute "call mkdir(\"".substitute(expand($VIM), "\\", "/", "g")."/hoge/fuga\",\"p\")"
"endif
if !isdirectory(expand($PATH_DEIN))
  execute "call mkdir(\"".substitute(expand($PATH_DEIN), "\\", "\\\\\\\\", "g")."\",\"p\")"
  execute '!git clone https://github.com/Shougo/dein.vim' $PATH_DEIN
endif

let $ROOT_DEIN=expand($VIM.'/.vim/dein')
if &compatible
  set nocompatible
endif
call dein#begin($ROOT_DEIN)
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neobundle.vim')
call dein#add('vim-jp/vital.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/vimfiler')
call dein#add('Shougo/vimshell')
if s:meet_neocomplete_requirements()
  call dein#add('Shougo/neocomplete')
else
  call dein#add('Shougo/neocomplcache')
endif
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('vim-jp/vimdoc-ja')
call dein#add('vim-scripts/taglist.vim')
call dein#add('intuited/lh-vim-lib')
call dein#add('intuited/lh-vim-ut')
call dein#add('fholgado/minibufexpl.vim')
call dein#add('vim-scripts/grep.vim')
call dein#add('ujihisa/unite-colorscheme')
call dein#add('fuenor/qfixhowm')
call dein#add('Lokaltog/vim-easymotion')
call dein#add('tpope/vim-surround')
call dein#add('vim-scripts/DirDiff.vim')
call dein#add('kana/vim-smartchr')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('vim-scripts/Align')
call dein#add('edsono/vim-matchit')
call dein#add('thinca/vim-quickrun')
call dein#add('thinca/vim-ref')
call dein#add('tyru/open-browser.vim')
call dein#add('chazy/cscope_maps')
"For Haskell dev environment
call dein#add('kana/vim-filetype-haskell')
call dein#add('eagletmt/ghcmod-vim')
call dein#add('eagletmt/neco-ghc')
"For ref-hoogle "hoogle" is necessary.
"Here is the installation example
"$ cabal install hoogle
"Usage: type 'K' on the target word in Normal mode.
call dein#add('ujihisa/ref-hoogle')
call dein#add('mattn/emmet-vim')
call dein#add('vim-jp/vim-cpp')

"Unite Sources
call dein#add('Shougo/unite-outline')
call dein#add('tsukkee/unite-help')
call dein#add('tyru/eskk.vim')
call dein#add('tyru/skkdict.vim')
call dein#add('itchyny/lightline.vim')
call dein#add('tpope/vim-abolish')
call dein#add('thinca/vim-unite-history')
call dein#add('koron/cmigemo')
call dein#add('haya14busa/vim-migemo')
"Build vimproc automatically.
if has('win32') || has('win64')
  " NOT install vimproc via NeoBundle
  " because it is included in Kaoriya Vim
else
  "call dein#add('Shougo/vimproc.vim', {'build': 'make'})
	call dein#add('Shougo/vimproc.vim', {
    \ 'build' : {
    \     'windows' : 'make -f make_mingw64.mak',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_unix.mak',
    \    },
    \ })
endif
call dein#end()
"helptag
execute 'helptags '.expand($ROOT_DEIN.'/repos/github.com/vim-jp/vimdoc-ja/doc')
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Migemo setting
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Not sure the reason why but every first time Vim is launched,
"need to type "\f" to enable migemo.
"After this, "g/" works fine to search Japanese words..
"nnoremap g/ :<C-u>Migemo<CR>
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
  "let MY_GREP_PATH_ROOT='C:\msys\bin'
  let MY_GREP_PATH_ROOT='C:\msys64\usr\bin'
  let Grep_Path=MY_GREP_PATH_ROOT.'\grep.exe'
  let Fgrep_Path=MY_GREP_PATH_ROOT.'\grep.exe -F'
  let Egrep_Path=MY_GREP_PATH_ROOT.'\grep.exe -E'
  let Grep_Find_Path=MY_GREP_PATH_ROOT.'\find.exe'
  let Grep_Xargs_Path=MY_GREP_PATH_ROOT.'\xargs.exe'
else
  let MY_GREP_PATH_ROOT='/usr/bin'
  let Grep_Path=MY_GREP_PATH_ROOT.'/grep'
  let Fgrep_Path=MY_GREP_PATH_ROOT.'/grep -F'
  let Egrep_Path=MY_GREP_PATH_ROOT.'/grep -E'
  let Grep_Find_Path=MY_GREP_PATH_ROOT.'/find'
  let Grep_Xargs_Path=MY_GREP_PATH_ROOT.'/xargs'
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
"   exe "!" . a:cscope . " -R -b -k"
"   exe "!" . a:cscope . " -R -b -k -P " . l:target_dir . " -s ". l:addit_dir
"   exe "!" . a:cscope . " -P " . l:target_dir
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
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Unite settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Ignore case in search patterns (e.g. "A" and "a")
call unite#custom#profile('default', 'context', {'ignorecase': 1})
call unite#custom#profile('files', 'context', {'ignorecase': 1})
call unite#custom#profile('bookmark', 'context', {'ignorecase': 1})
"Recognize the difference btw upper/lower cases if target string contains upper case
call unite#custom#profile('default', 'context', {'smartcase': 1})
call unite#custom#profile('files', 'context', {'smartcase': 1})
call unite#custom#profile('bookmark', 'context', {'smartcase': 1})
"Open list of buffers which are opened in the current tab.
nnoremap <C-L><C-B> :<C-u>Unite buffer_tab<CR>
nnoremap <C-L><C-F> :<C-u>Unite file -buffer-name=files -start-insert<CR>
nnoremap <C-L><C-D> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <C-L><C-M> :<C-u>Unite bookmark -default-action=vimfiler<CR>
nnoremap <C-L><C-A> :<C-u>Unite file buffer file_mru -buffer-name=all -start-insert<CR>
let g:unite_source_history_yank_enable = 1
nnoremap <C-L><C-P> :<C-u>Unite history/yank<CR>
nnoremap <C-L><C-K> :<C-u>Unite history/command -direction=botright -start-insert<CR>
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
nnoremap <silent><C-L><C-J> :<C-u>Unite bookmark<CR>
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
\            :QuickRun<CR>
nnoremap <Space>rr.
\            :QuickRun -args ""
augroup haskell
  nnoremap <Space>r.
  \            :QuickRun<CR>
  \            :GhcModCheckAndLintAsync!<CR>

"  nnoremap <Space>rr.
"  \            :QuickRun -args ""
"  \            :GhcModCheckAndLintAsync!<CR>
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""
"For Haskell dev environment
"""""""""""""""""""""""""""""""""""""""""""""""""""
augroup haskell
  autocmd!
  autocmd FileType haskell nnoremap <silent><buffer><Space>cc :<C-u>GhcModType!<CR>
  autocmd FileType haskell nnoremap <silent><buffer><Space><Space>c :<C-u>GhcModTypeClear<CR>
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-ref settings
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ref_source_webdict_sites = {
\   'gt': 'http://translate.google.co.jp/#en/ja/%s',
\}
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

"With ":highlight" command, check the current colorscheme setting.
hi Normal ctermbg=NONE
"EasyMotion Color Scheme
hi EasyMotionTarget cterm=bold ctermbg=yellow ctermfg=red

hi Pmenu ctermbg=black ctermfg=green cterm=bold
hi PmenuSel ctermbg=darkcyan ctermfg=white cterm=bold
hi WarningMsg term=standout ctermfg=LightRed guifg=green
hi Search ctermbg=Yellow ctermfg=Red

"hi CursorLine cterm=NONE ctermbg=Black
hi CursorLine ctermbg=Black
hi LineNr ctermfg=LightRed
hi CursorLineNr ctermfg=Green ctermbg=Black
hi MatchParen cterm=underline,bold,reverse guisp=Red ctermbg=NONE ctermfg=NONE
"Setting for "desert" theme.
hi Special cterm=NONE ctermbg=NONE ctermfg=blue
hi PreProc cterm=NONE ctermbg=NONE ctermfg=blue


"Memo: How to convert file formats on Vim
"http://advweb.seesaa.net/article/3074705.html
"If opend file occurs MOJIBAKE
":e ++enc=utf-8
":e ++enc=euc-jp
":e ++enc=shift_jis

