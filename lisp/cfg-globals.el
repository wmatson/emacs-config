(global-set-key "\C-x\C-b" 'buffer-menu)
(show-paren-mode 1)
(tool-bar-mode -1)

;; comments
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)
