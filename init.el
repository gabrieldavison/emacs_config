;;Prelude Specific Config
;; Disable super based keybindings
(setq prelude-super-keybindings nil)

;; Disable keychord mode (recommended when using evil-mode)
(setq key-chord-mode -1)

;; Disable smartparens strict
(setq smartparens-strict-mode nil)

;; Package installation and configuarion (with use-package)
(require 'use-package)

;; evil-commentary
(use-package evil-commentary
  :ensure t
  :config (evil-commentary-mode))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents  . 20)))
  (setq dashboard-set-footer nil)
  (setq dashboard-startup-banner nil))

;; Enables prettier globally
;; Might need to add this to get it to work on linux
;; (setenv "NODE_PATH" "/home/gabriel/.nvm/versions/node/v14.10.1/lib")
(use-package prettier
  :ensure t
  :config (global-prettier-mode))

;; Enables emmet mode
(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'html-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode))
