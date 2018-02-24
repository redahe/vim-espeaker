function! Speak(text)
let firstarg=a:text
let punct = '"''$@#!.[\"]{}()_-/\\<>~,:;+-*\`%^&"'
let command='espeak -s 250 --punct=' . punct .' &'
echom system(command, firstarg)
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
