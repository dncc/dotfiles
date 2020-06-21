set termguicolors
set nocompatible
set hidden

let g:solarized_termcolors=256
" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value. Add "set backspace&" to your ~/.vimrc to reset it.
set backspace+=indent,eol,start

" unix file format (no ^M @EoL)
set ff=unix

" spiiph's
set statusline=
set statusline+=%<							   " cut at start
set statusline+=%2*[%n%H%M%R%W]%*			   " flags and buf no
set statusline+=%-40f						   " path
set statusline+=[%{strlen(&ft)?&ft:'none'},    " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},   " encoding
set statusline+=%{&fileformat}]				   " file format
set statusline+=%10((%l,%c)%)				   " line and column
set statusline+=%P							   " percentage of file
set laststatus=2

"set nu!
" set background=dark
" colorscheme zenburn
" colorscheme hhazure

cd ~/workspace/cliqz/search-cache
set fileencoding=utf-8
set encoding=utf-8

set nobackup				 " no backup files
set nowritebackup
set noswapfile				 " no swap files

" set cursor to the matching string,
" while typing the search pattern
set incsearch

" change cursor shape in different modes, *gnome-terminal* only
if has("autocmd")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif

"disable BOM character <U-FEFF>
set nobomb

set guioptions-=m			 " no menu
set guioptions-=T			 " no toolbar
set guioptions-=r			 " no scrollbar
set guioptions-=L			 " no scrollbar for NTree
set guioptions-=e			 " no GUI tab bar

" set guifont=Envy\ Code\ R\ 11
" set guifont=Andale\ Mono\ 10
" set guifont=Ubuntu\ Mono\ 9
" set guifont=Monospace\ Regular\ 7.5
" set guifont=Inconsolata-dz\ 10
" set guifont=ProggyCleanTT\ 12
" ---------------------------------------------------------------
" Text Formatting
" ---------------------------------------------------------------
set autoindent				  " automatic indent new lines
set smartindent				  " be smart about indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab				  " expand tabs to spaces
" set noexpandtab
" set textwidth=80				" wrap at 80 chars by default
" set cindent				   " disables , if uncomented
set cinkeys=0{,0},:,0#,!^F

"set list listchars=tab:▷⋅
"----------------------------------------------------------------
" Mappings
"----------------------------------------------------------------

" instead of '\'
let mapleader = ","

" make window wider/narrower
map <C-h> <C-W><
map <C-l> <C-W>>

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
