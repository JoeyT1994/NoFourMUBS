# Edge rigidity: lemmas about a single transition matrix

Each result here concerns one order-six Hadamard. Some concern one triangle
of transitions. Every such result applies to each of the twelve directed edges
R_ab = sqrt(6) B_a* B_b of a hypothetical quartet. The lemmas exclude strata of
edges. None of them forces an edge into an excluded stratum, and nothing here
excludes a fourth MUB.

The results were imported from `../NoFourMUBSArchive` (see each file's
Provenance line). The proof texts were copied without mathematical change. Each
file starts with a Statement / Status / Dependencies / Provenance header.

| Result | Statement | Scope and status | File |
|---|---|---|---|
| Zero3 / antipodal / block | A zero 3-minor gives an antipodal quotient, and an antipodal quotient gives a 3-by-3 Hadamard block. For non-Tao matrices the three conditions are equivalent | Every Hadamard. The elementary direction is unconditional. The converse uses [FourierBlocks](../FourierBlocks/FourierBlockClassification.md) | [BlockZero3Equivalence.md](BlockZero3Equivalence.md) |
| Singular-corner normal form | A singular 3-by-3 submatrix forces R or R^T to be equivalent to [[F3,F3],[F3Z,-F3Z]], the Fourier family | Every Hadamard, unconditional. A second route to the corollary below | [SingularCornerNormalForm.md](SingularCornerNormalForm.md) |
| **Quartet-edge corollary** | No quartet edge has a zero 3-minor, an antipodal quotient or a 3-by-3 Hadamard block, and det(6I-FF*)>0 for every 3-by-3 corner F | All 12 edges and all 400 positions. Uses FourierBlocks + Jaming et al. (Fourier family and its transpose). The block statement also uses Brierley-Weigert or the local Tao exclusion | [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md) |
| Spectral slack / Cauchy-Binet | 6I-FF*=BB*, with an explicit four-seed det formula; det T[I,J] = (1/(6 sqrt6)) sum_S conj(det H[S,I]) det K[S,J]; sum_J \|det T[I,J]\|^2=216 | Exact identities, unconditional | [SpectralSlackIdentities.md](SpectralSlackIdentities.md) |
| Cubic pair rigidity | A row or column quotient with exactly three values (equivalently \|sum r_j^3\|=6) forces Tao or an antipodal pair | Every Hadamard, unconditional. So \|sum r_j^3\|<6 holds strictly on quartet edges | [CubicPairRigidity.md](CubicPairRigidity.md) |
| Matching conventions | Definition of triangle matchings. A nontrivial matching has zero-sum relative vectors in all three directions | Every triangle. Short new proof, which replaces an archive citation | [MatchingConventions.md](MatchingConventions.md) |
| Ternary matching (+ sign) | Two matchings that are three-valued in all directions with the positive cubic sign force every edge to be F2 tensor F3, and give at least 3 matchings | Every triangle, unconditional. With the nullity gap in [TriangleNullities.md](../Triples/TriangleNullities.md) this gives six | [TernaryMatchingRigidity.md](TernaryMatchingRigidity.md) |
| Ternary matching (- sign) | No triangle has a negative-sign cubic matching | Unconditional | [NegativeCubicMatchingExclusion.md](NegativeCubicMatchingExclusion.md) |
| One binary direction | One binary relative direction between two matchings forces a zero 3-minor on some edge. Includes the projector lemma (h=4 or 5) | Every triangle, unconditional. So on quartets every such direction is strictly nonbinary | [OneBinaryMatching.md](OneBinaryMatching.md) |
| Projector rank five | For a non-Tao H with no zero 3-minor, the centered projectors on any 3 rows have real rank 5. Also proves the sharpened block theorem and an exact non-singular-normal control | Unconditional. Holds on every quartet edge | [ProjectorRank5.md](ProjectorRank5.md) |
| H_X control | An exact triangle with exactly two matchings and one nonbinary direction | Exact certificate (a refuted statement) | [HXNonbinaryCounterexample.md](HXNonbinaryCounterexample.md) |
| Balanced rank two | For non-Tao H, each of the 30 balanced product matrices has rank <=3. Rank <=2 forces an antipodal pair, so the rank is exactly 3 on every quartet edge | **Conditional** on [BalancedProducts](../BalancedProducts/BalancedFourSeedIdentity.md), which is conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md) | [BalancedRankTwoRigidity.md](BalancedRankTwoRigidity.md) |
| Partial three-corner control | An orthogonal 2-by-3 restriction does not force a zero 3-minor | Exact certificate (a refuted statement) | [PartialThreeCornerCounterexample.md](PartialThreeCornerCounterexample.md) |
| Cubic incidence | C*C<=18I for the entrywise cube; 6<=FP3<=18 and 28/3<=FP2<=12. With no zero 3-minor, rank C>=3 and the scalar upper bounds are strict | **Conditional** on BalancedProducts, as above. Unconditional wherever the balanced characters vanish | [CubicIncidence.md](CubicIncidence.md) |
| Pairing lemma and detector A(M) | With balanced zeros, one vanishing cubic balanced sum is equivalent to H2-reducibility. p_3 = 3z_i^-2 prod(z_i+z_j). A(M)=0 iff M is H2-reducible | The pairing lemma is **conditional** on BalancedProducts, as above. The detector uses Karlsson's published theorem. The factorization is unconditional | [KarlssonPairingDetector.md](KarlssonPairingDetector.md) |

## Dependency caveats

- **Published inputs:** the quartet corollary uses Jaming et al.
  ([arXiv:0902.0882](https://arxiv.org/abs/0902.0882)). Tao blocks use Brierley-Weigert
  ([arXiv:0901.4051](https://arxiv.org/abs/0901.4051)) or the local
  [Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md). The detector A(M) and the
  pairing lemma use Karlsson's H2-reducibility theorem.
- **Accepted but not proved here:** the balanced theorem of BalancedProducts rests on the
  reconstruction inputs listed in `MinimalConstruction/ASSUMPTIONS.md`. Balanced rank two,
  the cubic-incidence application to all non-Tao H, and the pairing lemma inherit that
  condition.
- **Archive framework remarks.** Some paragraphs refer to the archive's guarded
  product-frame coordinates or its covariance map (N_full, J). These paragraphs are marked
  as remarks. No result here depends on them.
- The nullity theorem (matching count in {0,1,2,6}) is in [TriangleNullities.md](../Triples/TriangleNullities.md).
- **Not imported:** the archive two-direction binary theorem (superseded by OneBinaryMatching).

## Verification

    python3 verify.py

This runs 13 sub-checks in about 45-70 s and prints one PASS line per sub-check. It exits
nonzero on failure. Each sub-check recomputes its exact algebra and compares the complete
output with `data/expected_results.json`. That file was checked to coincide with the
archive receipts after their source-hash fields were removed. No archive file is read.

| Module | Used by |
|---|---|
| `block_zero3.py` | BlockZero3Equivalence |
| `quartet_boundary.py` | SingularCornerNormalForm |
| `quartet_corollary.py` | QuartetEdgeCorollary (Fourier-family identification, Tao minors) |
| `spectral_identities.py` | SpectralSlackIdentities |
| `cubic_pair.py` | CubicPairRigidity |
| `ternary_rigidity.py`, `negative_cubic.py` | the two ternary theorems |
| `hx_nonbinary.py`, `one_binary.py`, `projector_rank5.py` | HX control, OneBinaryMatching, ProjectorRank5 |
| `balanced_rank_two.py`, `partial_three_corner.py` | BalancedRankTwoRigidity and its control |
| `cubic_incidence.py` | CubicIncidence |
| `karlsson_pairing.py`, `jmmsw_triple.py` | KarlssonPairingDetector (exact JMMSW triple) |
| `compatibility.py` | exact number-field helper |
