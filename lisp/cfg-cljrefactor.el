;; clj-refactor and dependencies
(require-package 'cider)
(require-package 'clj-refactor)

(add-hook 'clojure-mode-hook
	  (lambda ()
	    (clj-refactor-mode 1)
	    ;; insert keybinding setup here
	    (cljr-add-keybindings-with-prefix "C-c RET")
            (linum-mode 1)))

(add-hook 'clojure-mode-hook #'yas-minor-mode)

;; no auto sort
(setq cljr-auto-sort-ns nil)

;; do not prefer prefixes when using clean-ns
(setq cljr-favor-prefix-notation nil)
