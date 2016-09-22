;; Editor settings

;; In every buffer, the line which contains the cursor will be fully highlighted
(global-hl-line-mode 1)

;; Prevent backup files
(setq make-backup-files nil) 

;; Place auto-saves in the system temp directory
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; themes
;(load-theme 'ample t t)
;(load-theme 'ample-flat t t)
;(load-theme 'ample-light t t)
(load-theme 'seti t)
;(enable-theme 'ample-flat)

;; colors {{
(set-cursor-color "green")
(set-face-attribute 'region nil :background "#222")

;; }}

;; Add line nums
(global-linum-mode t)

;; Auto save active buffer
(add-hook 'focus-out-hook 'save-buffer)

;; Auto save all open buffers
;; (add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

;; Override from yes-or-no to y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; Highlight Indentation
(require 'highlight-indentation)

;; TabsAreEvil
;; (setq-default indent-tabs-mode nil)
;; (setq-default tab-width 4)

;; smex {{
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;; }}

;; expand-region {{
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
;; }} 
;; volitle-highlights {{
(require 'volatile-highlights)
(volatile-highlights-mode t)
;; }} 

;; powerline{{
(require 'powerline)
(powerline-default-theme)
;; }}

;; undo tree {{
(global-undo-tree-mode)
;; }}

(provide 'editor)
