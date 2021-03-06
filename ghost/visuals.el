;;; visuals.el
;;; Ghost Emacs themeing and visual settings

;; Nice visual defaults
(display-time-mode 1)                       ; Show current time in mode-line
(setq-default frame-title-format '("%b"))   ; Make window title the buffer name
(setq frame-resize-pixelwise t)             ; Bug fix for spectrwm
(setq linum-format "%4d ")                  ; Line number format
(show-paren-mode 1)                         ; Show closing parens by default
(global-hl-line-mode 1)                     ; Enable hl-line.el
(set-face-foreground 'highlight nil)        ; Keep foreground color
(blink-cursor-mode 0)                       ; Disable cursor blinking
(setq-default cursor-type 'bar)             ; Set cursor to bar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1)) ; Disable toolbar

;; Enable line numbers in all modes
(global-display-line-numbers-mode)

;; Load theme
(add-hook 'after-init-hook (lambda ()(load-theme 'monokai)))
