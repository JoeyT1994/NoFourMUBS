# Common rays of a pair (I, H)

Results about the set of rays unbiased to both the standard basis and a
fixed order-six Hadamard H/√6, including a local quartet exclusion by a
cluster cover. Each
document starts with a header giving the statement, status, dependencies and
archive provenance.

| Result | Statement | Scope | File |
|---|---|---|---|
| Cluster cover | A cover by labels of internal squared overlap >1/6 reduces quartet exclusion to a finite graph, without counting roots or proving regularity. An explicit seed cube of radius 1/1024 near the campaign's X₆ seed is excluded | Analytic theorem and interval replay; local certificate uses accepted reconstruction identities and campaign Taylor models | [ClusterCover/README.md](ClusterCover/README.md) |
| Finite common-ray algebra | The common-ray scheme is a finite complete intersection of length 252−2m, with m the number of zero 2×2 minors. Removing the 72 non-unimodular solutions (t²+4t+1=0) leaves a Gorenstein quotient B_H of length 180−2m that contains every physical common ray. m≤45 | Every H with all 400 3×3 minors nonzero, which includes every quartet edge (via EdgeRigidity + FourierBlocks + published exclusions). Analytic, with exact modular controls | [FiniteCommonRayAlgebra.md](FiniteCommonRayAlgebra.md) |
| 252-root completeness | Full-spark H: no solutions on z0w0=0, and the fibre has length exactly 252 | Full-spark H. The m=0 case of the row above (Section 2 there) | [FiniteCommonRayAlgebra.md](FiniteCommonRayAlgebra.md) §2 |
| Zero 2×2 minor does not force Karlsson | Seed (1,(−24−7i)/25,(−8−15i)/17,−i): exactly one zero 2×2 minor, all 3×3 minors nonzero, no H2 block | Interval certificate, conditional on the accepted reconstruction inputs | [FiniteCommonRayAlgebra.md](FiniteCommonRayAlgebra.md) §9 |
| Rank/spectral conditions | A quartet forces rank[Γ0…Γ4]≤168−2m and z^30(z−6)^36 dividing det(zI−B_w), so Q6=det(6I−B_w)=0. k extra MUBs force nullity Γ3≥6k | Necessary conditions on B_H. Analytic | [RankSpectralConditions.md](RankSpectralConditions.md) |
| Phase collisions | In an MUB triple no mixed column quotient takes one value ≥4 times. A two-valued diagonal orbit has defect ≥1/11, and at most two columns of H are unbiased to it | Every phase Hadamard. Analytic, with exact sharpness control | [PhaseCollisions.md](PhaseCollisions.md) |
| Two-valued anchor | In an MUB triple every mixed column quotient takes ≥3 distinct values | Every MUB triple. Analytic reduction plus exact certificates | [TwoValuedAnchor.md](TwoValuedAnchor.md) |
| One-phase recovery | For the flatness equations of H†diag(v)A, with A a phase rectangle having ≥2 orthonormal columns, the real coefficient matrix of one phase has rank 2 at every solution, so that phase is rational in the others | Every phase H, A. The two-phase algorithm (§3) needs H with no zero 3×3 minor | [OnePhaseRecovery.md](OnePhaseRecovery.md) |
| Two-rectangle alignment | The coefficient rank is 4, 5 or 6. Rank 6 has no solution, rank 5 gives one explicit line, and rank 4 is a cubic S³=αI, T=cS². With H free of zero 3×3 minors there are at most 6 orthogonal alignments per placement | Fixed H, A, B. Analytic | [TwoRectangleAlignment.md](TwoRectangleAlignment.md) |
| Three-ray completion rigidity | A strict rectangle has at most one flat completion, and E_ext=detΓ+Σtr κ(g_j)² vanishes iff it extends to a third MUB | Strict rectangles (3×3 minors with squared modulus in (0,27)). Analytic | [ThreeRayCompletion.md](ThreeRayCompletion.md) |
| Completion substitution | For strict rectangles the rank-4 alignment branch is empty (Sylvester). The rank-5 completion test is detΓ=0, Γℓ_j(J)=0 | Strict A0, B0. The rank-5 exclusion is open | [CompletionSubstitution.md](CompletionSubstitution.md) |

## Verifiers

Run each verifier from its own folder with `python3 verify.py`. The
algebra verifiers use only files inside ProvenResults and do no receipt or hash
checks. They exit nonzero on failure.

| Folder | Covers | Typical time |
|---|---|---|
| [ClusterCover/](ClusterCover/) | Direct phase-torus cover and exhaustive graph; also uses NumericalCampaign/Certification and its pinned Julia environment | ~35 s including compilation |
| [finite_algebra/](finite_algebra/) | FiniteCommonRayAlgebra.md: modular controls, Tao, F6 rejection, both §9 interval certificates | ~1 s |
| [collisions/](collisions/) | PhaseCollisions.md and TwoValuedAnchor.md | ~10 s |
| [alignment/](alignment/) | OnePhaseRecovery.md, TwoRectangleAlignment.md, ThreeRayCompletion.md, CompletionSubstitution.md | ~4 s |

`qfield.py` supplies the shared exact arithmetic in Q(i,√2,√3,√7,√221).
RankSpectralConditions.md is analytic and has no verifier.

## Inputs from outside this folder

- **No zero 3×3 minor on quartet edges.** This comes from the block/zero-minor
  equivalence in [../EdgeRigidity/](../EdgeRigidity/), which is being imported
  separately, together with
  [../FourierBlocks/FourierBlockClassification.md](../FourierBlocks/FourierBlockClassification.md)
  and the published Fourier-family and Tao quartet exclusions. The algebraic
  theorems themselves are stated for any H satisfying the minor hypothesis.
- **Accepted reconstruction inputs.** Only the §9 physical control of
  FiniteCommonRayAlgebra.md uses them
  ([../../MinimalConstruction/ASSUMPTIONS.md](../../MinimalConstruction/ASSUMPTIONS.md)).
