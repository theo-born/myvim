"Velkom!
"Check this resource first http://vimdoc.sourceforge.net/htmldoc/map.html



" Shift j (or k) jumps 5 lines down (or up), not in insert mode ofc
map J 5j
map K 5k

" s works goes to easymotion search by letter (this the one I really like)
nnoremap s <Leader><Leader>s

" easymotion for most used shortcuts (I often press spacebar too fast for mac to register it properly) 
nnoremap <Leader>w <Leader><Leader>w
nnoremap <Leader>b <Leader><Leader>b
nnoremap <Leader>ge <Leader><Leader>ge
nnoremap <Leader>e <Leader><Leader>e
nnoremap <Leader>j <Leader><Leader>j
nnoremap <Leader>k <Leader><Leader>k


" Select the current word for search (highlighted word), by default * goes right to the next item
nmap <Leader>* *N


" Y works like D (but with yanking, instead of deleting), u can still use yy to yank the whole line 
nnoremap Y y$


" <Leader> with V selects the rest of the line
nnoremap <Leader>V v$h

" <Leader> with v puts VIM from normal to the visual block mode (<C-v>)
nnoremap <Leader>v <C-v>


" <Leader> with o/O puts an empty line above or below your current line (without going to the insert mode)
nmap <Leader>o $a<ENTER><Esc>
nmap <Leader>O $I<ENTER><Esc>

" <Leader> with , puts an empty line after the cursor 
nmap , a<ENTER><Esc>0


" <Leader> with a puts a space before/after your current cursor 
nmap <Leader>a a<SPACE><Esc>
nmap <Leader>A i<SPACE><Esc>

" <Leader> with ; puts ; on the end of the current line (without going to the insert mode)
nnoremap <Leader>; $a;<Esc>

" <Leader> with , puts , on the end of the current line (without going to the insert mode)
nnoremap <Leader>, $a,<Esc>

" <Leader> with . puts . on the end of the current line (without going to the insert mode)
nnoremap <Leader>. $a.<Esc>

" <Leader> with c copies current selection (or line of nothing is selected currently) to both yank registry and to system clipboard
" might delete later
"nnoremap <Leader>c "*y<ENTER>

" Insert mode: Delete current line
" might delete later
inoremap <C-d> <C-o>dd

" <Leader> with x deletes one character and goes to Insert mode
nnoremap <Leader>x a<Backspace>

" Paste when selected puts the pasted thing back in the register, cute little hack
"xnoremap p pgvy

" tf is this even?
"nmap <space>rn <Plug>(coc-rename) 


" <Leader> with i adds one character (u type it) then exit back to the normal mode, trashass hack
"nnoremap <Leader>i i_<Esc>r
