function! Speak(text)
let g:espeaker_speed = get(g:, 'espeaker_speed', 200)
let punct = '"''$@#!.[\"]{}()_-/\\<>~,:;+-*\`%^&"'
let command='espeak -s ' . g:espeaker_speed .' --punct=' . punct .' &'
echom system(command, a:text)
endfunction


function! SpeakLine()
let line=getline('.')
call Speak(line)
endfunction


function! SpeakStatus(mode)
call Speak(line('.') . ' '. virtcol('.') . ' ' . a:mode)
endfunction

function! SpeakChar()
call Speak(matchstr(getline('.'), '\%' . col('.') . 'c.'))
endfunction

function! SpeakWord()
call Speak(expand("<cword>"))
endfunction
