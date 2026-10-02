# Triples: MUB triples (I, H, K), their diagonal-phase matchings, and the reduction to a fourth basis

These results concern three mutually unbiased bases of C^6, or a triangle
of three aligned transitions. Some also concern the two further transitions
that a quartet would add. None of them excludes a fourth MUB.

They were imported from `../NoFourMUBSArchive` (see each file's Provenance
line). Proof texts were copied without mathematical change. Each file
starts with a Statement / Status / Dependencies / Provenance header.

| Result | Statement | Scope and status | File |
|---|---|---|---|
| Matching bijection | Diagonal-phase matchings A* diag(eta) B = diag(r) X diag(s) correspond to common eigenlines of G_k=T_1*T_k, and their number is dim ker K_G (at most 6) | Every aligned triangle, any dimension; proved | [TriangleNullities.md](TriangleNullities.md) §2-3 |
| **Triangle nullity gap** | dim ker K_G is 0, 1, 2 or 6. Three matchings force six. e4(K_G)=0 implies K_G=0 | Every aligned order-six triangle, global and unconditional (analytic). Whether nullity 1 occurs physically is open | [TriangleNullities.md](TriangleNullities.md) §3, proof in [TriangleNullityProof.md](TriangleNullityProof.md) |
| Matching forms | A matching is a factorisation D_I(η)=D_U(r)D_V(s); the trivial one is infinitesimally isolated; a second matching exists iff Σx_jR_j has rank one for some unimodular x ⊥ 𝟙; **Lemma Z**: every Zauner triple has count ≥ 2 | Every MU triple; proved (Lemma Z exact symbolic check) | [MatchingForms.md](MatchingForms.md) |
| Isolated six-matching triangle | The zeta=e^(i pi/12) triangle {I, H, B} is locally isolated modulo gauges (lifted nonzero 55x55 Jacobian minor) | One exact triangle; local | [TriangleNullities.md](TriangleNullities.md) §4.1 |
| Triplet moduli disconnected | The space of MUB triplets in C^6, modulo unitaries, phases and permutations, is disconnected | Global topological statement. There is an exact second class with an edge having no zero3. Not a census of components | [TriangleNullities.md](TriangleNullities.md) §4.2 |
| Quartet operator L | L = K_G⊗I + I⊗K_J + Σ S_ij² (36x36) is PSD, and ker L ≠ 0 iff the five fixed representatives extend to a quartet. dim ker L counts ordered successful phase pairs. B=C, X=Y gives residual at least 1/5 | Fixed five representatives and alignments. Strict positivity over all inputs is open | [TriangleNullities.md](TriangleNullities.md) §6 |
| **Covariance contraction** | Completion lemma: a fourth basis exists iff some J in N_full has J²-2J-3I=0. If I+J is PSD then J ⪯ 3I and tr J² ≤ 60, and a fourth basis exists iff tr J²=60 (spectrum 3^[5], -1^[15]). Σ‖[Y_l,Y_t]‖² = 2(60 - tr J²). The equality face has a central decomposition, with no rank-2 block if the edge has no zero3 | Every MUB triple; proved. The no-rank-2-block statement is conditional on no zero3, which holds on quartet edges by [EdgeRigidity](../EdgeRigidity/QuartetEdgeCorollary.md). max tr J² < 60 is open | [CovarianceContraction.md](CovarianceContraction.md) |
| Sharp three-row moment | S(X)=Σ_(j≠k)\|G_jk\|⁴ ≥ 126 for any three rows of a Hadamard (exact SOS; sharp at F6) | Every order-six Hadamard, unconditional | [ThreeRowGram/SharpBound.md](ThreeRowGram/SharpBound.md) §1 |
| Two-valued diagonal orbits | If D has at most two values and Q is monomial, E(H,DHQ) ≥ 4/17 (optimal), so DHQ is never a mate of H | Every order-six Hadamard, unconditional | [ThreeRowGram/SharpBound.md](ThreeRowGram/SharpBound.md) §2 |
| Equality branches | At S=126: feature rank 5. Support two is impossible, support one gives a zero3, and equal weights give the explicit H8 class (exhaustive completion) | Unconditional | [ThreeRowGram/EqualityBranches.md](ThreeRowGram/EqualityBranches.md) |
| Positive weights equal | At S=126, three positive kernel weights must all equal 1/3 | Unconditional. **Supplied proof; author verifier never run. Independently re-read at import: correct.** New independent checker | [ThreeRowGram/PositiveWeightEquality.md](ThreeRowGram/PositiveWeightEquality.md) |
| H8 mates and exclusion | H8 has exactly four mates, each with a binary column pair and 24 zero3. No two are mutually unbiased, so H8 is not a quartet edge | One explicit class. Uses [CommonRays/FiniteCommonRayAlgebra](../CommonRays/FiniteCommonRayAlgebra.md) | [ThreeRowGram/H8Mates.md](ThreeRowGram/H8Mates.md) |
| **Strict bound on quartet edges** | S(X) > 126 for every three rows (and columns) of every quartet transition | Corollary of the four rows above plus [EdgeRigidity/QuartetEdgeCorollary](../EdgeRigidity/QuartetEdgeCorollary.md), which uses FourierBlocks and Jaming et al. Forcing S=126 is open | [ThreeRowGram/StrictBound.md](ThreeRowGram/StrictBound.md) |

Related addendum, kept with the pair results:
[../RelativePhases/QuadraticPhaseCone.md](../RelativePhases/QuadraticPhaseCone.md).
It gives the quadratic description W(A)=0 of the phase-correlation cone, the
three-Hadamard coupling system for a quartet on fixed I, V1, V2, V3, the
exact decision for kernel dimensions 0, 1 and 2, and the 35/78 SOS bound on
the self-overlap subspace.

## Dependency caveats

- **Published inputs:** only StrictBound (support-one branch) and the
  conditional clause of CovarianceContraction §7 use one, through
  EdgeRigidity/QuartetEdgeCorollary (Jaming et al.,
  [arXiv:0902.0882](https://arxiv.org/abs/0902.0882), with FourierBlocks).
- **Supplied proof re-read at import:** PositiveWeightEquality. It was not
  refereed externally. The script PositiveWeight.py re-derives its cubic
  table and all its identities independently.
- **Not used anywhere here:** the reconstruction inputs of
  `MinimalConstruction/ASSUMPTIONS.md` and the balanced theorem.
- The CovarianceContraction completion lemma is the full-minor covariance
  lemma, proved in that file. It is not the Bloch criterion of
  [../Completion](../Completion/CRITERION.md).

## Verification

Each script runs with its own folder as the working directory and exits
nonzero on failure. Nothing outside ProvenResults is read. No receipt is
read or written, except a temporary directory used by H8Mates.py.

| Script | Approx. time |
|---|---|
| `Triples/TriangleNullities.py` | 4 s |
| `Triples/CovarianceContraction.py` | 70 s |
| `Triples/ZaunerMatching.py` | 5 s |
| `Triples/ThreeRowGram/SharpBound.py` | 1 s |
| `Triples/ThreeRowGram/EqualityBranches.py` | 10 s |
| `Triples/ThreeRowGram/PositiveWeight.py` | 6 s |
| `Triples/ThreeRowGram/H8Mates.py` | 30 s |
| `RelativePhases/QuadraticPhaseCone.py` | 20 s |

H8Mates.py needs python-flint and numpy, and the data file
`ThreeRowGram/data/h8_p193513_normal_forms.out`. EqualityBranches.py reads
`ThreeRowGram/data/completion_certificate.json`.
