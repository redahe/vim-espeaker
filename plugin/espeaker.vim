
" Vim comments start with a double quote.
" Function definition is VimL. We can mix VimL and Python in
" function definition.
function! Speak(text)

" We start the python code like the next line.
let firstarg=a:text
python3 << EOF
import vim
import sh

PUNCT='$%^*-+`~|<>?!@[],.;:\'"(){}/\\'

text=(vim.eval("a:text"))
sh.espeak('--punct='+PUNCT, text, '-s 200')

EOF
endfunction


function! SpeakLine()
let line=getline('.')
call Speak(line)
endfunction
