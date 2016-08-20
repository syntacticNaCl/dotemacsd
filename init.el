;; requires package.el
(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)


;; requires common lisp
(require 'cl)
	

(add-to-list 'load-path  "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/custom-packages/helm/")
(add-to-list 'load-path "~/.emacs.d/custom-packages/emacs-async/")

(require 'packages)
(require 'startup)
(require 'editor)
(require 'evil-config)
(require 'neotree-config)
(require 'web-config)
(require 'git-config)
(require 'handlers)
(require 'paredit)
(require 'funcs)
(require 'yas-config)
(require 'helm-conf)
(require 'js2-config)
