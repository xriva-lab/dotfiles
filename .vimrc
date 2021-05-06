function! LoadTemplate()
silent! 0r ~/.vim/skel/tmpl.%:e
" Highlight %VAR% placeholders with the Todo colour group
syn match Todo "%\u\+%" containedIn=ALL
endfunction
autocmd! BufNewFile * call LoadTemplate()
"Jump between %VAR% placeholders in Normal mode with
" <Ctrl-p>
nnoremap <c-p> /%\u.\{-1,}%<cr>c/%/e<cr>
"Jump between %VAR% placeholders in Insert mode with
" <Ctrl-p>
inoremap <c-p> <ESC>/%\u.\{-1,}%<cr>c/%/e<cr>
autocmd BufNewFile *.[Ss] silent !cp $HOME/.vim/skel/amiga/asm/Makefile %:p:h
set shell=/bin/bash

packloadall

syntax on
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
