;; A minimalist setup for emacs on macos
;; Basically just fixes stuff that is is misconfigured by default on macos

;;emacs ui
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; fix env vars on macos
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))

;; often GPG decryption simply freaks out - this enforces the password prompt in the mini buffer
(setq epa-pinentry-mode 'loopback)

