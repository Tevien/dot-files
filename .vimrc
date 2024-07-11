syntax on        "this is needed to see syntax
set background=dark  "makes it easier to read with black background
set ls=2            " allways show status line
set hlsearch        " highlight searches
"set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set ignorecase        "ignore case while searching
"set number            "put numbers on side
filetype indent on
set autoindent
set nocompatible
"set paste
set viminfo='200,h
autocmd FileType tex :setlocal spell spelllang=en_gb
autocmd FileType bib :set paste
"setlocal spell spelllang=en_gb

set expandtab
"set tabstop=2
set shiftwidth=2
"set smartindent
set softtabstop=2

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

if has("autocmd")
	aug vimrc
		au!
		" restore cursor position when the file has been read
		au BufReadPost *
					\ if line("'\"") > 0 && line("'\"") <= line("$") |
					\ exe "norm g`\"" |
					\ endif
		aug ENG
		endif
