(defun switch-to-previous-buffer ()
    "Switch to most recent buffer. Repeated calls toggle back and forth between the most recent two buffers."
	  (interactive)
	    (switch-to-buffer (other-buffer (current-buffer) 1)))

(provide 'funcs)
