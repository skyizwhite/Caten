(in-package :caten/ajit)
;;
;; Device. An abstraction class for the renderer.
;;
;;

(defclass Device () nil)
;; Configurations
(defgeneric default-device (device-prefix) (:documentation "Returns a default device class dispatched by the device-prefix."))
(defgeneric device-parallel-depth (device-prefix) (:documentation "Return a fixnum indicating n outermost loops are parallelized."))
(defgeneric device-packed-by (device-prefix) (:documentation "Funcall is packed by the returned value of this method. Default: 1 (ignored)"))
(defmethod device-packed-by ((device-prefix t)) 1)
