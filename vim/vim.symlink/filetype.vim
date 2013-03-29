runtime! ftdetect/*.vim

if has("autocmd")

  " Syntax of these languages are fussy over tabs vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileTYpe ruby setlocal ts=2 sts=2 sw=2 expandtab

  " Treat these files differently
  autocmd BufRead,BufNewFile *.ino setfiletype cpp
  autocmd BufRead,BufNewFile *.pde setfiletype cpp
  autocmd BufRead,BufNewFile *.rss setfiletype xml
endif
