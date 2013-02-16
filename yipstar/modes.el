;; ido
(ido-mode t)

(load "yipstar/ruby")
(load "yipstar/javascript")

;; scss
(require 'scss-mode-autoloads)

;; textmate
(require 'textmate-autoloads)
(textmate-mode)

;; flymake
(load "yipstar/flymake")

;; twittering
;; TODO: turn on auto word wrap in twittering-mode
(require 'twittering-mode-autoloads)

;; electrir-pair-mode for completing quotes, etc
(electric-pair-mode t)

;; objc-mode
(add-hook 'objc-mode-hook (lambda () (subword-mode t)))

;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/senny-emacs-xcode/"))
;; (require 'xcode)

(load "yipstar/xcodebuild")

;; yaml-mode
(require 'yaml-mode-autoloads)

;; magit
(require 'magit-autoloads)

;; csv
(require 'csv-mode-autoloads)
;; (autoload 'csv-mode "csv-mode"
;;   "Major mode for editing comma-separated value files." t)
;; (require 'csv-mode)

(require 'coffee-mode-autoloads)
(defun coffee-custom ()
  "coffee-mode-hook"

  ;; CoffeeScript uses two spaces.
  (make-local-variable 'tab-width)
  (set 'tab-width 2)

  ;; ;; If you don't want your compiled files to be wrapped
  ;; (setq coffee-args-compile '("-c" "--bare"))

  ;; ;; Emacs key binding
  ;; (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)

  ;; ;; Riding edge.
  ;; (setq coffee-command "~/dev/coffee")

  ;; ;; Compile '.coffee' files on every save
  ;; (and (file-exists-p (buffer-file-name))
  ;;      (file-exists-p (coffee-compiled-file-name))
  ;;      (coffee-cos-mode t)))
  )

(add-hook 'coffee-mode-hook 'coffee-custom)

;; osx/xcode c++ files
(add-to-list 'auto-mode-alist '("\\.mm\\'" . c++-mode))
(defun my-c++-mode-hook ()
  (setq c-basic-offset 4))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
