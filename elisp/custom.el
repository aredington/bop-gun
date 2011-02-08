;; start up globally desirable minor modes
(ido-mode)
(textmate-mode)
(smex-initialize)
(ac-config-default)

;; custom keybindings
;; SMEX:
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Select the color theme
(color-theme-ir-black)