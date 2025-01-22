" Basic configs
set rnu
set ts=2
set sw=2
set expandtab
let mapleader = "\<Space>"

" Vim Plug
call plug#begin()
  " Plugin list
  Plug 'airblade/vim-gitgutter'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'dense-analysis/ale'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/vim-indent-guides'
  Plug 'tpope/vim-fugitive'
  Plug 'powerline/powerline'
call plug#end()

" Color Scheme
" colo seoul256
" Make background transparent
hi Normal guibg=NONE ctermbg=NONE

" Rainbow parenthesis startup
au VimEnter * RainbowParentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" Open File Explorer
nmap <leader>f :Ex<CR>

" Buffers
nmap <leader>d :bd<CR>
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>

" CoC suggestion - trigger with <TAB> key
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"

" Fuzzy Finder keybindings
nnoremap <C-p> :Files<CR>
nnoremap <leader>b :Buffers<CR>
let g:fzf_layout = {'down': '50%'}

nmap <c-h> :wincmd h<CR>
nmap <c-j> :wincmd j<CR>
nmap <c-k> :wincmd k<CR>
nmap <c-l> :wincmd l<CR>

nmap <C-h> :TmuxNavigateLeft<CR>
nmap <C-j> :TmuxNavigateDown<CR>
nmap <C-k> :TmuxNavigateUp<CR>
nmap <C-l> :TmuxNavigateRight<CR>

nmap <leader>x :!chmod +x ./%<CR>
