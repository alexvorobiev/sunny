(defun set-erlang/elixir-source (&rest args)
    (when (eq major-mode 'elixir-mode)
        (when-let* ((erlang-src (getenv "ERLANG_SRC")))
          (setq-local alchemist-goto-erlang-source-dir erlang-src))
        (when-let* ((elixir-src (getenv "ELIXIR_SRC")))
          (setq-local alchemist-goto-elixir-source-dir elixir-src))))

(advice-add 'direnv-update-directory-environment :after #'set-erlang/elixir-source)

(add-to-list
 'load-path
 (string-join
  (append
   (remove-if-not
    '(lambda (str) (string-match-p "lilypond" str))
    (split-string (getenv "XDG_DATA_DIRS") ":"))
   '("/emacs/site-lisp"))))

(use-package lilypond-mode
  :ensure nil
  :mode ("\\.ly\\'" . LilyPond-mode))
