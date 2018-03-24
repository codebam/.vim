let g:one_allow_italics = 1 " must be set before the colorscheme is loaded
colorscheme one
filetype plugin indent on
set autoindent
set background=dark
set hidden " allow buffers to be open in the background
set shiftwidth=4
set softtabstop=4
set expandtab
" set clipboard+=unnamedplus " if you're a lazy bitch you can use this to
" enable copying and pasting from the default system clipboard instead of
" vim's built in clipboard
" set statusline=%2*%t%h%w\ %r%m%1*%=%y[%{&ff}][%l,%v] " this gets overwritten
" by lightline
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
set noshowmode " don't need to show mode because lightline shows it for me

" automake latex files
au BufWritePost *.tex call jobstart('make')

set cursorline
augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

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

" if (empty($TMUX)) " this can be commented out as long as tmux has Tc enabled
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
" endif

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:netrw_banner       = 0 " hide the banner
let g:netrw_keepdir      = 0
let g:netrw_liststyle    = 3 " tree structure
let g:netrw_sort_options = 'i'
let g:netrw_browse_split = 4 " open in last used window
let g:netrw_altv = 1 " open splits to the right
let g:netrw_preview = 1 " open preview vertically
let g:netrw_winsize      = 10 " make window smaller

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" set t_ZH=[3m
" set t_ZR=[23m
" " Enable Italics
" let &t_ZH = "\e[3m"
" let &t_ZR = "\e[23m"
" highlight Comment cterm=italic
