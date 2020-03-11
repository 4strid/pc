autocmd FileType cf nnoremap <c-f> i<cfmail from="noreply@simpleviewinc.com" to="peter@debug.com" subject="debug" type="html"><return></cfmail><esc>
autocmd FileType cf nnoremap <c-n> i<cfdump format="text" var="##"><esc>F#

" crude way to test if we are in WSL
if (filereadable('/etc/wsl.conf'))
  "idk how to do motion mappings and do not have time to look it up
  "so to copy you must first use visual mode to select. sorry not sorry.
  "so we can still use registers, you must specify the * register to use
  "windows clipboard 
  "
  "another limitation is apparently we can only work on lines. look it's not
  "perfect but I really can't spend any more time on this
  "vnoremap "*y :<c-u>silent '<,'>write !win32yank.exe -i<CR>'<
  "vnoremap <expr>"*p mode()==#'v' ? "myxh:silent read !win32yank.exe -o<CR>`y" : "myxk:silent read !win32yank.exe -o<CR>'y"
  "vnoremap "*p myxk:silent read !win32yank.exe -o<CR>`y
  "nnoremap "*p :silent read !win32yank.exe -o<CR>
  "
  "i learned about `system` today! that solves all our problems
  vnoremap y y:WinYank<CR>
  vnoremap d d:WinYank<CR>
  vnoremap x d:WinYank<CR>
  "intentionally do not put these in the windows clipboard bc honestly
  "that's rarely what we want
  vnoremap p :<C-u>WinPut<CR>gvp
  vnoremap P :<C-u>WinPut<CR>gvP
  "ezz
  nnoremap yy yy:WinYank<CR>
  nnoremap dd dd:WinYank<CR>
  nnoremap d$ d$:WinYank<CR>
  nmap dil dil:WinYank<CR>
  nmap daw daw:WinYank<CR>
  nnoremap p :WinPut<CR>p
  nnoremap P :WinPut<CR>P

  "it's not going to work well with <C-r> so add maps to manually feed
  "the register
  nnoremap "*y :WinYank<CR>
  nnoremap "*p :WinPut<CR>

  command WinYank let res = system("win32yank -i", @")|echo res
  command WinPut let @" = system("win32yank -o --lf")
endif

"colorscheme Chasing_Logic
colorscheme Tomorrow-Night-Nineties
"colorscheme lilydjwg_dark

"doctor colorscheme a bit
hi Comment ctermfg=8
hi Visual ctermfg=8 ctermbg=7
hi Number ctermfg=3
hi Conceal ctermfg=8
hi String ctermfg=2
hi Constant ctermfg=7
hi Special ctermfg=5
hi Todo ctermfg=5

hi Label ctermfg=5

hi javaScriptNumber ctermfg=3
hi javaScriptBraces ctermfg=5
hi javaScriptNull ctermfg=12
hi javaScriptBoolean ctermfg=12
hi javaScriptStatement ctermfg=10
hi javaScriptConditional ctermfg=1
hi javaScriptLogicSymbols ctermfg=80
hi javaScriptSource ctermfg=1
hi javaScriptRepeat ctermfg=1
hi javaScriptExceptions ctermfg=150
hi javaScriptRegExp ctermfg=150
hi javaScriptRegExpstring ctermfg=150
hi javaScriptFuncExp ctermfg=15
hi javaScriptBranch ctermfg=1
hi javaScriptCommentTodo ctermfg=5


"hmm this is hacky but we'll unify them someday
if (&term == "xterm")
  hi javaScriptExceptions ctermfg=3
  hi javaScriptRegExp ctermfg=3
  hi javaScriptRegExpstring ctermfg=3
  hi Number ctermfg=209
  hi javaScriptNumber ctermfg=209
>>>>>>> master
endif
