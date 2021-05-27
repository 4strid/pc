" mostly stuff for phone

" prevent flubs
nnoremap uu jj
nnoremap ju jj
nnoremap uj jj
nnoremap ii kk
nnoremap ki kk
nnoremap ik kk
nnoremap k) kk
nnoremap )k kk
nnoremap j= jj
nnoremap =j jj
nnoremap jn jj

"just blanket replace ctrl with comma lol
nnoremap ,w <c-W>
nnoremap ,r <c-r>
nnoremap ,u <c-u>
nnoremap ,d <c-d>
"buttery smooth
nnoremap ,<CR> :w<CR> 

"phone-y window nav shortcuts
nnoremap ,w,h <c-W>v
nnoremap ,w,j <c-W>s<c-W>j
nnoremap ,w,k <c-W>s
nnoremap ,w,l <c-W>v<c-W>l
nnoremap ,wd :bn<CR>:bd #<CR>
nnoremap ,D :bn<CR>:bd #<CR>
nnoremap ,S :so %<CR>
nnoremap ,= <c-W>=

" terminal crap what needs duplicatin
tnoremap ,w<C-u> <C-w>N<C-u>
"nnoremap ,w;n :bn<CR>
nnoremap ,wt :belowright term<CR>
nnoremap ,w,t :term++curwin<CR>

" replace shift tab
nnoremap <Left> mm<<`mh
" arrow keys that FUCK
nnoremap <silent><Right> :bn<CR>
nnoremap <Up> <C-w><C-p>
nnoremap <Down> <C-w><C-w>

" $ hard 2 type
nnoremap dx d$
nnoremap vx v$
nnoremap ctx ct$
nnoremap cx c$

" now do insert mode
inoremap ,u  <Esc>u
inoremap ,a <Esc>A
inoremap ,i <Esc>I
inoremap ,e <Esc>ea
inoremap ,b <Esc>bi
inoremap ,o <Esc>o
inoremap ,O <Esc>O
inoremap ,p <Esc>p

"alternate escape escapes
"just less likely to flub than ,k  \ we'll see which i end up using more
vnoremap <silent>,<Space> :<C-U>set norelativenumber<CR>
lnoremap ,<space> <Esc>
vnoremap ,<space> <Esc>
nnoremap <silent>,<space> :noh<CR>:set norelativenumber<CR>
cnoremap ,<space> <c-e><c-u><Esc>:echo ""<CR>
" if only we had this in Bash too lol
tnoremap ,<space> <Esc>
