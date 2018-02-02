"" TEMPLATE LOADERS

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r /Users/Em/.vim/skeleton.sh
  augroup END
endif
