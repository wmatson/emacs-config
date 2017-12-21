(require-package 'projectile)
(require-package 'helm)
(require-package 'helm-projectile)

(setq projectile-indexing-method 'native)

(setq projectile-switch-project-action 'helm-projectile-find-file)
(helm-projectile-on)

(projectile-global-mode)

(add-to-list 'projectile-globally-ignored-directories "node_modules")
(add-to-list 'projectile-globally-ignored-directories "target")

(global-set-key (kbd "C-x C-f") 'helm-find-files)
