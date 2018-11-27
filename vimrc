set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" 代码折叠
Plugin 'tmhedberg/SimpylFold'
    let g:SimpylFold_docstring_preview=1
" 自动补全    
Plugin 'Valloric/YouCompleteMe'
    let g:ycn_complete_in_comments=1
    let g:ycm_collect_identifiers_from_tags_files=1
    let g:ycm_min_num_of_chars_for_completion=1
    let g:ycm_cache_omnifunc=0
    let g:ycm_seed_identifiers_with_syntax=1
    "let g:
" 语法检查
Plugin 'scrooloose/syntastic'
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
"    let g:syntastic_check_on_open = 1
    let g:syntastic_check_wq = 0 
Plugin 'nvie/vim-flake8'
" color
Plugin 'altercation/vim-colors-solarized'
    let g:solarized_termcolors=256
" file tree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" super search
Plugin 'ctrlpvim/ctrlp.vim'
"git
Plugin 'tpope/vim-fugitive'
" 状态栏
"Plugin 'powerline/powerline'
"    set laststatus=2
"    let g:Powerline_colorscheme='solarized256'
"    let g:Powerline_symbols='unicode'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" basic
set nu
set ruler
set incsearch
set wildmenu
set encoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
autocmd BufWritePost $MYVIMRC source $MYVIMRC
syntax on
" 插件配置
"autocmd BufWritePost *.py call Flake8()
let python_highlight_all=1
call togglebg#map("<F2>")
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" code folding
set foldmethod=indent
set foldlevel=99
set nofoldenable
" color
set background=dark
colorscheme solarized
"Python
nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<cr>
" PEP8
au BufNewFile,BufRead *.py
			\set textwidth=79
            \set colorcolumn=80
