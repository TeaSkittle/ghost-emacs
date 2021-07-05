;;; key.el
;;; Change abnd modified keybinds

(cua-mode t)                         ; Set C-c, C-x, anc C-v to normal
(global-unset-key (kbd "<insert>"))  ; Disable insert key
(global-unset-key (kbd "C-/"))
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "C-w") 'kill-current-buffer)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-/") 'comment-line)
(global-set-key (kbd "M-S-<right>") 'split-window-right)
(global-set-key (kbd "M-S-<down>") 'split-window-below)
(global-set-key (kbd "M-S-<left>") 'split-window-vertically)
(global-set-key (kbd "M-S-<up>") 'split-window-horizontally)
(global-set-key (kbd "C-S-w") 'delete-window)
(global-set-key (kbd "C-S-q") 'delete-other-windows)
(global-set-key (kbd "M-a") 'mark-whole-buffer)
