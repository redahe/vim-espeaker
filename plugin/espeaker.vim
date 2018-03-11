function! Speak(text)
let g:espeaker_punct       = get(g:, 'espeaker_punct', '$''@#!.[\"]{}/()_-\\<>~,:;+-*\`%^&')
let g:espeaker_speed       = get(g:, 'espeaker_speed', 200)
let g:espeaker_synthesizer = get(g:, 'espeaker_synthesizer', 'espeak')
let g:espeaker_voice       = get(g:, 'espeaker_voice', 'default')
let command=g:espeaker_synthesizer  . 
  \ ' -v ' . g:espeaker_voice .
  \ ' -s ' . g:espeaker_speed .
  \ ' --punct="' . g:espeaker_punct .
  \ '" &'
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
