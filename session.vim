if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <F6> :copy "+ 
imap <F2> :w
map! <xHome> <Home>
map! <xEnd> <End>
map! <S-xF4> <S-F4>
map! <S-xF3> <S-F3>
map! <S-xF2> <S-F2>
map! <S-xF1> <S-F1>
map! <xF4> <F4>
map! <xF3> <F3>
map! <xF2> <F2>
map! <xF1> <F1>
map! <S-Insert> *
imap <C-PageDown> L$
imap <C-PageUp> H
vmap  "*d
map ## :e ~/.screen/screen_exchange
map ,T :set titlestring=
map ,S :source $HOME/.vim/sessions/
map ,M :mksession! $HOME/.vim/sessions/
map ,N :e $HOME/notes/
map ,H :e $HOME/
nnoremap <C-S-Tab> :bprevious
nnoremap <C-Tab> :bnext
map <F9> :set invwrap
map <F7> "+p
map <S-F6> "+yy
map <F6> "+y
map <F4> :bd
map <F3> :bn
map <F2> :w
map <xHome> <Home>
map <xEnd> <End>
map <S-xF4> <S-F4>
map <S-xF3> <S-F3>
map <S-xF2> <S-F2>
map <S-xF1> <S-F1>
map <xF4> <F4>
map <xF3> <F3>
map <xF2> <F2>
map <xF1> <F1>
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
nmap <C-PageDown> L$
vmap <C-PageDown> L$
nmap <C-PageUp> H
vmap <C-PageUp> H
map   :simalt ~
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=2
set cpoptions=BceFs
set guioptions=gmrLtTa
set helplang=En
set hidden
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:>_,trail:_,extends:+
set matchpairs=(:),{:},[:],<:>
set modelines=1
set scrolloff=3
set shiftwidth=4
set shortmess=at
set showmatch
set sidescroll=5
set statusline=%f\ -\ byte\ %-4.o\ -\ line\ #%l\ -\ buffer\ #%n
set tabstop=4
set titlestring=Notes
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\notes
set shortmess=aoO
badd +420 prog\python\pythonnotes.otl
badd +11 prog\python\teaching
silent! argdel *
edit prog\python\pythonnotes.otl
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal nocopyindent
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatoptions=tcq
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keymap=
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal suffixesadd=
setlocal swapfile
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
set nowrap
setlocal nowrap
setlocal wrapmargin=0
2
normal zo
5
normal zo
2
normal zo
35
normal zo
36
normal zo
35
normal zo
52
normal zo
56
normal zo
73
normal zo
74
normal zo
74
normal zo
73
normal zo
56
normal zo
123
normal zo
125
normal zo
128
normal zo
134
normal zo
138
normal zo
141
normal zo
143
normal zo
123
normal zo
146
normal zo
147
normal zo
149
normal zo
150
normal zo
149
normal zo
153
normal zo
154
normal zo
156
normal zo
159
normal zo
163
normal zo
168
normal zo
171
normal zo
172
normal zo
171
normal zo
176
normal zo
176
normal zo
177
normal zo
178
normal zo
177
normal zo
176
normal zo
176
normal zo
168
normal zo
154
normal zo
153
normal zo
146
normal zo
181
normal zo
182
normal zo
183
normal zo
186
normal zo
190
normal zo
194
normal zo
182
normal zo
196
normal zo
197
normal zo
202
normal zo
197
normal zo
205
normal zo
207
normal zo
209
normal zo
211
normal zo
219
normal zo
196
normal zo
221
normal zo
222
normal zo
224
normal zo
226
normal zo
228
normal zo
228
normal zo
221
normal zo
240
normal zo
241
normal zo
243
normal zo
246
normal zo
252
normal zo
241
normal zo
265
normal zo
269
normal zo
272
normal zo
272
normal zo
269
normal zo
277
normal zo
278
normal zo
277
normal zo
265
normal zo
240
normal zo
286
normal zo
292
normal zo
292
normal zo
286
normal zo
334
normal zo
334
normal zo
338
normal zo
341
normal zo
343
normal zo
334
normal zo
181
normal zo
382
normal zo
383
normal zo
384
normal zo
387
normal zo
389
normal zo
384
normal zo
391
normal zo
392
normal zo
391
normal zo
398
normal zo
399
normal zo
403
normal zo
407
normal zo
409
normal zo
411
normal zo
413
normal zo
407
normal zo
398
normal zo
417
normal zo
419
normal zo
421
normal zo
423
normal zo
417
normal zo
425
normal zo
383
normal zo
428
normal zo
429
normal zo
428
normal zo
382
normal zo
435
normal zo
471
normal zo
472
normal zo
471
normal zo
435
normal zo
let s:l = 137 - ((81 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
137
normal! 09l
set winheight=1 winwidth=20 shortmess=at
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
