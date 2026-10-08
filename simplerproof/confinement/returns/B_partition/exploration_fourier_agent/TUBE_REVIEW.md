# Independent review of the uniform Fourier-family tube theorem

**Verdict: correct**, conditional on the supplied square identity F2 and, for the final sharpening, supplied local lemma F4.

Reviewed files:

- `../global/TUBE.md`
- `../global/verify_tube.py`
- the independent Fourier-family theorem and verifier in `../fourier/`.

The Laurent polynomial is `q-conj(q)`, so dividing it by `i` gives `2 Im q` with no missing factor. Its 48 coefficients are all `+1` or `-1`. The verified exponent covariance `sum ell ell^T = 144 P3` gives the directional derivative bound `sqrt(48*144)=48 sqrt(3)` and the bilinear second-derivative bound 144 by Cauchy–Schwarz.

The signed-polynomial derivative estimate holds on the full phase torus. Consequently use of a straight phase segment between two Hadamards does not require the segment itself to consist of Hadamards. F2 is applied only at the endpoints.

The horizontal phase distance is the quotient of a flat phase metric. Its projected integer lattice is discrete because the horizontal projection has rational entries. Taking the minimum over the finitely many row/column permutations preserves attainment. Row/column rephasings disappear under projection, and permutations act isometrically, so composition gives the triangle inequality used in the proof. Compactness of the two Fourier parameter tori then gives an attaining family representative.

The rational square-root enclosures and positive arcsine-series tail bound in `verify_tube.py` are conservative and valid. Replaying that script independently prints `TUBE VERIFICATION PASS`. The numerical expression is bounded above by the certified rational `548503/1000000`, below `0.55`.

The scope statement is essential: the theorem covers all Hadamards within horizontal phase distance `1/40` of the Fourier families and satisfying `M<26`. It does not show that every Hadamard with `M<26` lies in this tube. No such implication was used in the reviewed proof.
