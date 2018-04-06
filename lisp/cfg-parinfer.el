(require-package 'parinfer)
(require-package 'paredit)

;; Parinfer
(require 'parinfer)
(progn (setq parinfer-extensions
             '(defaults
                pretty-parens
                smart-yank
                paredit)))
               
(add-hook 'lisp-mode-hook #'parinfer-mode)
(add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
(add-hook 'clojure-mode-hook #'parinfer-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)

(global-set-key (kbd "C-'") 'parinfer-toggle-mode)

