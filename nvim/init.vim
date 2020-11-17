" init.vm

" Install vim-plug if it isn't already
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load vim-plug
call plug#begin()

" Plugins - Language support
Plug 'elixir-editors/vim-elixir'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'gisphm/vim-gitignore'

" Plugins - Editing
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/gitignore'

" Plugins - Presentation, theming, etc.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'yuttie/comfortable-motion.vim'

" Plugins - Utilities
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vimwiki/vimwiki'

" Enable mouse support
set mouse=a

" Enable line numbers
set number

" Enable True Color
set termguicolors

" Enable wildmenu for tab-completion
set laststatus=2
set wildmenu

" Initialize vim-plug
call plug#end()

" Apply theming
colorscheme tempus_night
let g:airline_theme='minimalist'

" Configure VimWiki
let g:vimwiki_list = [{'path': '~/Links/bennett/wiki', 'syntax': 'markdown'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

" Configure comfortable-motion
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

" Start NERDTree on launch
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Set filetype spacing
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2

