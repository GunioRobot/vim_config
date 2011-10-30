""""""""""""""""""""""""""""""""""""""""
"" Keyboard-command related settings.
"" does not contain plugin-specific
"" settings, just 'global' ones.
""""""""""""""""""""""""""""""""""""""""

" ;w saves a buffer
map <Leader>w :w<CR>

" ;q closes a vim-window
map <Leader>q :q!<CR>

" navigate among windows using ;[hjkl]
"imap <Leader>h <C-W>h
"map <Leader>j <C-W>j
"map <Leader>k <C-W>k
map <Leader>l <C-W>l

" navigate around in buffers...
map <Leader>n :bnext<CR>
map <Leader>p :bprevious<CR>

" close all buffers but this one
map <Leader>bo :BufOnly<CR>

" switch ' and `, because:
" ' jumps to the start of the line where a mark is
" ` jumps to the exact location of a mark
" because jumping to the exact location is more useful,
" I like it to be closer to the home row, so I switch the keys.
noremap ' `
noremap ` '

nnoremap ;; :

"Quick save
nnoremap <silent> <F2> :w<CR>
inoremap <silent> <F2> <Esc>:w<CR><Ins><Right>

"NerdTree Toggle
nnoremap <silent> <F3> :NERDTreeToggle<CR>
inoremap <silent> <F3> <ESC>:NERDTreeToggle<CR><Ins><Right>

"BufExplorer
nnoremap <silent> <F4> :BufExplorer<CR>
inoremap <silent> <F4> <ESC>:BufExplorer<CR><Ins><Right>

"Switch to previous buffer
map <F5> :b#<CR>
imap <F5> <Esc> :w<CR> :b#<CR>

"Taglist
map <Leader>l :TlistToggle<CR>

"EXPERIMENTAL STUFF
function! ToggleLineNumbering()
   if !exists("g:line_numbering_mode")
      let g:line_numbering_mode = "none"
   endif

  if (g:line_numbering_mode == "none")
     exec("set number")
     let g:line_numbering_mode = "plain"
  elseif (g:line_numbering_mode == "plain")
     exec("set relativenumber")
     let g:line_numbering_mode = "relative"
  elseif (g:line_numbering_mode == "relative")
     exec("set norelativenumber")
     let g:line_numbering_mode = "none"
  endif

endfunction

nmap <silent> <Leader>s  :call ToggleLineNumbering()<CR>

