;; User-defined functions and macros

;; Checks if library is availible and only do stuff if library is availible.
(defmacro with-library (symbol &rest body)
      `(condition-case nil
           (progn
             (require ',symbol)
             ,@body)
         (error (message (format "Library %s is not available." ',symbol))
                nil)))
    (put 'with-library 'lisp-indent-function 1)

;; Loads all .el files in directory.
(defun load-directory (dir)
      (let ((load-it (lambda (f)
		       (load-file (concat (file-name-as-directory dir) f)))
		     ))
	(mapc load-it (directory-files dir nil "\\.el$"))))
