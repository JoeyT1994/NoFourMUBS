# Fourier-sector status

## Fully proved

The entire two-parameter affine Fourier family, its transpose, and every
matrix equivalent to either satisfy

\[
M(H)<26\ \Longrightarrow\
\nu(H)<0.358338,\qquad d_F(H)<0.073081.
\]

The optimal constants at this cutoff are exactly
`sqrt(2/3)*arcsin(sqrt(26)/12)` and
`sin(arcsin(sqrt(26)/12)/6)`. The proof of optimality minimizes over all
Fourier equivalences; it does not assume that a displayed Fourier alignment
is best.

More generally, the explicit bounds in Theorem 1 hold for every cutoff
`0<=m<108`. The complete affine Fourier parameter torus has no positive
local minimum of `M`. All parameter values, lattice translates, overlaps,
and both orientations are covered.

## Exact finite computation

The 400 symbolic corner identities are established by exhaustive
integer Laurent-polynomial arithmetic over `Z[zeta_6]`. The same verifier
checks the Hadamard identities, every phase-lattice permutation residue
case, the horizontal norm, the hexagon vertices, and all quoted numerical
constants by rational Taylor bounds. This is a terminating standard-library
Python calculation, with no floating-point operations or external packages.

Run `python3 verify_fourier.py` in this directory. It passes.

## Numerical evidence only

None is needed for these results. The supplied floating-point selftest was
run successfully as a preliminary diagnostic but is not an input to any
proof in this directory.

## Remaining gap

These results do not prove the theorem for Hadamard matrices outside the
affine Fourier and transposed affine Fourier sectors. There is no assertion
that these two sectors exhaust all order-six Hadamards.
