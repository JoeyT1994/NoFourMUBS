# Return P: exact local completeness and algebraic reductions beyond the atlas

Source handoff: `P_atlas_free_8a09f48b.zip`, repository snapshot `8a09f48b`.

## Executive result

**The atlas is not eliminated by this return. Global F, F′ and C remain
NOT ESTABLISHED.** There is, however, a complete exact solution of the
remaining local problem at the isolated product triple, a local Fourier-pair
classification, and a uniform finite-algebra reduction on the Fourier-free
domain. The return also strengthens the direct quartet inequalities and
identifies two formulation errors and a concrete obstruction to the proposed
multiplier calculation.

The principal integration result is:

> **PROVED.** The continuous component from return L and the exceptional
> product class are each complete components in the equivalence quotient.
> Their full labelled equivalence orbits form a closed and open subset of
> the full triple space. Thus, if A has exactly the two-class answer proposed
> in the brief, B now follows. The remaining sufficient targets are **A+C**.

This does not assert that there are no additional components.

## Status table

| Result | Status | Scope |
|---|---|---|
| Exceptional product triple: full 96×55 Jacobian has rank 55 | **PROVED / CERTIFIED** | All canonical phase variables; no product ansatz on perturbations |
| Closed isolation cube of radius 1/256 radians | **PROVED / CERTIFIED** | At the explicitly displayed representative |
| Both known equivalence loci are clopen and disjoint | **PROVED** | Uses the supplied return-L component theorem |
| No single ray unbiased to the isolated product triple | **PROVED** | Self-contained reproof of a known product-MUB theorem; E is unnecessary here |
| Exactly 48 common rays and eight companion bases at D=diag(1,1,i) | **PROVED / CERTIFIED** | The displayed transpose-Fourier pair; see `fourier/REPORT.md` |
| Local completeness of that Fourier-pair classification | **PROVED** | A qualitative neighbourhood in the two Fourier parameters; no explicit radius |
| Full ray-algebra length 252−2Z₂(H) | **PROVED** | All 400 three-minors nonzero; uses the explicitly cited boundary theorem |
| At most 252 physical common rays over any Fourier-free H | **PROVED** | Bound on points, not an assertion that all complex roots are physical |
| Fourier-free triple and quartet spaces have real dimension at most four | **PROVED** | Finite fibres plus the permitted strict-corner reconstruction |
| Stronger partial-transpose, rank, and triangle inequalities | **PROVED / CERTIFIED** | Necessary conditions for a hypothetical quartet |
| Twenty-minor fixed-strip interpretation of the brief's predicate | **ERROR / exact counterexample supplied** | Use 400 positional minors or return L's thirty-factor predicate |
| Naive abnormal Fritz–John system with all 96 residuals | **PROVED ineffective** | It accepts a multiplier at every point by row redundancy |
| Global A, C, F, F′; replacement of Steps 3–4 | **NOT ESTABLISHED** | No universal exclusion certificate is claimed |

“CERTIFIED” refers to the stated finite arithmetic replay. “PROVED” also
includes the written analytic arguments and explicitly named inputs. No new
Lean elaboration or kernel replay is claimed. No numerical approximation is
used as an equality or as a sign decision in the final verifiers.

## 1. B is closed at the isolated product orbit

Let ω=(−1+i√3)/2 and set

    H₀=F₂⊗F₃,
    K₀=diag(1,ω,ω,i,iω,iω)H₀.                            (1)

The bases are I,H₀/√6,K₀/√6. This is the exceptional product representative
specified by the supplied `triples.py`; its definition is used without any
of that program's atlas-derived numerical observations.

The local chart fixes the first row and column of H and the first row of K,
leaving 55 phases. The residuals are all thirty real individual-Hadamard
conditions for each of H,K and all 36 cross-modulus conditions. These are
exactly the full 96 equations from return L.

The verifier constructs the Jacobian in two independent ways. A selected
55×55 minor has

    det J₀ ≡8 (mod 13), with √3↦4.                       (2)

It also computes the exact inverse over Q(√3) and checks its product with J₀.
The inverse, combined with row-dependent phase-monomial Taylor bounds,
gives

    ||x||∞ ≤ (5735/24)||x||∞²                            (3)

at any exact solution in the lifted phase chart. Therefore any nonzero
solution obeys

    ||x||∞ ≥24/5735 >1/256.                              (4)

In particular (1) is the unique exact solution in the closed cube of
radius 1/256 radians. The cube concerns these 55 canonical phases; it is
not a claimed invariant distance radius for every equivalent representative.
Isolation itself transfers under every finite equivalence homeomorphism.

All three transitions are checked to be equivalent to the ordinary Fourier
matrix, and the conjugate triple is checked to belong to the same allowed
orbit. Thus every representative in Q=G{q₀} is isolated. In the equivalence
quotient Q is one isolated class.

**Files:** `local/LOCAL_ISOLATION.md`, `verify_isolated.py`,
`isolated_inverse.json`, and `isolated_receipt.json`.

### Consequence for the handoff's reduction

Write O=GM for the supplied completed continuous orbit. Its members lie on
embedded two-dimensional solution surfaces, so O and Q are disjoint. Since
both are clopen,

    Z=O ⊔ Q

is clopen in V. The image of Z in V/G consists of exactly the two known
components. Any additional triple lies in the disjoint compact complement
W=V\Z. If W is nonempty, its distance from Z is positive in any fixed
compatible metric on the ambient compact torus; no value of that global
separation constant is claimed.

If the classification requested in A gives V_F=Z, then V_F is clopen and
B follows immediately. Under that A, C is equivalent to F. This is the
precise sense in which the remaining independent sufficient tasks are A+C.

The opposite direction of the limiting statement in the brief needs
correction. Closedness of V_F already says that a Fourier-free triple cannot
be a limit of Fourier-edge triples. The nontrivial statement needed for B
is that **a Fourier-edge triple cannot be a limit of Fourier-free triples**.
It is now proved along both known loci.

**File:** `local/TOPOLOGICAL_REDUCTION.md`.

### An algebraic exclusion at the isolated class

`local/PRODUCT_NONEXTENSION.md` supplies a self-contained reproof of the
known result that the product triple (1) has no single common unbiased ray.
The three qubit measurement marginals force the qubit state to be maximally
mixed. The three qutrit marginals force its missing Schmidt ray into the
fourth qutrit MUB. The resulting two-term Schmidt expression cannot be flat
in two distinct qubit MUBs. The small-dimensional identities are checked
exactly. This part uses neither E nor the atlas and is attributed to the
prior product-MUB literature.

## 2. A concrete local result for A

Use the transpose-Fourier orientation

    U_D = (1/√6) [[F₃,D F₃],[F₃,−D F₃]],
    D=diag(1,z,w).                                      (5)

The returned classification treats D=diag(1,1,i). It reduces common unbiased
rays to explicit real slope profiles, solves those profiles by exact
factorization, and reconstructs all rays by cubic roots and the three-clock
action. There are exactly **16 slope profiles, 48 common rays, and eight
unordered companion bases**.

The eight companion bases are canonical clock/skew-antiunitary completions.
The verifier encloses the selected cubic roots by rational Rouché bounds,
excludes 960 cross-basis candidate orthogonality edges with normalized
overlap strictly larger than 4/25, and exhausts the retained finite graph.
The retained graph has exactly the eight canonical six-cliques. Potential
extra graph edges are retained conservatively; no near-zero overlap is
declared zero from a numerical tolerance.

Every one of the 48 common rays has an invertible five-phase Jacobian,
verified by rational interval determinants. The implicit-function theorem,
compactness of the phase torus, and the strict overlap exclusions therefore
extend the classification to some open neighbourhood of (z,w)=(1,i).
This neighbourhood is in the two Fourier parameters. It is different from
the explicit full-triple isolation cube in §1, and no numerical radius for
it is claimed.

The proof also identifies the canonical completions with the supplied
bicirculant construction after rebasing and monomial equivalence. Thus these
classified Fourier-edge triples lie in GM. The result does not classify the
whole Fourier torus or its exceptional parameters.

**Files:** `fourier/REPORT.md`, `verify_fourier_fibre.py`,
`cubic_centres.json`, and `FOURIER_FIBRE_RECEIPT.json`.

## 3. A uniform algebraic reduction on the Fourier-free domain

For a raw Hadamard H with all 400 three-minors nonzero, write Z₂(H) for the
number of singular positional 2×2 minors. The common-ray algebra is

    A_H=C[z₁^{±1},...,z₅^{±1}]/(G₁,...,G₅),
    Gⱼ=(Σᵢ conjugate(hᵢⱼ)zᵢ)(Σᵢ hᵢⱼ zᵢ⁻¹)−6,
    z₀=1.                                               (6)

The literature boundary theorem cited in the supplied L follow-up makes
its unsaturated projective model zero-dimensional, with 2Z₂ reduced isolated
boundary points. This is the explicit external mathematical input to this
part of the return: Sun, arXiv:2610.12180v1, Theorem 3.1.

That projective model consists of ten bidegree-(1,1) equations in P⁵×P⁵.
Zero-dimensionality makes them a complete intersection. The Koszul
resolution and an exact finite-difference identity give total length

    binom(10,5)=252.

Subtracting the reduced boundary lengths yields the exact formula

    dim_C A_H=252−2Z₂(H).                                (7)

Thus there are at most 252 physical common unbiased rays for any
Fourier-free H. This is not an assertion that every algebraic root is
physical or simple. The exact examples in the verifier have:

| Matrix | Z₂ | Full affine algebra length |
|---|---:|---:|
| Supplied Diţă D | 30 | 192 |
| Tao | 45 | 162 |

For fixed H, a companion basis must choose six rays from this finite set.
Therefore the triple-to-edge projection has finite fibres. The permitted
strict-corner reconstruction supplies finitely many four-real-parameter
charts, with at most 72 framed matched completions per fixed seed. It follows
that the Fourier-free triple space, and likewise the Fourier-free quartet
space, has real dimension **at most four**.

This gives an exact finite-algebra problem over the reconstruction seeds.
The report formulates it as a trace-form signature test on the finite real
algebra of reciprocal-orthogonal six-ray collections, localized to exclude
Fourier edges. No universal trace-form signature or elimination certificate
has been computed. Finite fibres and a dimension upper bound do not give
the openness or seed-direction lifting required by the maximum principle.

**File:** `algebra/DEGREE_AND_REDUCTION.md`; finite arithmetic in
`verify_degree_and_predicate.py`.

## 4. Stronger necessary inequalities for a quartet

For normalized bases U_a in a hypothetical quartet, let S be the sum of the
24 rank-one projections onto u_aj⊗u_aj, and let Q be the rank-15 projection
onto the common Hermitian operator complement. With partial transpose Γ,
the permitted identities give

    Q^Γ=I+(1/2)Swap−S,   tr S=24,   tr S²=36.

Using both branches of the supplied single-Hadamard dichotomy, the return
proves

    λ_max(S)≥1+√10/6,
    λ_min(Q^Γ)≤−(√10−3)/6 <−1/37,
    17≤rank S≤21.                                      (8)

This strengthens the previous <−1/120 bound. In the balanced-character
branch the key improvement is a sharp capped-moment inequality: six
nonnegative numbers summing to one and having square sum at least 7/27
must have maximum at least 5/18.

If τ_abc is the supplied squared-transition triangle trace and E(W) the
commutator energy, weighted Cauchy–Schwarz gives

    E(W) ≥ (216−68√10)/(414−3√10) >1/420,
    Σ_{a<b<c} Re τ_abc >−1+1/5040.                      (9)

These are constraints to impose on an eventual direct quartet elimination.
They are not a contradiction. The proof deliberately handles both
single-Hadamard branches, so it uses neither E nor a separate Tao exclusion.

**Files:** `global/REPORT.md`, `verify.py`, `RECEIPT.json`, and
`SOURCE_DEPENDENCIES.json`.

## 5. Corrections and the precise remaining gap

### The Fourier predicate needs all row choices

There are 20 choices of three rows and 20 of three columns. The product in
the brief should range over all **400** positional corners of each edge,
or use the thirty-factor row/column squared-overlap predicate already
proved in return L.

For an exact counterexample to a fixed-strip interpretation, take N(i,1)
with rows reordered (0,1,3,2,4,5). All twenty minors in its leading three-row
strip are nonzero, with squared-modulus product 6⁸·12¹². The full matrix is
Fourier type and has 24 singular three-minors. The corrected predicate and
all finite counts are checked in the algebra verifier.

### Constrained maxima do not supply unrestricted seed maxima

A maximum on a compact triple component only annihilates those seed
directions that lift to actual triple deformations. A two-dimensional
component inside the four-dimensional seed domain is insufficient to force
the four ambient derivatives of R to vanish. At a singular point, a
Jacobian kernel need not be the tangent space of actual real solution
branches. The isolated product triple also shows that zero-dimensional
triple components really occur.

### The raw abnormal multiplier system is vacuous

For a 96×55 residual Jacobian J, ker Jᵀ has dimension at least 41 at every
point. Therefore a Fritz–John system allowing a zero objective multiplier
and a normalized nonzero constraint multiplier accepts every triple.
Redundancy removal and singular-stratum control are essential before such
an elimination can function as a stationary-point certificate.

### What remains

The local classification in §2 covers an open Fourier-parameter region,
not all of A. No result here excludes an additional compact Fourier-free
component. No compatibility contradiction for four unknown triple faces
is obtained. Accordingly the atlas and its verification remain part of the
existing proof of record until one of these genuinely global gaps is closed.

## 6. Reproduction and integration

Run from this directory:

```bash
python3 -S verify_all.py
```

All final verifiers use Python's standard library. The top-level runner
checks `SHA256SUMS`, then replays the exact finite gates in a temporary copy.
The original package is not modified. Rational interval arithmetic is used
only where explicitly stated in the Fourier fibre gate; it checks all
strict inequalities with integer/rational operations.

`SOURCE_MANIFEST.json` identifies the source archive, the input files used,
and the literature dependencies. Input hashes pin the supplied results;
they are not represented as a new replay of the complete upstream proof.
`INDEPENDENT_REVIEW.md` states the mathematical review boundary.

No new repository merge, Lean result, or global certificate is asserted.
The package contains the complete arguments, exact scripts, proposal data,
receipts, and checksums needed to review the claims made here.
