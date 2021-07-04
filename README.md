# Ghost Emacs

<img src="ghost/logo.png" alt="logo" width="200"/>

This Emacs configuration aims to enhance the default Emacs experience without requiring the user to go through a steep learning curve in order to enjoy using Emacs. It is heavily inspired by the [Howl editor](https://howl.io/) and uses the Monokai color scheme. Ghost Emacs is degisned to be simple, based around [CUA Mode](https://www.emacswiki.org/emacs/CuaMode) keybinds, very few packages, and no external dependencies. 

## Installation

``` sh
git clone https://github.com/TeaSkittle/ghost-emacs ~/.emacs.d
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
| `C-/`             | comment-line                         |
| `M-S-<right>`     | split-window-right                   |
| `M-S-<down>`      | split-window-below                   |
| `M-S-<left>`      | split-window-vertically              |
| `M-S-<up>`        | split-window-horizontally            |
| `C-S-w`           | delete-window                        |
| `C-S-q`           | delete-other-windows                 |

## License
[GPLv3](https://choosealicense.com/licenses/gpl-3.0/)
