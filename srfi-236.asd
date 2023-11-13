;;;; srfi-236.asd

(cl:in-package :asdf)


(defsystem :srfi-236
  :version "20221204"
  :description "SRFI 236 for CL: Evaluating expressions in an unspecified"
  :long-description "SRFI 236 for CL: Evaluating expressions in an unspecified
https://srfi.schemers.org/srfi-236"
  :author "CHIBA Masaomi"
  :maintainer "Fermin MF"
  :serial t
  :depends-on (:alexandria :bordeaux-threads)
  :components ((:file "package")
               (:file "srfi-236")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-236))))
  (let ((nickname :srfi-236))
    (when (find-package nickname)
        (warn "~A: A package with name ~A already exists."
              nickname nickname))))

;;; *EOF*
