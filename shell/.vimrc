set number "Set vi can show line number
set ignorecase
set history=1000 "Sets how many lines of history VIM has to remeber
set autoread "Set to auto read when a file is changed from the outside
set shiftwidth=4
set tabstop=4
set softtabstop=4
set gdefault
set smarttab
syntax on
set hlsearch " highlight search
set expandtab " expend tab to space
set laststatus=2
set statusline+=%F "show full name of current opened file
set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
syntax enable
set smartindent
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set cindent
inoremap { {<CR>}<up><end><CR>

" remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" hotkeys to save and quit
map <C-a> :w<cr>
map <C-e> :q<cr>

" v to activate visual block mode (instead of ctrl+v)
nnoremap v <c-v>