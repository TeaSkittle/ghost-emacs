# Ghost Emacs

<img src="ghost/logo.png" alt="logo" width="200"/>

This Emacs configuration aims to enhance the default Emacs expericine without requiring the user to go through a steep learning curve in order to enjoy using Emacs. It is heavily inspired by the [Howl editor](https://howl.io/) and uses the Monokai color theme. Ghost Emacs is degisned to be simple, based around [CUA Mode](https://www.emacswiki.org/emacs/CuaMode) keybinds, very few packages, and no external dependencies. 

## Installation

``` sh
git clone https://github.com/TeaSkittle/ghost-emacs/ ~/.emacs.d
```

## Changed Keybinds


| Keybinding        | elisp command                        |  
|-------------------|--------------------------------------|
| `C-f`             | isearch-forward                      |  
| `C-b`             | switch-to-buffer                     |  
| `C-w`             | kill-current-buffer                  |  
| `C-s`             | save-buffer                          |  
| `C-o`             | find-file                            | 
| `C-<tab>`         | other-window                         |  

## License
[GPLv3](https://choosealicense.com/licenses/gpl-3.0/)
