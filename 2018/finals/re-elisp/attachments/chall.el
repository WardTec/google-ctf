1. Open this file in Emacs
2. Enter the flag here: CTF{XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX}
3. Place your cursor here and press C-M-x
                     |
                     |
+--------------------+
|
|
v
(when t
  (setq max-lisp-eval-depth 200000)
  (setq max-specpdl-size 200000)
  (defun n () (forward-list) (eval-last-sexp nil))
  (defun f (a) (forward-char a) (eval-last-sexp nil))
  (defun b (a) (backward-char a) (eval-last-sexp nil))
  (defmacro fi (c a) `(if ,c (f ,a) (n)))
  (defmacro bi (c a) `(if ,c (b ,a) (n)))
  (defmacro s (r v) `(when t (setq ,r ,v) (n)))
  (defmacro lc (r p) `(s ,r (% (char-after (1+ ,p)) 256)))
  (defmacro si (v i r) `(when t (aset ,v ,i ,r) (n)))
  (defmacro li (r v i) `(s ,r (aref ,v ,i)))
  (defun p (m) (delete-and-extract-region 266 (1+ (buffer-size))) (insert m))
  (f  916))

Q)M9 &	SKI>2'<U:@AP(4+D/HB%7.O ;5ERV=L-0ZCT#F
JXW3,"NYG1?8!$6*�0t]=nM7ks�4�^	��+3�x�l�Rp?�3ᴎ@I�,;XHzt�H� <3\�'ik�Hڴg�
L_O_DS�_t���_�����4�_4:)1BV,M68<TIY.?	GJ50@W9ZAE+(*HC!7;" NXQU=$%RP>#DF/SKO
 'L3-2&(s gn (make-vector 91 0))(s fo 0)(fi (>= fo 91)  323)(lc xr (+ fo 1065))(lc li (+ fo 55))(s rg (+ (* 2 (% xr 2)) (% fo 2)))(fi (= rg 1)   90)(fi (= rg 2)  114)(fi (= rg 3)  156)(s li (logxor li 66))(f  140)(s li (% (+ li 123) 256))(f  107)(s li (% (+ (lognot li) 256) 256))(f   65)(s li (logior (lsh li -4) (lsh (logand li #x0f) 4)))(si gn xr li)(s fo (1+ fo))(b  315)(s fo 0)(fi (>= fo 91)  397)(lc xr (+ fo 883))(li li gn fo)(s rg (+ (* 2 (% xr 2)) (% fo 2)))(fi (= rg 1)  102)(fi (= rg 2)  144)(fi (= rg 3)  156)(s li (% (+ li 66) 256))(f  142)(s li (% (+ (lognot li) 256) 256))(f  100)(s li (logior (lsh li -6) (lsh (logand li #x3f) 2)))(f   40)(s li (logxor li 123))(lc ex (+ xr 974))(fi (/= ex li)   58)(s fo (1+ fo))(b  335)(p "That's not the correct flag :C")(p "Yaay, you got it! :)")
