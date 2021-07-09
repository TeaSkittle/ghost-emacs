;;; Ghost Emacs

;; Useful defaults
(setq initial-scratch-message "")           ; Make *scratch* buffer blank
(setq-default frame-title-format '("%b"))   ; Make window title the buffer name
(setq ring-bell-function 'ignore)           ; Disable bell sound
(fset 'yes-or-no-p 'y-or-n-p)               ; y-or-n-p makes answering questions faster
(setq initial-scratch-message "")           ; Make *scratch* buffer blank
(setq ring-bell-function 'ignore)           ; Disable bell sound
(fset 'yes-or-no-p 'y-or-n-p)               ; y-or-n-p makes answering questions faster
(setq show-paren-delay 0)                   ; Quickly show matching parenthesis
(setq require-final-newline t)              ; Add newline at end of file if not there
(delete-selection-mode 1)                   ; Delete what is selected when typing
(setq auto-save-default nil)                ; Stop creating #autosave# files 
(setq read-process-output-max (* 1024 1024))    ; 1mb
(setq-default tab-width 4 indent-tabs-mode nil) ; Set tab to 4 spaces
(global-set-key [mouse-3]'mouse-popup-menubar-stuff) ; Gives right-click a context menu

;; Increases Garbage Collection During Startup
(setq startup/gc-cons-threshold gc-cons-threshold)
(setq gc-cons-threshold most-positive-fixnum)
(defun startup/reset-gc () (setq gc-cons-threshold startup/gc-cons-threshold))
(add-hook 'emacs-startup-hook 'startup/reset-gc)

;; Load other elisp files
(add-to-list 'load-path "~/.emacs.d/ghost")
(setq custom-file "~/.emacs.d/ghost/dump.el")
(load custom-file)
(load "pkg.el")
(load "key.el")
(load "visuals.el")

