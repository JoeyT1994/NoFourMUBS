# Fourier-sector status

## Fully proved

For every member of the complete two-parameter affine Fourier family, its transpose, and all their Hadamard equivalents:

1. An exact formula for the maximum of all 400 corner invariants:

   `M = 36 (|sin(2x-y)| + |sin(x+y)| + |sin(x-2y)|)^2`.

2. Global confinement for the larger threshold `M < 144`:

   `nu <= sqrt(2/3) asin(sqrt(M)/12)`.

3. A direct column-projector bound:

   `d_F <= sin(asin(sqrt(M)/12)/6)`.

4. In particular `M < 26` implies `nu < 9/25 < 0.55`.

5. All local minima of M in these families are Fourier-equivalent and have M=0. Every nonzero point has a strict local descent within its family, so cannot be a local minimum on the full Hadamard set.

6. The implication extends to the full Hadamard set within phase Frobenius distance 21/500=0.042 of either complete family, modulo equivalence. Here M<26 implies nu<0.55, and the supplied local lemma F4 improves this to nu<=0.451. The proof is in `AMBIENT_GRADIENT.md`.

7. Every corner of either family has full ambient nine-phase gradient norm squared at most 1767 for d=2 Im q. This is a bound on arbitrary entry-phase derivatives, not merely family tangent directions. A global ambient Hessian bound of 144 is independently certified.

8. An explicit collar around the entire Hadamard-corner stratum: if any corner has squared determinant at least 27-10^-16, the matrix lies within phase distance 0.036 of an affine Fourier family or Tao. If M<26, the Tao alternative is excluded and the certified tube gives nu<0.55, then F4 gives nu<=0.451. A squared permanent of at least 9-10^-16/13 also suffices. See `ROBUST_HADAMARD_CORNER.md`.

All phase wrapping and every Fourier-equivalent zero in the full parameter torus are handled explicitly. No neighborhood of the original parameter origin is assumed.

## Exact finite verification

`verify_fourier.py`, using only the Python standard library, certifies all 400 corner identities directly from the supplied definition of R in a Laurent ring with integer coefficients. It also checks the Hadamard equations and a rational positive margin proving the 0.36 bound. Run it as `python3 verify_fourier.py`; any failed claim raises an exception and exits nonzero.

The trigonometric confinement and descent proofs are analytic. No interval cover or floating-point decision is involved.

`verify_ambient_gradient.py` verifies the full ambient gradient classification and Hessian identity, and proves the one remaining bivariate polynomial bound with an exact rational Bernstein cover of 88 rectangles (maximum depth14). It also verifies a rational strict margin for the 0.042 tubular theorem. This additional certificate uses no floating-point arithmetic.

`verify_robust_corner.py` verifies the explicit determinant and permanent collar thresholds, quantitative three-phase constants, exact circulant Fourier identities, and all branch cutoffs. It also replays the exact finite classification of cubic Hadamard-corner cases from the sibling `mc1` directory. Its proof uses a uniform fourth-root error bound and remains valid at singular rank cases.

## Numerical evidence only

None is needed for these theorems. Decimal evaluations of exact bounds in the report are explanatory and are not used by any proof.

## Unresolved

The unrestricted confinement theorem concerns all order-six complex Hadamards. A generic Hadamard with M<26 is not known here to lie within the certified 0.042 phase tube around either affine Fourier family. The present result does not exclude a hypothetical local minimum outside this tube, and does not establish the no-four-MUBs conclusion.
