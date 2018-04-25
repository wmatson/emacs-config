(require-package 'flycheck)
(require-package 'let-alist)
(require-package 'flycheck-clojure)
(require-package 'use-package)
(require-package 'flycheck-pos-tip)

(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))


(setq flycheck-pos-tip-timeout -1)

(eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

(use-package flycheck-clojure
  :commands (flycheck-clojure-setup)
  :init
  (add-hook 'clojure-mode-hook
            (lambda ()
              (eval-after-load 'flycheck
                '(flycheck-clojure-setup)))))
