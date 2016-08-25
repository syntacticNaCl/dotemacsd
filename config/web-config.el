(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; emmet-mode {{
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'web-mode-hook  'emmet-mode) ;; enable Emmet's web abbreviation.
(setq emmet-move-cursor-between-quotes t) ;; default nil

;;}}

;; company-mode {{
(add-hook 'after-init-hook 'global-company-mode)
(require 'company)                                   ; load company mode
(require 'company-web-html)                          ; load company mode html backend
;; }}

;; php-mode {{
(require 'php-mode)
;; }}

;; smartparens {{
(require 'smartparens-config)
(add-hook 'js-mode-hook 'smartparens-mode)
(add-hook 'php-mode-hook 'smartparens-mode)
(add-hook 'company-mode-hook 'smartparens-mode)
;; }}



(provide 'web-config)
