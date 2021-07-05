;;; Ghost Emacs

;; Useful defaults
(setq initial-scratch-message "")           ; Make *scratch* buffer blank
(setq-default frame-title-format '("%b"))   ; Make window title the buffer name
(setq ring-bell-function 'ignore)           ; Disable bell sound
(fset 'yes-or-no-p 'y-or-n-p)               ; y-or-n-p makes answering questions faster
(show-paren-mode 1)                         ; Show closing parens by default
(setq linum-format "%4d ")                  ; Line number format
(display-time-mode 1)                       ; Show current time in mode-line
(setq initial-scratch-message "")           ; Make *scratch* buffer blank
(setq-default frame-title-format '("%b"))   ; Make window title the buffer name
(setq ring-bell-function 'ignore)           ; Disable bell sound
(fset 'yes-or-no-p 'y-or-n-p)               ; y-or-n-p makes answering questions faster
(show-paren-mode 1)                         ; Show closing parens by default
(setq show-paren-delay 0)                   ; Quickly show matching parenthesis
(setq linum-format "%4d ")                  ; Line number format
(setq require-final-newline t)              ; Add newline at end of file if not there
(delete-selection-mode 1)                   ; Delete what is selected when typing
(setq frame-resize-pixelwise t)             ; Bug fix for spectrwm
(global-set-key [mouse-3]                  
                'mouse-popup-menubar-stuff) ; Gives right-click a context menu 
(add-hook 'prog-mode-hook                   
	  (if (and (fboundp 'display-line-numbers-mode)
		   (display-graphic-p))
	      #'display-line-numbers-mode
	    #'linum-mode))                      ; Show line numbers in programming modes
(setq read-process-output-max
              (* 1024 1024))                ; 1mb
(setq-default tab-width 4
              indent-tabs-mode nil)         ; Set tab to 4 spaces

;; Increases Garbage Collection During Startup
(setq startup/gc-cons-threshold gc-cons-threshold)
(setq gc-cons-threshold most-positive-fixnum)
(defun startup/reset-gc () (setq gc-cons-threshold startup/gc-cons-threshold))
(add-hook 'emacs-startup-hook 'startup/reset-gc)

;; Visuals
(global-hl-line-mode 1)                     ; Enable hl-line.el
(set-face-foreground 'highlight nil)        ; Keep foreground color
(blink-cursor-mode 0)                       ; Cursor blinking
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))                     ; Disable toolbar
(add-hook 'after-init-hook
          (lambda ()(load-theme 'monokai))) ; Load monokai-theme

;; Custom functions
(defun reload-config ()
  (interactive)
  (load-file (concat user-emacs-directory "~/.emacs.d/init.el")))

;; Load other elisp files
(add-to-list 'load-path "~/.emacs.d/ghost")
(setq custom-file "~/.emacs.d/ghost/dump.el")
(load custom-file)
(load "pkg.el")
(load "key.el")

