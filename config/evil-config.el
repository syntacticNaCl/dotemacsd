(require 'evil)
(global-evil-leader-mode)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "<tab>") (kbd ">>"))
(define-key evil-normal-state-map (kbd "C-j") (kbd "5j"))
(define-key evil-normal-state-map (kbd "C-k") (kbd "5k"))

(evil-leader/set-leader ",")

(evil-leader/set-key
  "b" 'ibuffer
  "f" 'find-file
  "l" 'switch-to-previous-buffer
  "F" 'find-file-other-window
  "k" 'kill-buffer
  "K" 'kill-buffer-and-window
  "s" 'save-buffer
  "P" 'package-install
  "DD" 'delete-file
  "w" 'split-window-right
  "+" 'balance-windows
  "-" 'split-window-below
  "x" 'delete-window
  "t" 'neotree-toggle
  "ci" 'evilnc-comment-or-uncomment-lines
  ; "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  ; "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  ; "cc" 'evilnc-copy-and-comment-lines
  ; "cp" 'evilnc-comment-or-uncomment-paragraphs
  ; "cr" 'comment-or-uncomment-region
  ; "cv" 'evilnc-toggle-invert-comment-line-by-line
  ; "\\" 'evilnc-comment-operator ; if you prefer backslash key
  )

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-smartparens)
(add-hook 'web-enabled-hook 'evil-smartparens-mode)
(add-hook 'php-enabled-hook 'evil-smartparens-mode)

(require 'evil-matchit)
(global-evil-matchit-mode 1)

;; end evil-config
(provide 'evil-config)
