(setq c-mode-hook (function (lambda ()
                              (setq indent-tabs-mode nil)
                              (setq c-indent-level 4))))
(setq c++-mode-hook (function (lambda ()
                                (setq indent-tabs-mode nil)
                                (setq c-indent-level 4))))
(setq objc-mode-hook (function (lambda ()
                                 (setq indent-tabs-mode nil)
                                 (setq c-indent-level 4))))

(add-hook 'c-mode-hook 'highlight-word-hook)
(add-hook 'c++-mode-hook 'highlight-word-hook)
(add-hook 'objc-mode-hook 'highlight-word-hook)