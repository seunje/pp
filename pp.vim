let g:pp='/usr/local/bin/pp'
map p :Callpp
fu! _pp()
	let shellredir=&shellredir
	set shellredir=2>%s
	exe "normal :new
	let &shellredir=shellredir
	return a
endf
command! Callpp exe 'e ' . _pp()