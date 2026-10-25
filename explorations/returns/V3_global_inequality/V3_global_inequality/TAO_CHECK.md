# Exact check of the Tao exception

**CERTIFIED.** The standalone script `verify_tao.py` constructs an explicit symmetric cubic Hadamard T over the exact ring `Z[omega]`, where `omega^2+omega+1=0`. It verifies all unit entry and row-orthogonality equations and the simultaneous permutation `(0,1,2,5,4,3)` to the pentagon representative in the Fourier-vanishing theorem.

It regenerates the 400 corner signatures from the permanent/determinant formula and all 1296 mixed fourth moments. The results are

\[
\boxed{S(T)=87480,\qquad L_{\rm tot}(T)=\frac{225}{2},
\qquad D_{\rm row}(T)=D_{\rm sym}(T)=\frac{45}{2}.}
\]

Exactly forty corner discriminants are zero, and the other 360 equal 243. Thus

\[
S(T)=3888D_{\rm sym}(T),\qquad
L_{\rm tot}(T)=5D_{\rm sym}(T),
\]

which directly verifies both `S>=600D_sym` and `S>=100L_tot` at the exceptional class. The invariants are unchanged under row/column monomial equivalence and conjugation; D_sym and L_tot are also unchanged under transposition. Therefore these checks apply to every representative needed for the exceptional case.

The exact ring represents `a+b omega` by the integer pair `(a,b)`. Multiplication is

\[
(a,b)(c,d)=(ac-bd,ad+bc-bd),
\]

conjugation is `(a,b)->(a-b,-b)`, and the squared norm is `a^2-ab+b^2`. For a signature `Psi=a+b omega`, its discriminant is exactly `4(Im Psi)^2=3b^2`. No floating-point arithmetic occurs.

Run

```
python3 verify_tao.py
```

The output is `PASS`; the recorded output is `TAO_RECEIPT.json`. The universal side-signature identity identifies the regenerated signature sum with S, as in the supplied brief. Column complementation merely permutes the 400 corners.
