;; Startup stuff
(setq inhibit-splash-screen t
	  initial-scratch-message nil
	  initial-frame-alist (quote ((fullscreen . maximized))))

;; Open neotree and switch to Code dir
(neotree-toggle)
(neotree-dir "~/Code")
;; switch to scratch buffer
(if (get-buffer "*scratch*")
	(switch-to-buffer-other-window "*scratch*")
	(message ""))


; Change custom file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'startup)
