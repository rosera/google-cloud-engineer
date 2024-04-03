cat <<EOF >~/.vimrc
" CLOUDSHELL VIM SETTINGS: 

" GENERAL SETTINGS: 
set noerrorbells                                   " No bells
set noswapfile                                     " Turn off swap file
set nobackup                                       " Turn off back file
set undodir=~/.vim/undodir                         " CREATE THIS FOLDER!!!
set undofile                                       " Set undo in the folder
set encoding=utf-8                                 " Support unicode encoding

colorscheme industry                               " Color scheme
highlight ColorColumn ctermbg=0 guibg=lightgrey    " Add Highlight config

" EDITOR SETTINGS: 
set nowrap                                         " Dont wrap lines
set spell                                          " Enable spelling
set spelllang=en_gb                                " Set the Spelling lang
set colorcolumn=80                                 " Add a column bar

" CODE SETTINGS: 
syntax on                                          " Syntax highlight
set tabstop=2 softtabstop=2                        " Default tab use space
set shiftwidth=2                                   " Default shift
set expandtab                                      " Default tab expansion
set smartindent                                    " Alternative to autoindent
set nu rnu                                         " Set number + relative
set smartcase                                      " Case insensitive
set incsearch                                      " Incremental search
set splitright                                     " vsplit right
set splitbelow                                     " split below

EOF
