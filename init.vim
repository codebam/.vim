colorscheme gruvbox
filetype plugin indent on
set autoindent
set background=dark
set hidden
" allow buffers to be open in the background
set noshowmode
" don't need to show the mode, lightline.vim does it for us
set shiftwidth=4
set softtabstop=4
set expandtab
set clipboard+=unnamedplus
set hlsearch
set incsearch
set inccommand=split
set number
set laststatus=2
set nojoinspaces
set display+=lastline
set noequalalways " makes split's split 50% of the current split

syntax on
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let g:table_mode_corner='|' " makes table plugin markdown compatible
nnoremap <leader><space> :nohlsearch<CR>
" leader + space hides the highlighting of a search

set ignorecase
set smartcase " if the search is lowercase, it'll be case insensitive

" automake latex files
au BufWritePost *.tex silent make | redraw!

set cursorline

set splitbelow
set splitright

if has("persistent_undo")
    set undodir=~/.vim_tmp/undo/
    set undofile
endif
set directory^=~/.vim_tmp/tmp
set backupdir^=~/.vim_tmp/tmp
set ttyfast
set lazyredraw
set nofsync
" these should fix slow editing over sshfs
