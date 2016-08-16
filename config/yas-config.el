(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets/custom"                 ;; personal snippets
        "~/.emacs.d/snippets/default"           ;; foo-mode and bar-mode snippet collection
        ))

(yas-global-mode 1)

(provide 'yas-config)
