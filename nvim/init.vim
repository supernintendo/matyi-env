" init.vm

" Install vim-plug if it isn't already
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load vim-plug
call plug#begin()

" Load plugins
Plug 'KabbAmine/zeavim.vim'
Plug 'airblade/vim-gitgutter'
Plug 'andreypopp/vim-colors-plain'
Plug 'ayu-theme/ayu-vim'
Plug 'calviken/vim-gdscript3'
Plug 'cideM/yui'
Plug 'chr4/nginx.vim'
Plug 'cohama/agit.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'francoiscabrol/ranger.vim'
Plug 'gisphm/vim-gitignore'
Plug 'habamax/vim-godot'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mbbill/undotree'
Plug 'metakirby5/codi.vim'
Plug 'mhinz/vim-startify'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'rbgrouleff/bclose.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/gitignore'
Plug 'vimwiki/vimwiki'
Plug 'yuttie/comfortable-motion.vim'

" Yank to clipboard
set clipboard+=unnamedplus

" Enable mouse support
set mouse=a

" Enable line numbers...
set number

" ...but disable them in terminals
autocmd TermOpen * setlocal nonumber norelativenumber

" Enable True Color
set termguicolors

" Enable wildmenu for tab-completion
set laststatus=2
set wildmenu

" Enable soft tabs
set expandtab

" Use two spaces for tabs by default
set shiftwidth=2

" Initialize vim-plug
call plug#end()

" Adjust UI
let ayucolor="mirage"
colorscheme ayu
set guifont=FantasqueSansMono\ Nerd\ Font:h12:c

" Configure Airline
let g:airline_theme='hybrid'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Fallback for non-patched fonts
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Configure VimWiki
let g:vimwiki_list = [{'path': '~/Links/bennett/wiki', 'syntax': 'markdown'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

" Use ranger instead of netrw for directory navigation
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1

" Configure comfortable-motion
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

" Configure function key bindings
map <silent> <F2> :NERDTreeToggle<CR>
map <silent> <F3> :NERDTreeFind<CR>
map <silent> <F4> :terminal<CR>
map <silent> <F8> :colorscheme yui<CR>
map <silent> <F9> :colorscheme tempus_rift<CR>

" Set filetype spacing
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2

" Enable vim-visual-multi mouse events

let g:VM_mouse_mappings = 1
