;;Prelude Specific Config
;; Disable super based keybindings
(setq prelude-super-keybindings nil)

;; Disable keychord mode (recommended when using evil-mode)
(setq key-chord-mode -1)

;; Package installation and configuarion (with use-package)
(require 'use-package)

;; Sets up emacs dashboard
;;(require 'dashboard)
;;(dashboard-setup-startup-hook)
;;(setq dashboard-items '((recents  . 10)
;;                        (projects . 10)
;;                        ))

;; evil-commentary
(use-package evil-commentary
  :ensure t
  :config (evil-commentary-mode))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents  . 10)
                          (projects . 10)
                          )))
;; Enables prettier globally
;; (global-prettier-mode)
;; (setenv "NODE_PATH" "/home/gabriel/.nvm/versions/node/v14.10.1/lib")
(use-package prettier
  :ensure t
  :config (global-prettier-mode))
;; Enables emmet mode
;; (add-hook 'html-mode-hook 'emmet-mode)
;; (add-hook 'css-mode-hook  'emmet-mode)
(use-package emmet-mode
  :ensure t
  :config (add-hook 'html-mode-hook 'emmet-mode) (add-hook 'css-mode-hook  'emmet-mode)
  )
