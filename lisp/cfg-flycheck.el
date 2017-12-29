;; manual dependencies
(add-to-list 'load-path (concat user-emacs-directory "site-lisp/" "flycheck-20150207.329"))

(require-package 'let-alist)
(require-package 'flycheck-clojure)
(require-package 'use-package)

(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(use-package flycheck-clojure
  :commands (flycheck-clojure-setup)
  :init
  (add-hook 'clojure-mode-hook
            (lambda ()
              (eval-after-load 'flycheck
                '(flycheck-clojure-setup)))))
