" Insert Leading Chars - useful for commenting out something
"
" author: sirjofri

" This is a toggle function. If it finds the specific chars it will remove
" them. If not it will add them.

if exists('g:loaded_commentout') || &cp
	finish
endif
let g:loaded_commentout = 1

function! CommentOut(char) range
	if search("^".a:char, "n") > 0
		execute "silent ".(a:firstline).",".a:lastline.'s/^'.a:char.' //ge'
	else
 		execute "silent ".(a:firstline).",".a:lastline.'s/^/'.a:char.' /ge'
	endif
endfunction

function! CommentOutSetChar(char)
	let g:commentout_chars = a:char
	" Insert Leading (chars)
	vnoremap il :call CommentOut(g:commentout_chars)<CR>
	" Remove Leading (chars)
	vnoremap rl :call CommentOut(g:commentout_chars)<CR>
endfunction

" Default Mappings

if !exists('g:commentout_chars')

	" Insert Leading (input text)
	vnoremap il :call CommentOut(input("Insert Leading Symbol: "))<CR>
	" Remove Leading (input text)
	vnoremap rl :call CommentOut(input("Remove Leading Symbol: "))<CR>

else
	
	" Insert Leading (default)
	vnoremap il :call CommentOut(g:commentout_chars)<CR>
	" Remove Leading (default)
	vnoremap rl :call CommentOut(g:commentout_chars)<CR>

endif

" vim:tabstop=2:
