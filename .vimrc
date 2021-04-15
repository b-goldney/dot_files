" ===================================================================================
"                           Vim Core Configuration
" ===================================================================================
" set is for setting options
" let is for assigning a value to a variable

"set guifont=Menlo:h14               " for the GUI version of Vim
set number                          " absolute line number
set relativenumber                  " set relative line numbers
set nowrap                          " turn off word wrap
set autochdir                       " always change to the current file's directory
set textwidth=80 		    " make it obvious where 80 characters is
set colorcolumn=+1                  " (continued from above)
set hlsearch 			    " highlight search (highlight matches)
set encoding=utf-8
let g:loaded_matchparen=0
let g:user_emmet_leader_key=','     " set Emmet Vim leader key
highlight MatchParen cterm=bold ctermfg=cyan
let mapleader = ","


nnoremap <CR> :noh<CR><CR> 	    " clear search highlighting by hitting return

" netrw 
"vim's native version of NERDTree
" let g:netrw_banner = 0 		" remove the banner
" let g:netrw_liststyle = 3       " change to list style
" let g:netrw_browse_split = 4    " open files in new tab
" let g:netrw_altv = 1 		" vertical split 
" let g:netrw_winsize = 25 	" width of window
" let g:netrw_liststyle = 3 	" tree style listing (removes the vertical lines)
" 
" augroup ProjectDrawer 		" open netrw on startup
"   autocmd!
"   autocmd VimEnter * :Vexplore
"  augroup END

" gitgutter
" shows which lines have been added,modified, or removed
let g:gitgutter_enabled=1 " Always enable git gutter
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

" vimtex
" a modern Vim and neovim filetype and syntax plugin for LaTeX files.
let g:vimtex_view_method= 'zathura'
let g:tex_flavor = 'latex'

" NERDTree settings
let NERDTreeShowHidden=1             " Show hidden files in NERD Tree
" always open NERDTree in the documents folder
autocmd VimEnter * NERDTree /Users/brandongoldney/Documents/


"Debugger options
let g:termdebug_popup = 0
let g:termdebug_wide = 163

" enable autocomplete for html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
set omnifunc=syntaxcomplete#Complete

" open all .cpp and .html files with the templates from .vim/templates
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
autocmd BufNewFile *.html 0r ~/.vim/templates/skeleton.html

" ===================================================================================
"                           Vim-Plug Settings
" ===================================================================================
" Plug 'foo/bar' expands to Plug 'https://github.com/foo/bar.git' as documented
call plug#begin('~/.vim/plugged/') " vim-plug
Plug 'lervag/vimtex'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " live preview,for Latex files
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jremmen/vim-ripgrep'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
"Plug 'robbyrussell/oh-my-zsh'
Plug 'vim-airline/vim-airline'
"Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'eslint/eslint'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'sonph/onehalf', { 'rtp': 'vim' } " vim theme (onehalfdark and onehalflight)
Plug 'tpope/vim-fugitive' " Used by airline to show git branch
Plug 'powerline/powerline' " Used by airline to show git branch symbol
Plug 'Yggdroot/indentLine', {' for' : 'html'}
Plug 'gregsexton/MatchTag'
call plug#end()

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
" ===================================================================================
"                         Themes and Color Formatting
" ===================================================================================
" Theme and Colors
syntax on
set t_Co=256
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" Airline and Powerline Settings
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_stl_path_style = 'short'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Used to hide the slashes ("/") after each folder in NERDTree
" Colors are listed here: 
" https://github.com/sonph/onehalf/blob/89923117bc49dd1e0c6b7fdd34bc6dc4d425fe1f/vim/colors/onehalfdark.vim#L32
" This line must be after the Theme loads
hi NERDTreeDirSlash guifg=#282c34 ctermfg=236
" ===================================================================================
"                          File Formatting
" ===================================================================================
 filetype plugin indent on

" auto close brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" enable syntax highlighting for ejs files
au BufNewFile,BufRead *.ejs set filetype=html
autocmd Filetype css setlocal tabstop=4

"au BufNewFile,BufRead *.cpp  " default c++ formatting
"    \ set tabstop=4 |
"    \ set softtabstop=4 |
"    \ set shiftwidth=4 |
"    \ set textwidth=79 |
"    \ set expandtab |
"    \ set fileformat=unix |
"    \ set cindent |
"    \ set autoindent
" ===================================================================================
"                          Miscellaneous
" ===================================================================================
" CoC Color Settings - this has to be after the OneHalfDark install
hi CocErrorSign guibg=#282828 guifg=#fb4934
hi CocWarningSign guibg=#282828 guifg=#fabd2f
hi CocInfoSign guifg=#83a598
hi CocHintSign guifg=#504945
hi CocErrorFloat guifg=#fb4934
hi CocWarningFloat guifg=#fabd2f
hi CocInfoFloat guifg=#83a598
hi CocHintFloat guifg=#d3869b
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
noremap <D-0> :tablast<CR>  " Command-0 goes to the last tab

endif
