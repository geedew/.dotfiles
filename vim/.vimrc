" turn on syntax coloring
syntax on
" set up highlighting on test files
filetype on
au BufNewFile,BufRead *.stache set filetype=html
au BufNewFile,BufRead *.test set filetype=javascript

" show the ruler
set ruler

" set the backspace setting
set backspace=2 " make backspace work like most other apps

" make sure to indent the newlines
set autoindent

" folding
set foldmethod=indent
set foldlevelstart=2

"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML

" per directory vimrc
set exrc
set secure

" Handle the highlighted searches
set incsearch
set hlsearch
 " map the control L to clear highlighting
nnoremap <C-l> :nohlsearch<CR><C-l>  
 " disable highlighting when in insert mode
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

" turn on mouse scrolling
set mouse=a

" adding in the ctrlp plugin (fuzzy search)
set runtimepath^=~/.vim/bundle/ctrlp.vim

" use ack for search
let g:path_to_search_app = "/usr/local/bin/ack"

" nerdtree settings
" autocmd VimEnter * NERDTree
" autocmd BufEnter * NERDTreeMirror

"" Map Goyo toggle to <Leader> + spacebar
nnoremap <Leader><Space> :Goyo<CR>

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,php,js let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


" Set the cursor to stay in the middle of the page
set so=999
