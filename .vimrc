" VIM config
" francois.jacques@gmail.com

" Reasonable defaults
syntax on

" Line numbers, please
set number

" Pathogen plugin management
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Solarized
" FIXME: detect 16/256 terminal
let g:solarized_termcolors=256
if has('gui_running')
	set background=light
else
	set background=dark
endif
colorscheme solarized

" NERDTree/NERDTreeTabs
" Show nerdtree if no files were specified
" Map Ctrl-N to nerdtree toggle
" Ignore nerdtree on close
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeTabsToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
