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
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'calviken/vim-gdscript3'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'

" Plugins - Editing
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/gitignore'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plugins - Presentation, theming, etc.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'yuttie/comfortable-motion.vim'

" Plugins - Utilities
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vimwiki/vimwiki'

" Yank to clipboard
set clipboard+=unnamedplus

" Enable mouse support
set mouse=a

" Enable line numbers
set number

" Enable True Color
set termguicolors

" Enable wildmenu for tab-completion
set laststatus=2
set wildmenu

" Enable soft tabs
set expandtab

" Initialize vim-plug
call plug#end()

" Apply theming
colorscheme tempus_tempest
let g:airline_theme='minimalist'

" Configure VimWiki
let g:vimwiki_list = [{'path': '~/Links/bennett/wiki', 'syntax': 'markdown'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

" Configure comfortable-motion
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

" Configure function key bindings
map <silent> <F2> :NERDTreeToggle<CR>
map <silent> <F3> :NERDTreeFind<CR>
map <silent> <F7> :colorscheme tempus_dawn<CR>
map <silent> <F8> :colorscheme tempus_past<CR>
map <silent> <F9> :colorscheme tempus_classic<CR>
map <silent> <F10> :colorscheme tempus_tempest<CR>

" Set filetype spacing
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2

" Enable vim-visual-multi mouse events
let g:VM_mouse_mappings = 1

