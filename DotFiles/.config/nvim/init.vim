set tabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set noincsearch
set modeline

filetype on
filetype plugin on
syntax enable

colorscheme desert
highlight Normal ctermbg=black guibg=black
highlight MatchParen ctermfg=lightgreen ctermbg=black guifg=lime guibg=black
let matchparen_disable_cursor_hl = 1

" Useful bindings.
nnoremap <Leader>$ :split $MYVIMRC<CR>

" Mercury-specific settings.
autocmd! BufRead,BufNewFile *.m set ft=mercury
let mercury_highlight_comment_special = 1

"if has("multi_byte")
"  set encoding=utf-8
"  setglobal fileencoding=utf-8
"  if &termencoding == ""
"    let &termencoding = &encoding
"  endif
"endif
