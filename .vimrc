set guifont=Menlo:h14
set number " absolute line number
set relativenumber 
set nowrap "turn off word wrap

let g:vimtex_view_method= 'zathura'
let g:tex_flavor = 'latex'

" This sets Vim to always change to the current file's directory
:set autochdir

" Show hidden files in NERD Tree
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree /Users/brandongoldney/Documents/

" Enable autocomplete for html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
set omnifunc=syntaxcomplete#Complete

"Open all .cpp files with the template from .vim/templates
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp


" Plug 'foo/bar' expands to Plug 'https://github.com/foo/bar.git' as documented
call plug#begin('~/.vim/plugged/') " vim-plug
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " PDF live preview, mostly for Latex files
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'robbyrussell/oh-my-zsh'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim' 
call plug#end()

let g:ZSH_THEME='agnoster'

" Git Gutter
let g:gitgutter_enabled=1 " Always enable git gutter
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red


"Debugger options
let g:termdebug_popup = 0
let g:termdebug_wide = 163

"Set defualt PEP8 formatting
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

au BufNewFile,BufRead *.cpp
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

au BufNewFile,BufRead *.tex
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

au BufNewFile,BufRead *.h
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix



" Execute python file with F9 instead of typing \":w !python\"
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Switch between tabs using ctrl+tab (to go right) and ctrl+shift+tab (to go
" left). Same as a browser.
if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" When there is an error in VIM upon opening (i.e. coc.nvim node is not executable)
" enter the following two commands into the temrinal: brew install node  and
" curl -sL install-node.now.sh | sh
" This is taken from: https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Change colorscheme of VIM
colorscheme murphy

" Switch to specific tab numbers with Command-number
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
noremap <D-8> :tabn 8<CR>
noremap <D-9> :tabn 9<CR>
" Command-0 goes to the last tab
noremap <D-0> :tablast<CR>
endif
filetype plugin indent on


