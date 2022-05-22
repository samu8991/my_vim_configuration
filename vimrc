set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch 
set colorcolumn=80
set splitright
set autochdir
set relativenumber
":vim bar % | cw<CR>
set rtp+=/home/voidjocker/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim

call vundle#begin()
Plugin 'mbbill/undotree'
Plugin 'scrooloose/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
Plugin 'https://github.com/907th/vim-auto-save.git'
Plugin 'fatih/vim-go'
Plugin 'cdelledonne/vim-cmake'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
 
call vundle#end() 

colorscheme gruvbox
set mouse=a
set bg=dark
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:cmake_build_dir = 'build'
let g:vim_markdown_math = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END


"Remap section
map <Up>   <C-W>k
map <Down> <C-W>j
map <Left> <C-W>h
map <Right> <C-W>l
nnoremap <C-Z> :UndotreeToggle<CR>
nnoremap <silent> <Leader>g :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>f :YcmCompleter FixIt<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
noremap <leader>ps :Rg<SPACE>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <F7> :!cd build && cmake .. && cd ..<CR>
nnoremap <F8> :!cd build && make && cd ..<CR>
nnoremap <F9> :!./build/

"You should go through the vimtutor again. One of the 
"first things it talks about is using Ctrl - ] to follow a tag, 
"and Ctrl - o to go back.
"For what it's worth, Ctrl - i goes forward again. 
"So for example, you might gg to the top of a document, 
"hit Ctrl - o (bringing you back to where you started), 
"and then hit Ctrl - i 
"(bringing you back to the top of the document).
"Try h: jump-motions, or h: CTRL-O for more.
"shift + o aggiunge una linea giu e ti sposta giu in insert mode
"shift + p stessa cosa al contrario
"forward slash parola trova la parola nel file shift n trova le occorrenze 
"shift * su una parola trova la parola sotto il cursore continua a premere star
"per tutte le occorrenze o shift £ per averle al contrario

