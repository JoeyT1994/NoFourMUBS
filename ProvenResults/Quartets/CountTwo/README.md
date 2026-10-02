# Count-two exclusion: no MUB triangle or quartet face has exactly two matchings

**Statement.** Let A and B be normalized complex Hadamard matrices of
order six such that X = A*B is also Hadamard. This is a *triangle* in the
sense of [TriangleNullities.md](../../Triples/TriangleNullities.md). If the
triangle has exactly two diagonal-phase matchings, then at least one of A,
B, X has a zero 3-by-3 minor.

**Corollary.** No face of a quartet of MUBs in C^6 has matching count 2.
By [QuartetEdgeCorollary.md](../../EdgeRigidity/QuartetEdgeCorollary.md), no
quartet edge has a zero 3-by-3 minor. With
[TriangleNullities.md](../../Triples/TriangleNullities.md), every quartet face
therefore has matching count 0, 1 or 6.

Combined with [../CountSix/README.md](../CountSix/README.md), which shows
that quartet faces have count in {1, 2, 6} and that every quartet has 0, 1
or 3 count-six faces, it follows that **every quartet face has count 1 or 6,
and every quartet has at least one count-one face**.

**Status.** Proved: an analytic proof with exact symbolic checks. The
theorem is unconditional. The corollary uses only the published
Fourier-family exclusion (Jaming et al.) through QuartetEdgeCorollary.
Whether count 1 occurs on a physical triangle remains open.

**Dependencies.**
- In this library: [TriangleNullities.md](../../Triples/TriangleNullities.md),
  [MatchingConventions.md](../../EdgeRigidity/MatchingConventions.md),
  [OneBinaryMatching.md](../../EdgeRigidity/OneBinaryMatching.md),
  [TernaryMatchingRigidity.md](../../EdgeRigidity/TernaryMatchingRigidity.md) and
  [NegativeCubicMatchingExclusion.md](../../EdgeRigidity/NegativeCubicMatchingExclusion.md).
  For the corollary: [QuartetEdgeCorollary.md](../../EdgeRigidity/QuartetEdgeCorollary.md).
- **Not used:** the classification paper, the reconstruction inputs of
  [ASSUMPTIONS.md](../../../MinimalConstruction/ASSUMPTIONS.md), balanced
  products, the Tao exclusion, Szollosi / Conjecture 3, the H_x/full21
  inputs, the Karlsson three-ray input, or any product-regular chart.

The archive states every step "in the eight-seed reconstructed H,K
coordinates". The referee checked each argument. They use only the triangle
tensor t_kij = conj(A_ki) B_kj / X_ij, its three-directional slice
unitarity, and the factorization itself. No coordinate chart is needed, so
the reconstruction framing has been removed.

## Proof map

Fix direction 1 and let m be the number of distinct values of its relative
matching character lambda. Assume no zero 3-by-3 minor.

| Step | File | Content |
|---|---|---|
| 0 | [ResidualSetup.md](ResidualSetup.md) | Block form diag(1, lambda) (+) R_k; relations; no rank-one residual; residual types M4, M2 (+) M2, M2 (x) I2 with flat reducing projections; perfect input/output frames; channel; three-involution lemma; filter lemma; characters nonbinary with multiplicities at most 2, so m is 3, 4, 5 or 6 |
| 1 | [ReducibleExclusion.md](ReducibleExclusion.md) | Reducible residual gives a zero 3-by-3 minor, so the type is M4 in every direction |
| 2 | [Collisions.md](Collisions.md) | Repeated character values (m = 3, 4, 5): grouped-mean rigidity and a common alternating form |
| 3 | [TernaryDirection.md](TernaryDirection.md) | m = 3 forces all three directions ternary, which the active ternary theorems exclude |
| 4 | [FourValue.md](FourValue.md) | m = 4 is impossible (includes the antipodal subcase) |
| 5 | [FiveValue.md](FiveValue.md) | m = 5 is impossible |
| 6 | [SixValue.md](SixValue.md) | m = 6 is impossible (two-sided channel determinant 4n^3(1+v^2)) |

Each case gives a contradiction, which proves the Statement.

## Provenance

Archive `NoFourMUBSArchive/03_algebraic/`:
- `core/simple_character_channel/` (TWO_SIDED_EXCLUSION, PROOF,
  LOW_DEFECT_EXCLUSION, RANK3_NORMAL_FORM, RANK3_MODEL, RELAXATION_CONTROL);
- `core/m4_channel_frontier/`, `core/antipodal_four/`,
  `core/five_value_exclusion/`, `core/ternary_channel/`,
  `core/m4_collision_exclusion/`, `core/rectangular_closure/supplied/M4_COLLISIONS.md`;
- `core/residual_rigidity/` (supplied CROSS_RANK and DIRECTIONAL_PROPAGATION;
  interior and endpoint proofs);
- `core/rank_rigidity/supplied/extension04/`;
- `core/SIMPLE_CHARACTER_SYMPLECTIC_RIGIDITY.md`;
- `global_rigidity_2026_09_08/TWO_MATCHING_RESIDUAL_CURVE.md`.

Each file below names its own sources. The mathematics is the archive's,
rewritten for self-containedness and with the repairs noted in each file.

## Referee verdict

**VERIFIED, after one repaired gap.** The review was adversarial. The
importing referee read every source document. The referee personally
rederived the setup and the whole six-value chain line by line; the
six-value chain was the most elaborate step, and it is where the archive's
reconstruction framing was most prominent. Three sub-referees each reread
one of the other branches line by line and wrote independent exact checks:
- the reducible exclusion (five supplied proofs whose authors' checkers
  were never run);
- collisions and five values;
- three and four values.

Findings:
- **Gap, repaired** ([FiveValue.md](FiveValue.md) Section 4). The archive
  gives no reason for "tr(B rho) = 0 for perfect rho". It follows from the
  orthonormality of the four error images of a perfect ray.
- **Presentation gaps, repaired** ([ReducibleExclusion.md](ReducibleExclusion.md)).
  (a) The rank-one-block argument in the other directions needs the fact
  that common lines are counted identically in every direction. (b) The
  interior and endpoint contractions must be run from a direction that is
  known to be reducible; the propagation theorem supplies one.
- **Wording** ([TernaryDirection.md](TernaryDirection.md)). The x_0 = 0 chart
  equations in the archive are written after substituting u = -w.
- **Archive verifiers.** They were run on copies. Every mathematical
  control equals its receipt; all mismatches are SHA-256 drift of later
  edited sources (`COORDINATE_PROGRAMME.md`, `MATHEMATICS.md`,
  `RECONSTRUCTION.md`). `rank_rigidity/verify.py` and
  `verify_residual_curve.py` pass outright.
- **Numerical sanity.** 120 random least-squares starts gave 78 physical
  MUB triples. All have count 2, and all have a zero 3-by-3 minor on
  exactly two edges. Three count-0 triples have zero minors on all three
  edges. None contradicts the theorem. On these triples the six-distinct
  direction is M2 (+) M2, and its adjacent characters are binary, exactly
  the configuration the no-zero-3-minor hypothesis removes.
- **Abstract, nonphysical stress families** of residual operators, which
  satisfy the orthogonality relations but not the physical frames, exist
  for m = 4 (antipodal) and m = 5. The archive's input-only rank-3 control
  also survives. In each case the contradiction really comes from the
  physical input and output frames, which is where the proofs place it.

Inputs: only the active files listed under Dependencies, plus Jaming et al.
for the quartet corollary. Nothing from
[ASSUMPTIONS.md](../../../MinimalConstruction/ASSUMPTIONS.md) is needed, and
no archive "accepted input" is used.

## Verification

    python3 verify.py

This runs the five check modules in about 50 s and exits nonzero on
failure. Every module is an independent implementation written for this
import; none of it is archive code. The modules check the load-bearing
identities in exact arithmetic (sympy) and the abstract lemmas on random
instances. They also give numerical controls of the residual structure on
an exact count-two triangle and on a numerical MUB triple
(`data/numerical_triple.json`). `data/expected_results.json` pins the full
outputs.

The written proofs supply the universal quantifiers. The checks are
controls and identity checks, not a formal proof.
