# vim-espeaker

Vim is an incredible text editor. Its 'normal mode' with commands not only makes it very convinient for expirienced users but also fits better for people with vision problems or disability. This plugin allows the editor to utter the text.

## Features
* Pronounce the current line
* Pronounce the current character
* Pronounce the current word
* Pronounce the current position and the mode

## Requirements

* espeak

## Installation
Clone the repository into a directory in your 'runtimepath', or use a plugin manager like [vundle](https://github.com/VundleVim/Vundle.vim) or [pathogen](https://github.com/tpope/vim-pathogen).

## Plugin Configuration
 In your .vimrc:
* Set the synthesizer (optional, default is espeak. espeak-ng is also supported):
 - `let g:espeaker_synthesizer=espeak`
* Set the synthesizer's speed in words per minute (optional, default is 200):
 - `let g:espeaker_speed=200`
* Set the list of symbols that should be read aloud (optional, default is `"''$@#!.[\"]{}()_-/\\<>~,:;+-*\``%^&"`):
 - `let g:espeaker_punct=''"''$@#!.[\"]{}()_-/\\<>~,:;+-*\``%^&"''`
* Set the voice for the synthesizer to use (optional, default is `default`):
 - `let g:espeaker_voice='default'`

## Add keymappings:
```
noremap <F3> : call SpeakLine()<CR>
noremap <F5> : call SpeakChar()<CR>
noremap <F6> : call SpeakWord()<CR>

nnoremap <F4> :call SpeakStatus('normal')<CR>
xnoremap <F4> :<C-u>call SpeakStatus('visual') <CR>: normal! gv<CR>
inoremap <F4> <C-o>:call SpeakStatus('insert')<CR>
```
