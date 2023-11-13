;;;; package.lisp

(cl:in-package cl-user)

(defpackage #:srfi-236
  (:use :cl :alexandria :bordeaux-threads-2)
  (:export independently))
