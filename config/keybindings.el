;; dired {{
(define-key dired-mode-map "c"
  (lambda () (interactive) (find-file "untitled.txt")))

;; allow for tab completion in helm buffer
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(global-set-key (kbd "C-M-x") 'kill-other-buffers)
;; }}

