(defvar prelude-packages
  '(
	 ac-html
	 ac-emmet
         ample-theme
	 better-defaults
	 company
	 company-c-headers
	 company-shell
	 company-web
	 emmet-mode
	 evil
	 evil-leader
	 evil-surround
	 evil-smartparens
	 evil-easymotion
	 evil-matchit
	 evil-nerd-commenter
	 expand-region
	 flymake
	 git-gutter
	 highlight-indentation
	 ido-ubiquitous
	 js2-mode
	 key-chord
	 magit
	 neotree
	 paredit
	 powerline
	 powerline-evil
	 projectile
	 rainbow-delimiters
	 seti-theme
	 smart-mode-line
	 smart-mode-line-powerline-theme
	 smex
	 undo-tree
	 visual-regexp-steroids
	 volatile-highlights
	 web-mode
	 yasnippet
	 )
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'packages)
;;; my-package-prefetch.el ends here
