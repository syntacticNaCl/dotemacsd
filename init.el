;; requires package.el
(require 'package)
;; requires common lisp
(require 'cl)
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
	'package-archives
	'(("melpa" . "http://melpa.org/packages/")
	  ("org" . "http://orgmode.org/elpa/")
	  ("marmalade" . "http://marmalade-repo.org/packages/")))
  (package-initialize))


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
