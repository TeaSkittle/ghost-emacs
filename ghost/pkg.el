;;; pkg.el
;;; Set up and install external packages seperately from init.el

;; Setup package.el
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(unless package--initialized (package-initialize))

;; Fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; List of packages
(setq package-list
      '(rainbow-delimiters monokai-theme dashboard mood-line racket-mode fish-mode
                           markdown-mode buffer-move))

;; Install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome to Ghost Emacs")
(setq dashboard-startup-banner "~/.emacs.d/ghost/logo.png")
(setq dashboard-items '((recents . 15)))

;; Rainbow-delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Mood-line
(require 'mood-line)
(mood-line-mode)

