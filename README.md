# Ghost Emacs

<img src="ghost/logo.png" alt="logo" width="200"/>

**Contents**

- [Ghost Emacs](#ghost-emacs)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Packages](#packages)
- [Elisp Files](#elisp-files)
- [Keybinds](#keybinds)
- [License](#license)

This is my Emacs configuration which aims to enhance the default Emacs experience without requiring the user to go through a steep learning curve in order to enjoy using Emacs. It is heavily inspired by the [Howl editor](https://howl.io/), [Sanemacs](https://sanemacs.com/) and uses the Monokai color scheme. Ghost Emacs is degisned to be simple, based around [CUA Mode](https://www.emacswiki.org/emacs/CuaMode) keybinds, very few packages, and no external dependencies. I have tried to make the changes without heavily altering the default Emacs experience.

## Screenshots

<img src="ghost/screen1.png" alt="screen1" width="400"/>
<img src="ghost/screen2.png" alt="screen1" width="400"/>

## Installation

``` sh
git clone https://github.com/TeaSkittle/ghost-emacs ~/.emacs.d
```

## Packages

All of these packages are available and downloaded through MELPA

- rainbow-deilimiters
- monokai-theme
- dashboard
- mood-line
- racket-mode
- fish-mode

## Elisp Files

- init.el - General setting( visuals, defaults, etc... )
- pkg.el - Donwload and configure needed MELPA packages
- key.el - Keybind configuration [see section below](#keybinds)
- visuals.el - Theming and visual settings
- dump.el - Location for custom-file

## Keybinds

The changes made in key.el

| Keybinding        | elisp command               |  
|-------------------|-----------------------------|
| `C-f`             | isearch-forward             |  
| `C-b`             | switch-to-buffer            |  
| `C-w`             | kill-current-buffer         |  
| `C-s`             | save-buffer                 |  
| `C-o`             | find-file                   | 
| `C-<tab>`         | other-window                |
| `C-/`             | comment-line                |
| `M-S-<right>`     | split-window-right          |
| `M-S-<down>`      | split-window-below          |
| `M-S-<left>`      | split-window-vertically     |
| `M-S-<up>`        | split-window-horizontally   |
| `C-S-w`           | delete-window               |
| `C-S-q`           | delete-other-windows        |
| `M-a`             | mark-whole-buffer           |
| `M-<up>`          | move-line-up                |
| `M-<down>`        | move-line-down              |

## License
[GPLv3](https://choosealicense.com/licenses/gpl-3.0/)
