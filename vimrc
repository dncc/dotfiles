set nocompatible
set hidden

" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value. Add "set backspace&" to your ~/.vimrc to reset it.
set backspace+=indent,eol,start

" unix file format (no ^M @EoL)
set ff=unix

"set nu!
syntax on
colorscheme sexy-railscasts

cd ~/workspace
set fileencodings=utf-8
set encoding=utf-8

set nobackup                 " no backup files
set nowritebackup
set noswapfile               " no swap files

" set cursor to the matching string,
" while typing the search pattern
set incsearch

filetype plugin on

"disable BOM character <U-FEFF>
set nobomb

set guioptions-=m            " no menu
set guioptions-=T            " no toolbar
set guioptions-=r            " no scrollbar
set guioptions-=L            " no scrollbar for NTree
set guioptions-=e            " no GUI tab bar

set guifont=Envy\ Code\ R

" ---------------------------------------------------------------
" Text Formatting
" ---------------------------------------------------------------
set autoindent                " automatic indent new lines
set smartindent               " be smart about indent
set expandtab                 " expand tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=80              " wrap at 80 chars by default
"set cindent                  " disables , if uncomented
set cinkeys=0{,0},:,0#,!,!^F

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
" map <C-x>f :FufFile<CR>
" map <C-x>b :FufBuffer<CR>
" map <C-x>d :FufDir<CR>

" try command-T
nnoremap <silent> <C-x><C-f> :CommandT<CR>
nnoremap <silent> <C-x>b :CommandTBuffer<CR>
nnoremap <silent> <C-x>t :CommandTTag<CR>

" make window wider/narrower
map <C-h> <C-W><
map <C-l> <C-W>>

map <C-c>X :NERDTreeToggle<CR>

" map next and previous buffer command
map <C-]> :bn<CR>
map <C-[> :bp<CR>

" hash rocket
imap <C-l> <Space>=><Space>
" pointer arrow
imap <C-j> <Space>-><Space>
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

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd BufWritePre * :%s/\s\+$//e

" or the same thing w/ function
" function! TrimWhiteSpace()
"     %s/\s\+$//e
" endfunction
" autocmd BufWritePre *.* :call TrimWhiteSpace()
" end highlight & strip trailing whitespaces

" ---------------------------------------------------------------------------
" Vim - Slime
" ---------------------------------------------------------------------------

"use tmux instead of screen (which is default)
"let g:slime_target = "tmux"
"let g:slime_paste_file = "$HOME/.slime_paste"


