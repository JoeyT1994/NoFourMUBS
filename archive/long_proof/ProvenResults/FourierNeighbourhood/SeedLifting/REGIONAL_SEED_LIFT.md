# A seed-only exclusion around a non-F6 Fourier carrier

**Proved, computer-assisted, unconditional for physical completions.**
Let θ be the four phases of a dephased leading corner of a physical raw
Hadamard H, with that corner maximal in R. If, modulo 2π,

    ||θ−(π/180)(120,−53,−120,−120)||∞ ≤ 1/10000,           (1)

then, after permuting the three remaining rows and three remaining
columns, H/sqrt(6) has maximum column-projector distance **<1/50** from
an explicit Fourier-family reference. That reference has a proved
**1/48 direct-orientation exclusion tube**, so H cannot be a quartet edge.

Every seed in this full four-dimensional cube has **8<R<9**. Its centre
has a physical completion with maximal R≈8.491183247, proved by an exact
400-corner census. This reference is **not equivalent to F6**. Thus the
result extends the seed-lifting certificates to a genuine non-F6 point
of the family, within the requested R<20 range.

**Limits.** The cube is narrower than production half-width π/512 by
about a factor of 61.4. A production-width control remains unresolved.
This is one nonvacuous local patch, not a uniform neighbourhood of the
whole Fourier family or a theorem for every seed with R<9. It does not
close the full T2/T1′ goal.

## 1. Explicit reference and regional matrix theorem

Use H(a,b) from [WideFamilyTube](../WideFamilyTube/PROOF.md), at

    a=7/360, b=0  (turns),

with rows `(0,1,2,3,4,5)` and columns `(0,2,5,1,3,4)`. Its entries are
powers of ζ=exp(πi/180): before the column permutation the exponent is

    60ij + 7·[i mod 3=1]·(j mod 2).

The resulting dephased leading seed is exactly the centre in (1).
The parameters belong to the entire closed certified box
`a∈[3/180,4/180], b∈[0,1/180]`. That box's raw amplitude tolerance is
1/8, giving the direct-orientation radius 1/48. The reference is in the
literal orientation of that certificate, up to allowed permutations.

Physicality follows either from the Fourier-family row-sum argument or
from the exact cyclotomic Gram check in the verifier. It is not inferred
from small numerical residuals.

## 2. Maximality and non-F6 nonvacuity

The verifier evaluates all 400 positional corner invariants in
`Z[ζ]`, reducing every polynomial modulo the cyclotomic polynomial
Φ₃₆₀. The corners fall into four exact polynomial classes, with
multiplicities 36,256,72,36. Exact equalities handle ties. For each class
different from the leading value, an outward 160-bit evaluation proves
that the leading value is strictly greater. In particular,

    8 < R_leading = max_c R_c(H₀) < 9.

No sampled maximality test is used.

The four-entry phase quotient from original rows (0,1) and columns (0,1)
is ζ⁶⁷. Every such quotient of F6 is a sixth root of unity, and these
quotients are unchanged by row/column phases and merely relabelled by
permutations. Since 67 is not a multiple of 60, ζ⁶⁷ is not a sixth root;
H₀ is not equivalent to F6. The same distinction survives transposition.

## 3. Complete covers and simultaneous side matching

Run the reconstruction-free side covers over the entire cube (1), with
the outward leading-R upper bound. At phase depth 18 they retain

| Side | Cover nodes | Labels | Retained triples |
|---|---:|---:|---:|
| B columns | 4594 | 221 | 149 |
| C rows | 4318 | 227 | 79 |

Every physical D₀ completion contributes a retained triple in each side.
Loops, repeated labels, alternative sides and all moment constraints are
handled as in [MatchedCoverLift](MATCHED_COVER_LIFT.md). Each triple is
matched to the same reference using a side permutation. The B and C
permutations act on different remaining positions and can coexist.
No branch or root is selected by sampling.

Valid rational bounds, in the notation of the
[column/row completion lemma](COLUMN_COMPLETION.md), are

    e=1/5000, b=1/100, c=11/1000,
    β=γ=9/1250, κ=7/10, ν=23/10.                         (2)

The seed bound e follows from four angular errors ≤1/10000. Complete
side covers prove the bounds b,c,β,γ. The reference Gram is bounded
below by >0.7606 with a strict outward Sylvester test; perturbation over
the seed cube gives κ>0.7596, so the weaker κ=7/10 in (2) is valid.
The reference block norm is <2.289, so ν=23/10 is valid.

Substitution in the completion lemma proves a column error <1/50
(and separately a row error <1/50). The final inequalities are checked
with exact rational arithmetic, using 1.733 as an upper bound for
sqrt(3). Thus every physical maximal completion enters the reference's
1/48 tube. The proof is independent of reconstruction formulas.

An outward Taylor lower and upper bound gives 8<R<9 on the entire seed
cube. The proof does not need this lower bound to continue side roots;
it records the actual small-R range of the demonstrated patch.

## 4. Whole-cell use and frames

`family_side_lift.certify_box(centers,radii,...)` runs a new complete
cover relative to a supplied explicit Fourier-family reference. Its
reference parameters are rational turns and must belong to a retained
regional matrix box. A successful matrix lift checks its column bound
against that box's direct radius. A complete side-cover exclusion may
instead prove that the input box misses D₀. The returned reason
separates these cases; any budget failure returns unresolved.

`family_side_lift.certify_known_patch(centers,radii)` is an inexpensive
containment rule for the fixed cube (1), allowing all 72 leading-corner
frames and phase wrapping. A non-transposed frame preserves the stated
column-distance bound under its row/column monomial changes. For a
transposed frame the bound concerns the transformed carrier.

This still proves quartet exclusion for the original carrier: if
`I,U,C,D` were a quartet, conjugate it and multiply all bases by Uᵀ.
The resulting quartet contains `I,Uᵀ`, since `Uᵀ conjugate(U)=I`.
Thus a quartet edge remains an edge after transposition. Leading-corner
permutations, dephasing and transpose also preserve maximality of R.

The complete cube, exact nonvacuity and failure controls replay at 96
and 160 bits. The 72-frame predicate is tested on every transformed
patch. The live campaign driver is unchanged. Applying this physical
result to H₊ uses only its accepted physicality on the intended domain,
not accepted root exhaustion, differentiability, or branch selection.
