

"set list

"set listchars=tab:>.

set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

set showmatch

set selectmode=mouse
set autoindent

set tabstop=2
set shiftwidth=2
set expandtab

set number

syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'

Plug 'mattn/emmet-vim'

Plug 'valloric/youcompleteme'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'yuttie/comfortable-motion.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-emoji'
"Plug 'webdevel/tabulous'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }


call plug#end()

set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

map <C-o> :NERDTreeToggle<CR>
map <C-l> :NERDTreeCWD<CR>
map <C-s> :w<CR>
map <C-.> :tabnext:<CR>
map <C-,> :tabprevious:<CR>
map <C-t> :tabnew:<CR>
map <C-Q> :tabclose:<CR> 


