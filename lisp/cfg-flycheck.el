(require-package 'flycheck)
(require-package 'let-alist)
(require-package 'flycheck-clojure)
(require-package 'use-package)

(add-hook 'after-init-hook #'global-flycheck-mode)

(use-package flycheck-clojure
  :commands (flycheck-clojure-setup)
  :init
  (add-hook 'clojure-mode-hook
            (lambda ()
              (eval-after-load 'flycheck
                '(flycheck-clojure-setup)))))
