(setq inhibit-startup-message t)
(tool-bar-mode -1)
(setq ring-bell-function (lambda () (message "*beep*")))

; frame height
(add-to-list 'default-frame-alist '(height . 66))
(add-to-list 'default-frame-alist '(width . 232))

; other libraries
(let ((default-directory "~/.emacs.d/lisp/"))
      (normal-top-level-add-to-load-path '("."))
      (normal-top-level-add-subdirs-to-load-path))

; marmalade package repo
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

; color-theme
(when (not (package-installed-p 'color-theme))
  (package-install 'color-theme))
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-subtle-hacker)))

; nrepl
(when (not (package-installed-p 'nrepl))
  (package-install 'nrepl))
(setq nrepl-popup-stacktraces nil)

; rainbow-delimiters
(when (not (package-installed-p 'rainbow-delimiters))
  (package-install 'rainbow-delimiters))
(global-rainbow-delimiters-mode)
