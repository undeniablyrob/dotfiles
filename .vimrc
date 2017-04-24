syntax on 
set tabstop=4          " number of visual spaces when a file is opened and a TAB is read
set softtabstop=4      " number of visual spaces when a file is edited and a TAB is entered
set wildmenu           " visual autocomplete for command menu
set lazyredraw         " redraw only wnen we need to (e.g., do not redraw when macros run)
set showmatch          " highlight matching parenthesis-like characters when you cursor over one
set incsearch          " search as characters are entered
set hlsearch           " highlight matches
set foldenable
set foldlevelstart=10  " open most folds by default (0=everything folded, 99=nothing folded)
set foldmethod=indent  " fold based on indentation

" ---------------- Mappings ---------
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
