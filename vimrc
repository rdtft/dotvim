set nocompatible
syntax on
set encoding=utf-8

call pathogen#infect()
filetype plugin indent on

set background=dark
set t_Co=256
color molokai
set number
set ruler       " show the cursor position all the time
set cursorline
set showcmd     " display incomplete commands
set wildmenu    " enables a menu at the bottom of the vim/gvim window

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

set noswapfile
set nobackup

"" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

if has("autocmd")
  "In Makefiles, use real tabs, not tabs expanded to spaces
  au FileType make set noexpandtab

  " Make sure all mardown files have the correct filetype set and setup wrapping
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set ft=markdown | call s:setupWrapping()

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json set ft=javascript

  " make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
endif

let mapleader=","
nnoremap ; :
inoremap jj <ESC>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <silent> <CR> :nohlsearch<cr>
noremap  <silent> <leader>W :%s/\s\+$//<cr>:let @/=''<CR> " strip all trailing whitespace
nnoremap <leader><leader> <c-^>

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar
  set statusline=%F%m%r%h%w
  set statusline+=%{fugitive#statusline()}
  set statusline+=\ [%{strlen(&fenc)?&fenc:&enc}]
  set statusline+=\ [line\ %l\/%L]
endif
