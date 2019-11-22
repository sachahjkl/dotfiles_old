" This must be first, because it changes other options as side effect
set nocompatible

" Pathogen
execute pathogen#infect()

" Repair WSL vim background
if (&term =~ '^xterm' && &t_Co == 256)
	set t_ut= | set ttyscroll=1
endif

"Color scheme
colorscheme wombat

"Enable syntax highlighting
syntax enable

" number of visual spaces per TAB
set tabstop=4
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4		" number of spaces to use for autoindenting
set backspace=indent,eol,start	
                        " allow backspacing over everything in insert mode
set smarttab			" insert tabs on the start of a line according to shiftwidth, not tabstop

set autoindent			" always set autoindenting on
set copyindent			" copy the previous indentation on autoindenting

set showcmd				" show command in bottom bar
filetype indent on      " load filetype-specific indent files

set lazyredraw          " redraw only when we need to.
set smartcase			" ignore case if search pattern is all lowercase, case-sensitive otherwise

set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default

set foldmethod=syntax   " fold based on indent level

"Automatic toggling between line number modes
set number relativenumber

set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

"Mouse mode
set mouse=a

"Display whitespaces visually
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

set pastetoggle=<F2>	 "Enables/Disables paste mode when you need to paste large amounts of text

":augroup numbertoggle
":  autocmd!
":  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
":  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
":augroup END

" Better navigation
map <S-j> 10j
map <S-k> 10k

" highlight current line
"set cursorline
" Remove line highlight and add color
"highlight clear CursorLine
highlight CursorLineNR ctermbg=red ctermfg=white

" CUSTOM PLUGINS
" lightiline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
if !has('gui_running')
	  set t_Co=256
endif
set noshowmode
" vim-smooth-scroll
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"noremap <silent> <S-j> :call smooth_scroll#down(10, 4, 2)<CR>
"noremap <silent> <S-k> :call smooth_scroll#up(10, 4, 2)<CR>


