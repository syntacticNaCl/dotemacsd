;; dired {{
(define-key dired-mode-map "c"
  (lambda () (interactive) (find-file "untitled.txt")))
;; }}


;;Exit insert mode by pressing j and then j quickly
(require 'key-chord)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)
