set nocompatible
set hidden

" maximize gvim window
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value. Add "set backspace&" to your ~/.vimrc to reset it.
set backspace+=indent,eol,start

" unix file format (no ^M @EoL)
set ff=unix

"set nu!
syntax on
set background=dark
colorscheme solarized

cd ~/workspace
set fileencoding=utf-8
set encoding=utf-8

set nobackup                 " no backup files
set nowritebackup
set noswapfile               " no swap files

" set cursor to the matching string,
" while typing the search pattern
set incsearch

filetype plugin indent on

"disable BOM character <U-FEFF>
set nobomb

set guioptions-=m            " no menu
set guioptions-=T            " no toolbar
set guioptions-=r            " no scrollbar
set guioptions-=L            " no scrollbar for NTree
set guioptions-=e            " no GUI tab bar

set guifont=Envy\ Code\ R\ 11 " Terminus

" ---------------------------------------------------------------
" Text Formatting
" ---------------------------------------------------------------
set autoindent                " automatic indent new lines
set smartindent               " be smart about indent
" set expandtab               " expand tabs to spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=80              " wrap at 80 chars by default
"set cindent                  " disables , if uncomented
set cinkeys=0{,0},:,0#,!,!^F

"set list listchars=tab:▷⋅
"----------------------------------------------------------------
" Mappings
"----------------------------------------------------------------

" instead of '\'
let mapleader = ","

"" Lusty Finder mappings
" map <Leader>f :LustyFilesystemExplorer<CR>
" map <Leader>h :LustyFilesystemExplorerFromHere<CR>
" map <Leader>b :LustyBufferEx
" map <Leader>g :LustyBufferGrep<CR>

" fuzzy finder mappings
map <C-x>f :FufFile<CR>
map <C-x>b :FufBuffer<CR>
map <C-x>d :FufDir<CR>

" try command-T it crashes vim
" after a file is selected use <C-v>, <C-t>
" to open the file with vertical split, or
" in a new tab, <C-e> to the end of list,
" <C-a> to the start, <C-c> quit.
" nnoremap <silent> <C-x><C-f> :CommandT<CR>
" nnoremap <silent> <C-x>b :CommandTBuffer<CR>
" nnoremap <silent> <C-x>t :CommandTTag<CR>
" " refresh command-t cache with new files
" nnoremap <silent> <C-x>l :CommandTFlush<CR>

" make window wider/narrower
map <C-h> <C-W><
map <C-l> <C-W>>

" NERDTree config
set autochdir
let NERDTreeChDirMode=2
map <C-c>X :NERDTreeToggle<CR>

" send current buffer to gist.github.com/dncc
" :Gist gist-num to get gist from github
map <C-c>G :Gist
map <C-c>g :Gist

" map next and previous buffer command
map <C-]> :bn<CR>
map <C-[> :bp<CR>

" hash rocket
imap <C-l> <Space>=><Space>
" pointer arrow
imap <C-j> ->
" R assignment
imap <C-h> <Space><-<Space>

" edit hex files
map <C-x>h :%!xxd<CR>
map <C-x>t :%!xxd -r<CR>

" browser like navigation for help files
nmap <buffer> <CR> <C-]>
nmap <buffer> <BS> <C-T>

" duplicate current tab with same file+line
map ,t :tabnew %<CR>

" open gf under cursor in new tab
map ,f :tabnew <cfile><CR>

" open directory dirname of current file, and in new tab
map ,d :e %:h/<CR>
map ,dt :tabnew %:h/<CR>

" ---------------------------------------------------------------------------
" highlight & strip trailing whitespaces for _all_ files
" ---------------------------------------------------------------------------

highlight ExtraWhitespace ctermbg=red guibg=#DA4939
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
"
autocmd BufWritePre * :%s/\s\+$//e

" ---------------------------------------------------------------------------
" Vim - Slime
" ---------------------------------------------------------------------------

"use tmux instead of screen (which is default)
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

" put html bindings for .ejs files for syntax hightlight
au BufNewFile,BufRead *.ejs set filetype=html
au BufRead,BufNewFile *.go set filetype=go
