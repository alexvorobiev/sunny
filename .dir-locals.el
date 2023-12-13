((nil . ((eval . (progn
                   (eval-and-compile
                     (defun lilypond-load-path ()
                       (string-join
                        (append
                         (cl-remove-if-not
                          '(lambda (str) (string-match-p "lilypond" str))
                          (split-string (getenv "XDG_DATA_DIRS") ":"))
                         '("/emacs/site-lisp")))))

                   (use-package lilypond-mode
                     :load-path (lambda () (list (lilypond-load-path)))
                     :mode ("\\.ly\\'" . LilyPond-mode)))))))
