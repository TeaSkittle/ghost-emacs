;;; key.el
;;; Change abnd modified keybinds

;; CUA Mode
(cua-mode t)

;; Disable keys
(global-unset-key (kbd "<insert>"))
(global-unset-key (kbd "C-/"))

;; Change escape behavior
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(define-key key-translation-map (kbd "C-<escape>") (kbd "ESC"))

;;Set keys
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "C-w") 'kill-current-buffer)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-/") 'comment-line)
(global-set-key (kbd "C-M-v") 'split-window-vertically)
(global-set-key (kbd "C-M-h") 'split-window-horizontally)
(global-set-key (kbd "C-S-w") 'delete-window)
(global-set-key (kbd "C-M-w") 'delete-other-windows)
(global-set-key (kbd "M-a") 'mark-whole-buffer)

;; buffer-move
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

;; Keybinds for below custom functions
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "<f5>") 'reload-config)

;; Reload config
(defun reload-config ()
  (interactive)
  (load-file (concat user-emacs-directory "~/.emacs.d/init.el")))

;; Move line up
;; https://emacsredux.com/blog/2013/04/02/move-current-line-up-or-down/
(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))
;; Move line down
(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

