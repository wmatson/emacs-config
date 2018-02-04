(require-package 'tagedit)

(defun html-tagedit-kbd ()
  "To set keybindings for html-mode tagedit"
  (local-set-key (kbd "M-F") 'tagedit-forward-slurp-tag)
  (local-set-key (kbd "M-B") 'tagedit-forward-barf-tag)
  (local-set-key (kbd "M-r") 'tagedit-raise-tag)
  (local-set-key (kbd "M-s") 'tagedit-splice-tag)
  (local-set-key (kbd "M-J") 'tagedit-join-tags)
  (local-set-key (kbd "M-S") 'tagedit-split-tag)
  (local-set-key (kbd "M-?") 'tagedit-convolute-tags)
  (local-set-key (kbd "C-k") 'tagedit-kill)
  (local-set-key (kbd "C-M-k") 'tagedit-kill-attribute))

(add-hook 'html-mode-hook 'html-tagedit-kbd)
