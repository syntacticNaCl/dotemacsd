(defun switch-to-previous-buffer ()
    "Switch to most recent buffer. Repeated calls toggle back and forth between the most recent two buffers."
	  (interactive)
	    (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun kill-other-buffers ()
    "Kill all other buffers."
    (interactive)
    (mapc 'kill-buffer 
          (delq (current-buffer) 
                (remove-if-not 'buffer-file-name (buffer-list)))))

(provide 'funcs)
