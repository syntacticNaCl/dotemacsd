;; Startup stuff
(setq inhibit-splash-screen t
	  initial-scratch-message nil
	  initial-frame-alist (quote ((fullscreen . maximized))))
; Change custom file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'startup)
