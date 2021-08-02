"Velkom!
"Check this resource firsthttp://vimdoc.sourceforge.net/htmldoc/map.html

nmap <space>rn <Plug>(coc-rename) 

" Shift j (or k) jumps 5 lines down (or up)
map J 5j
map K 5k

" s works goes to easymotion search by letter
nnoremap s <Leader><Leader>s

" easymotion for most used shortcuts (I often press spacebar too fast for mac to register it properly) 
nnoremap <Leader>w <Leader><Leader>w
nnoremap <Leader>b <Leader><Leader>b
nnoremap <Leader>ge <Leader><Leader>ge
nnoremap <Leader>e <Leader><Leader>e
nnoremap <Leader>j <Leader><Leader>j
nnoremap <Leader>k <Leader><Leader>k




" Y works like D (but with yanking, instead of deleting), u can still use yy to yank the whole line 
nnoremap Y y$

" Leader with v puts VIM from normal to the visual block mode (<C-v>)
nnoremap <Leader>v <C-v>

" Leader with i adds one character (u type it) then exit back to the normal mode
nnoremap <Leader>i i_<Esc>r

" Leader with o/O puts an empty line above or below your current line (without going to the insert mode)
nmap <Leader>o $a<ENTER><Esc>
nmap <Leader>O $I<ENTER><Esc>

" Leader Leader with o puts an empty line after the cursor 
nmap <Leader><Leader>o i<ENTER><Esc>

" Leader with a puts a space before/after your current cursor 
nmap <Leader>a a<SPACE><Esc> 
nmap <Leader>A i<SPACE><Esc>

" Leader with ; puts ; on the end of the current line (without going to the insert mode)
nnoremap <Leader>; $a;<Esc>

" Leader with , puts , on the end of the current line (without going to the insert mode)
nnoremap <Leader>, $a,<Esc>


" Insert mode

" Delete current line
"inoremap <C-d> <C-o>dd

map <Leader>c "*y
