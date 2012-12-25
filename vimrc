set nocompatible

" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value. Add "set backspace&" to your ~/.vimrc to reset it.
set backspace+=indent,eol,start

set hidden

" unix file format (no ^M @EoL)
set ff=unix

"set nu!
syntax on
colorscheme sexy-railscasts

" instead of '\'
let mapleader = ","

"" Lusty Finder mappings
"map <Leader>f :LustyFilesystemExplorer<CR>
"map <Leader>h :LustyFilesystemExplorerFromHere<CR>
"map <Leader>b :LustyBufferEx
"map <Leader>g :LustyBufferGrep<CR>

cd ~/workspace
map <C-c>X :NERDTreeToggle<CR>
" map next and previous buffer command
"map <C-]> :bn<CR>
"map <C-[> :bp<CR>
"
" hash rocket
imap <C-l> <Space>=><Space>
" pointer arrow
imap <C-j> <Space>-><Space>
" R assignment
imap <C-h> <Space><-<Space>

set fileencodings=utf-8
set encoding=utf-8

" no backup files
" no swap files
set nobackup
set nowritebackup
set noswapfile
" to move the cursor to the matching string,
" while typing the search pattern
set incsearch

" edit hex files
map <C-x>h :%!xxd<CR>
map <C-x>t :%!xxd -r<CR>

filetype plugin on

"browser like navigation for help files
nmap <buffer> <CR> <C-]>
nmap <buffer> <BS> <C-T>

"disable BOM character <U-FEFF>
set nobomb

"hide menu, toolbar, scroll bar from gvim and NERDTree
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guifont=Envy\ Code\ R

"set cindent "disables , if uncomented
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cinkeys=0{,0},:,0#,!,!^F

"Fuzzy Finder mappings
map <C-x>f :FufFile<CR>
map <C-x>b :FufBuffer<CR>
map <C-x>d :FufDir<CR>

"make window wider/narrower
map <C-h> <C-W><
map <C-l> <C-W>>

"use tmux instead of screen (which is default)
"let g:slime_target = "tmux"
"let g:slime_paste_file = "$HOME/.slime_paste"

" highlight & strip trailing whitespaces for _all_ files
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd BufWritePre * :%s/\s\+$//e
" or the same thing w/ function
"function! TrimWhiteSpace()
"    %s/\s\+$//e
"endfunction
"autocmd BufWritePre *.* :call TrimWhiteSpace()
" end highlight & strip trailing whitespaces
