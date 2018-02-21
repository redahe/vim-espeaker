function! Speak(text)

let firstarg=a:text
python3 << EOF
import vim
import sh

PUNCT='$%^*-+`~|<>?!@[],.;:\'"(){}/\\'

text=(vim.eval("a:text"))
sh.espeak('--punct='+PUNCT, text, '-s 250')

EOF
endfunction


function! SpeakLine()
let line=getline('.')
call Speak(line)
endfunction


function! SpeakStatus()
call Speak(line('.') . ' '. virtcol('.') . ' ')
endfunction

function! SpeakChar()
call Speak(matchstr(getline('.'), '\%' . col('.') . 'c.'))
endfunction

function! SpeakWord()
call Speak(expand("<cword>"))
endfunction
