;;;; srfi-236.lisp

(in-package #:srfi-236)


(defmacro independently (&body body)
  (let* ((body (shuffle body))
         (vars (loop :repeat (length body) :collect (gensym "th")))
         (bvl (mapcar (lambda (v b)
                        `(,v (make-thread (lambda () ,b nil)
                                          :name ',(string v))))
                      vars
                      body)))
    `(let (,@bvl)
       (declare (ignore ,@vars))
       ,@(mapcar (lambda (v)
                   `(join-thread ,v))
                 vars)
       (values))))


;;; *EOF*
