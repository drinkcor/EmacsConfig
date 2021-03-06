;;; nodejs-repl-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (nodejs-repl nodejs-repl-switch-to-repl nodejs-repl-send-last-sexp
;;;;;;  nodejs-repl-load-file nodejs-repl-send-buffer nodejs-repl-send-region)
;;;;;;  "nodejs-repl" "nodejs-repl.el" (22679 13412 585171 532000))
;;; Generated autoloads from nodejs-repl.el

(autoload 'nodejs-repl-send-region "nodejs-repl" "\
Send the current region to the `nodejs-repl-process'

\(fn START END)" t nil)

(autoload 'nodejs-repl-send-buffer "nodejs-repl" "\
Send the current buffer to the `nodejs-repl-process'

\(fn)" t nil)

(autoload 'nodejs-repl-load-file "nodejs-repl" "\
Load the file to the `nodejs-repl-process'

\(fn FILE)" t nil)

(autoload 'nodejs-repl-send-last-sexp "nodejs-repl" "\
Send the expression before point to the `nodejs-repl-process'

\(fn)" t nil)

(autoload 'nodejs-repl-switch-to-repl "nodejs-repl" "\
If there is a `nodejs-repl-process' running switch to it,
otherwise spawn one.

\(fn)" t nil)

(autoload 'nodejs-repl "nodejs-repl" "\
Run Node.js REPL.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("nodejs-repl-pkg.el") (22679 13412 656422
;;;;;;  647000))

;;;***

(provide 'nodejs-repl-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; nodejs-repl-autoloads.el ends here
