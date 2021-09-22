;;Prelude Specific Config
;; Disable super based keybindings
(setq prelude-super-keybindings nil)

;; Disable keychord mode (recommended when using evil-mode)
(setq key-chord-mode -1)

;; Allows use of arrow keys in evil-insert-mode
(define-key evil-insert-state-map (kbd "<up>") nil)
(define-key evil-insert-state-map (kbd "<down>") nil)

(define-key evil-insert-state-map (kbd "<up>") 'evil-previous-line)
(define-key evil-insert-state-map (kbd "<down>") 'evil-next-line)

;; Gets rid of wrod-wrap highlighting in whitespace mode
(setq whitespace-style (delete 'lines-tail whitespace-style))

;; Enables line wrapping in org mode
(add-hook 'org-mode-hook #'(lambda ()
                             ;; make the lines in the buffer wrap around the edges of the screen.
                             ;; to press C-c q  or fill-paragraph ever again!
                             (visual-line-mode)
                             (org-indent-mode)))

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
