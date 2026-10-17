# Independent review of the Fourier-fibre module

**Verdict: PASS, relative to its explicitly identified companion-surface input.**
The reviewer read the complete `fourier/REPORT.md`, the interval and polynomial
checker, the rational cubic-root proposals, and the actual normalization in
return L-progress's `GLOBAL_BICIRCULANT_GEOMETRY.md`, §§5–6. Independent
execution of `python3 -S verify_fourier_fibre.py` succeeded. Exact hashes of
the audited source files and the resulting receipt are in
`FOURIER_AUDIT_RECEIPT.json`.

## Analytic reduction and exhaustion

I independently derived the original five common-ray equations from the
two ternary Fourier transforms. A zero component of either sum/difference
vector forces a second zero by the length-three autocorrelation equation,
contradicting the two norm-six conditions. Consequently every slope is a
finite nonzero real number, so the coordinate choice omits neither zero nor
infinite slopes.

The ratio of the two kernel-matrix rows is
`B_j/A_j=delta_j h_j h_{j+1}`. At `(1,1,i)` the phase ratios are `(1,i,-i)`,
so the two rows cannot be proportional: a nonzero real first ratio cannot
equal a nonzero purely imaginary second ratio. With `x=h2,y=h0,z=h1`,
equality of the first two squared cross-product moduli yields exactly the
displayed sextic G, and equality with the third yields H.

I independently solved the three factors of G−H. The y=z branch gives the
eight profiles in (3.6); y=−z gives no real nonzero solution; the remaining
branch gives yz=−1, (y+z)²=2, x²=1 and the eight profiles in (3.8). The
extraneous factors and denominator exclusions in the report are correct.
Equal nonzero cross-product moduli make the cubic right side unimodular;
its three distinct roots reconstruct exactly three distinct dephased rays.

The skew antiunitary sends h to −1/h and pairs the eight positive-h2
profiles with the eight negative-h2 profiles. Within a clock orbit,
orthogonality is the elementary three-root sum. Between the two clock
orbits, each coordinate pair cancels separately. Thus the eight canonical
bases partition the 48 rays before any overlap computation is used.

## Exact finite certificate

The real interval operations round outward to rational dyadic endpoints.
Reciprocal intervals are used only when they exclude zero; complex division
uses a strictly positive squared-modulus denominator. The radical bounds
are checked by integer-square comparisons.

For each proposed cubic-root disk, the complete remainder bound is compared
with `3|mu|² radius`, the exact modulus of the linear term on its boundary.
The left side uses safe componentwise modulus upper bounds. The resulting
strict inequality is the appropriate Rouché condition; its enclosing box
contains the selected exact cubic root. No numerical root is accepted by
proximity alone.

The graph excludes a cross pair only after its squared-overlap lower bound
exceeds (4/25)². The other cross pairs remain possible edges. Therefore the
exhaustive six-clique search is conservative in the required direction.
It finds exactly the eight analytically established canonical bases.

The 48 phase Jacobians are differentiated from the full five real ray
residuals, not from the eliminated slope equations. The product rule and
conjugation of the differentiated second factor are correct. The complete
Leibniz determinant expansion with outward rounding excludes zero in every
case. Optimized Python execution is explicitly rejected.

## Placement in the specific completed component

I recomputed the block multiplication and obtained
`sqrt(6) U†V = [[A,B],[-B†,A†]]` with exactly the report's definitions of
A and B. Multiplying the bottom three coordinates by −1 gives the supplied
geometry's block form `[[A,B],[B†,−A†]]`, with companion phases `tau=−bar d`.

The eigenvalues on columns of F† are `sqrt(3/2)(r_j+s_j)` and
`sqrt(3/2)d_j(bar s_j−bar r_j)`. Their product with tau is
`−3i Im(r_j bar s_j)`, which is nonzero by the zero-free lemma. Reversing
frequency labels changes F† to F in both matrices and in the phases, so
there is no eigenvalue/companion convention mismatch.

The row and column normalization using `a=A00`, `b=B00` gives
`A'=bar a A`, `B'=bar b B`, and `tau'=ab tau`. It preserves the adjoint
block pattern and the scalar companion condition. The ratios
`x=a0/a1,y=a1/a2,u=b0/b1,v=b1/b2` yield exactly the normalized circulants
in the supplied geometry. Independent sign choices of tau are precisely
the allowed paired-column swaps. This proves membership in the specific
orbit GM; it does not rely on an unproved general claim that every
bicirculant-looking triple belongs there.

## Locality and scope

All 48 original ray Jacobians are invertible. The real analytic implicit
function theorem gives their local branches, and compactness of the
dephased five-torus excludes additional solutions approaching the anchor.
Clock and skew-antiunitary operations preserve eight exact bases on these
branches. The 960 excluded overlaps remain nonzero after a common parameter
shrink, so the certified possible graph continues to contain every actual
orthogonality graph. Its eight canonical six-cliques are therefore still
the complete basis list. The universal component-membership calculation
then applies throughout that parameter neighborhood.

No numerical radius, global Fourier-parameter classification, or exclusion
of other triple components follows from this audit. General Fourier
analysis, Rouché's theorem, the implicit-function theorem and compactness
remain written analytic arguments, not Lean claims.
