colorscheme one
filetype plugin indent on
set autoindent
set background=dark
set hidden
" allow buffers to be open in the background
set shiftwidth=4
set softtabstop=4
set expandtab
" set clipboard+=unnamedplus " if you're a lazy bitch you can use this to
" enable copying and pasting from the default system clipboard instead of
" vim's built in clipboard
set statusline=%2*%t%h%w\ %r%m%1*%=%y[%{&ff}][%l,%v]
set nojoinspaces
set display+=lastline
set noequalalways " makes split's split 50% of the current split
set number
syntax on
let g:table_mode_corner='|' " makes table plugin markdown compatible
nnoremap <leader><space> :nohlsearch<CR>
" leader + space hides the highlighting of a search

set ignorecase
set smartcase " if the search is lowercase, it'll be case insensitive
set nowrap " I don't like line wrapping, if I want it I know how to enable it

" automake latex files
au BufWritePost *.tex call jobstart('make')

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
set colorcolumn=80
" these should fix slow editing over sshfs

if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:netrw_banner       = 0
let g:netrw_keepdir      = 0
let g:netrw_liststyle    = 3
let g:netrw_sort_options = 'i'
let g:netrw_browse_split = 4
let g:netrw_winsize      = 10
