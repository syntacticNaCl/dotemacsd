(require 'evil)
(global-evil-leader-mode)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "<tab>") (kbd ">>"))
(define-key evil-normal-state-map (kbd "C-j") (kbd "5j"))
(define-key evil-normal-state-map (kbd "C-k") (kbd "5k"))

;;Exit insert mode by pressing j and then j quickly
(require 'key-chord)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

(evil-leader/set-leader ",")

(evil-leader/set-key
  "b" 'helm-buffers-list
  "E" 'eval-defun
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
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  )

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-smartparens)
(add-hook 'web-enabled-hook 'evil-smartparens-mode)
(add-hook 'php-enabled-hook 'evil-smartparens-mode)

(require 'evil-matchit)
(global-evil-matchit-mode 1)

;; Overload shifts so that they don't lose the selection
;; Props to https://github.com/djoyner. This was driving me insane!
(define-key evil-visual-state-map (kbd ">") 'custom-evil-shift-right-visual)
(define-key evil-visual-state-map (kbd "<") 'custom-evil-shift-left-visual)
(define-key evil-visual-state-map [tab] 'custom-evil-shift-right-visual)
(define-key evil-visual-state-map [S-tab] 'custom-evil-shift-left-visual)

(defun custom-evil-shift-left-visual ()
  (interactive)
  (evil-shift-left (region-beginning) (region-end))
  (evil-normal-state)
  (evil-visual-restore))

(defun custom-evil-shift-right-visual ()
  (interactive)
  (evil-shift-right (region-beginning) (region-end))
  (evil-normal-state)
  (evil-visual-restore))

;; end evil-config
(provide 'evil-config)
