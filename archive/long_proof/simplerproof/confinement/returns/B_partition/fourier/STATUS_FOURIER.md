# Status: Fourier-family subtheorem

## Fully proved analytically

On the entire two-parameter Fourier family and its transpose, including all equivalent matrices:

- If `M<144`, then `nu <= sqrt(2/3) asin(sqrt(M)/12)`.
- Under the same hypothesis, `d_F <= sin(asin(sqrt(M)/12)/6)`.
- Consequently `M<26` gives `nu<0.358338` and `d_F<0.073081`.
- Throughout `M<=26`, the explicitly constructed horizontal residual attains the true infimum `nu`. The envelope `sqrt(2/3) asin(sqrt(M)/12)` is optimal at every level from zero through 26; this follows from a proved separation of different Fourier-reference phase residuals, not an assumed orbit-distance formula.
- Every local minimum of `M` on the full parameter torus has value zero and is Fourier-equivalent.
- If `0<M<144`, an explicit contraction in reduced parameter coordinates strictly decreases `M` and remains in the sublevel.

The proof uses an explicit row/column permutation reduction, not an assumed formula for the infimum defining `nu`.

## Established by exact finite arithmetic

`verify_fourier.py` uses only integers and rational numbers. It establishes:

- Hadamard orthogonality identically in the two Laurent parameters;
- the complete 400-corner spectrum, including all multiplicities;
- direct agreement with the defining `R` polynomial for all 400 corners;
- the explicit lattice-period permutations;
- the horizontal Gram matrix and coordinate-change quadratic form;
- the rectangle quadratic-form identity underpinning the sharp shortest-vector bound `||P6 N||>=5/6` for nonzero integer projections;
- both stated decimal bounds using rational sine Taylor bounds.

This is an exact finite certificate, not a floating-point sample or an interval grid.

## Numerical evidence only

None is required or used by this subtheorem. Optimality of the low-sublevel orbit-distance envelope is proved analytically using the exact integer-projection separation lemma; it is not inferred numerically.

## Remaining global gap

The original task concerns every order-six Hadamard matrix. This result treats two explicit two-dimensional families and their equivalences. It does not prove that an arbitrary matrix with `M<26` lies in these families, near these families, or on a Hadamard deformation that reaches these families. It therefore does not by itself close the global confinement theorem or the no-four-MUBs proof.
