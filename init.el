;; requires package.el
(require 'package)
;; requires common lisp
(require 'cl)
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
						 ("org" . "http://orgmode.org/elpa/")
						 ("marmalade" . "http://marmalade-repo.org/packages/")
						 ))

(package-initialize)

(add-to-list 'load-path  "~/.emacs.d/config/")

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

