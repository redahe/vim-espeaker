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

The package is compatible with standard vim plugin manageres (vundle / pathogen)

## Configuration

* In your .vimrc
  Set the espeak's speed in words per minute:


   let g:espeaker_speed=200

* Add keymappings:
  map <F3> : call SpeakLine()<CR>
  map <F5> : call SpeakChar()<CR>
  map <F6> : call SpeakWord()<CR>

  nnoremap <F4> :call SpeakStatus('normal')<CR>
  vnoremap <F4> :<C-u>call SpeakStatus('visual') <CR>: normal gv<CR>
  inoremap <F4> <C-o>:call SpeakStatus('insert')<CR>
