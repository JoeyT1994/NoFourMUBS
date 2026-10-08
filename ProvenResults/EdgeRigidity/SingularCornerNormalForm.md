# A singular 3-by-3 corner forces the Fourier family (direct normal form)

**Statement.** If an order-six phase Hadamard has a singular 3-by-3 submatrix, it or its transpose is monomially equivalent to N(z,w)=[[F3,F3],[F3 Z,-F3 Z]], Z=diag(1,z,w). Consequently every 3-by-3 corner F of every quartet edge has det(6I-FF*)>0.

**Status.** Local reduction: analytic proof with exact checks, unconditional. Quartet consequence: conditional only on the published Fourier-family exclusion.

**Dependencies.** Local reduction: none. Quartet consequence: [Jaming et al.](https://arxiv.org/abs/0902.0882) (the Fourier family and its transpose do not extend to four MUBs), as listed in RESEARCH_BRIEF.md. N(z,w) is the Tadej-Zyczkowski family F_6^(2) up to a row permutation ([QuartetEdgeCorollary.md](QuartetEdgeCorollary.md)). The archive also cited Chen-Yu Lemma 11(v); that citation is retained below as a second published route but is not needed.

**Provenance.** `NoFourMUBSArchive/90_replay_library/05_remaining_D2/spectral_forcing/quartet_coupling/BOUNDARY_SCOPE.md`, `verify_boundary.py` (unchanged here as `quartet_boundary.py`).

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# Spectral equality is stronger than a Karlsson reduction

## Local reduction

**Theorem:** if an order-six phase Hadamard has a singular 3-by-3 submatrix,
then it or its transpose is monomially equivalent to

```math
N(z,w)=\begin{pmatrix}F_3&F_3\\F_3 Z&-F_3 Z\end{pmatrix},
\qquad Z=\operatorname{diag}(1,z,w),\quad |z|=|w|=1,
```

where F_3 is the unnormalized three-dimensional Fourier matrix. Thus the
singular-corner locus is in the Fourier family or its transpose, not merely
in an unspecified part of the three-parameter Karlsson family.

Proof. Dephase the singular submatrix to E(a,b,c,d). Its determinant is
(a-1)d-(a+bc-b-c). If a!=1, the unit-modulus equation for d gives

```math
|a+bc-b-c|^2-|a-1|^2
= (a-b)(a-c)(b-1)(c-1)/(abc)=0.
```

The cases where one of a,b,c,d equals 1, and the remaining alternatives
a=b or a=c, give two proportional rows or two proportional columns. This
is also the classification supplement's singular-corner proof. After a
transpose if needed, there is a rank-one 3-by-2 submatrix. Dephase its
columns so the first is all ones and the second is one on the top three
coordinates. Orthogonality and equality in the triangle inequality force
the second column to be minus one on the last three coordinates.

For each remaining column both its top and bottom triples sum to zero.
Three unit phases sum to zero precisely when, up to a common phase, they
are f_+=(1,omega,omega^2) or f_-=(1,omega^2,omega), omega^2+omega+1=0.
Write the column as (alpha f_sigma, beta f_tau). Restricted row completeness
implies that among these four columns each sign occurs twice in the top
half and twice in the bottom half.

Two columns cannot have the same top sign and different bottom signs:
their inner product would have a nonzero term of modulus 3 from the top
half and zero from the bottom. The reverse situation is also impossible.
Hence the sign labels occupy two matched cells of {+,-}^2, with two columns
in each cell. Interchanging two bottom rows changes the antimatched case
to the matched one. Phase each column to set alpha=1. Orthogonality within
a matched pair forces its two beta values to be z_sigma and -z_sigma.
Including the first two columns as the sign-zero pair gives N(z,w).
Conversely this normal form is Hadamard and has rank-one 3-by-2 submatrices.

The verifier (`quartet_boundary.py`) checks the determinant factor exactly, all 2^8 sign allocations
for the four remaining columns, and the two-parameter normal-form Gram
identity over Q(omega,z,w), with conjugation z->1/z,w->1/w,omega->omega^2.
No numerical samples stand in for the phase parameters.

## Consequence for the proposed forcing target

**Theorem (conditional on a named published exclusion; see [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md) for the route
through Jaming et al., which is the one used in this library):** in a
four-MUB quartet every positional 3-by-3 corner F of every relative phase
Hadamard has strictly positive spectral slack det(6I-FF*).

Proof. A zero slack makes the complementary 3-by-3 block singular, since
6I-FF*=BB*. The local reduction puts the carrier in the Fourier family or
its transpose. The named external exclusion rules it out (Jaming et al. exclude both the Fourier
family and its transpose; Chen-Yu below is an alternative citation). Adjoint relative
carriers are legitimate by changing the identity basis; this does not
require simultaneous transposition of all bases to preserve unbiasedness.

**External theorem dependency, not locally replayed:** Chen and Yu,
*Product states and Schmidt rank of mutually unbiased bases in dimension
six*, Lemma 11(v), Part 5, directly excludes a singular 3-by-3 submatrix
from a quartet carrier. Parts 1-2 and Appendix C explain the reduction;
Corollary 15 includes the Fourier family and its transpose.
Source: https://arxiv.org/html/1610.04875 . Their term "MUB trio" means
three Hadamards plus the identity, i.e. four bases here.

The 2025 McNulty-Weigert comment challenges Part 6 (a merely real 3-by-2
submatrix), not this rank-one/singular-block argument, and explicitly
retains the rank-one exclusion in its discussion of equation (1):
https://arxiv.org/html/2504.13067v1 . We do NOT import Part 6, the disputed
restrictions on counts of 2-by-2 Hadamard blocks, or a global Karlsson
exclusion. The reply https://arxiv.org/html/2504.15576v3 does not supply the
missing general Karlsson exclusion either.

## What this changes and what it does not

**Open:** force a zero slack from the reconstructed quartet equations.
With the external exclusion as input, that target would prove outright
nonexistence; it is not an easier intermediate reduction to arbitrary
Karlsson. This is a clarification of target strength, not its disproof and
not a proof that no quartet exists.

The weaker target "some relative carrier is Karlsson" remains Open. We
do not silently replace the user's spectral route by a different forcing
conjecture. Product ramification Omega=0 remains a different condition.
