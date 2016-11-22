;;The main part of the emacs starting script
;;All other parts are separated in other individual files

(require 'package)

;;Only need to use for aquamacs
;; (setq user-emacs-directory "~/.emacs.d")
;; (setq package-user-dir "~/emacs.d/elpa")

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (version< emacs-version "24")
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(defvar init-dir
  (file-name-directory load-file-name)
  "Directory of .emacs.d")

(defvar setting-dir
  (expand-file-name "settings" init-dir)
  "Directory for setting .el files")

(defvar vendor-dir
  (expand-file-name "vendor" init-dir)
  "Directory for hosting non-MELPA packages")

(defvar melpa-dir
  (expand-file-name "elpa" init-dir)
  "Directory for MELPA packages")

(add-to-list 'load-path setting-dir)
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path melpa-dir)

;; The custom setting should be loaded before the user scripts.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#5f5f5f" "#ff4b4b" "#a1db00" "#fce94f" "#5fafd7" "#d18aff" "#afd7ff" "#ffffff"])
 '(custom-safe-themes
   (quote
    ("dbb643699e18b5691a8baff34c29d709a3ff9787f09cdae58d3c1bc085b63c25" default)))
 '(org-agenda-files
   (quote
    ("~/polybox/Research/6-vdW-transparency/transparency_2D.org")))
 '(package-selected-packages
   (quote
    (ox-pandoc visual-fill-column org 2048-game cdlatex company-irony company-irony-c-headers flycheck-irony irony org-ref sublimity smooth-scrolling smart-mode-line-powerline-theme python-mode pyenv-mode py-autopep8 neotree moe-theme minimap matlab-mode magit latex-unicode-math-mode jedi helm-projectile helm-ls-git helm-gtags helm-flx ggtags flycheck flx-isearch exec-path-from-shell elpy auctex-latexmk 0blayout))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-install-selected-packages)

(load "envs.el")
(load "spell_conf.el")
(load "helm_conf.el")
(load "projectile_conf.el")
(load "ui.el")
(load "magit_conf.el")
(load "editor.el")
(load "python_conf.el")
(load "c_cpp_conf.el")
(load "org_conf.el")
(load "latex_conf.el")




