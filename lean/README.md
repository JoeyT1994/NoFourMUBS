# Lean formalisation

This folder formalises the direct proof of N(6) = 3 in [`PROOF.md`](../PROOF.md). It builds against Mathlib and a
small part of the Lean classification of order-6 complex Hadamard matrices,
[`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six),
pinned at `57b0302` (see [Dependencies](#dependencies)).

```bash
lake exe cache get        # prebuilt Mathlib
lake build
python3 check_axioms.py   # build, then audit the axioms of every main theorem (also: verify.py --lean)
python3 check_axioms.py --full   # also build and audit the main theorem, L1 and Final (up to ~7 GB of RAM)
```

## The main theorem

```lean
theorem NoFourMUBs.EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs
```

It is in [`NoFourMUBs/SeedAtlas/EdgeXFinal.lean`](NoFourMUBs/SeedAtlas/EdgeXFinal.lean) and uses only the axioms
`propext`, `Classical.choice` and `Quot.sound`, as `SeedAtlas/EdgeXAxioms.lean` checks. Its one hypothesis,
`EdgeAtlasCertificate`, holds the finite data of Steps 3–5 of `PROOF.md`:
- the seed balls, each with its enclosure (`hC1`) and its Stage C certificate,
- the ball at F6, with its chart, the bound on its image within ρ = 7/40 of F6, and the field
  `exclusion : XExclusion ρ`, which Lean proves (`X.Radius0175`),
- the covers of the boundary spheres,
- the record of Tao's matrix.

[`NoFourMUBs/SeedAtlas/README.md`](NoFourMUBs/SeedAtlas/README.md) explains each field. The numbers in the
certificate are checked by the Arb certifier in [`proof/seed_atlas/cert/`](../proof/seed_atlas/cert/) and by the
independent Julia checker in [`proof/independent_seed/`](../proof/independent_seed/README.md).

The exclusion near F6 is in [`NoFourMUBs/X/`](NoFourMUBs/X/README.md):
`no_quartet_near_F6_r0175 : ∀ H, IsHadamard H → dph H ≤ 7/40 → ¬ QuartetEdge H`. It has no hypotheses. Its
Stage C certificate at F6 is checked in the kernel and is kept in [`kernel_atlas/`](../kernel_atlas/README.md). Its
generated modules need one large node (128 cores, up to 8 hours), so continuous integration does not build them.

## The results of `PROOF.md` in Lean

| `PROOF.md` | Lean | Module |
|---|---|---|
| Theorem 1, the maxima of R | `Step1Geo.maximumCensus`, with the 96 certificate theorems of [`Step1Gen/`](Step1Gen/README.md) | `Step1/` |
| Lemma 1.1, the strict seeds are connected | `isConnected_strict` | `Step2/StrictConnected` |
| Theorem 2.2, matched existence | `L1.matchedExistence` | `L1/Existence` |
| Theorem 2.3, matched uniqueness | `matchedUniqueness` | `Step2/MatchedUnique` |
| Theorem 2.4, the nonmatched converse | `PRM.nonmatched_tao_or_fourier` | `PRM/Converse` |
| Theorem 2.5, strict-corner coverage | `PRM.strictCornerCoverage` | `Final` |
| Corollary 2.6, exact reach | `PRM.exactReach`, and density from it, `PRM.densityReach` | `PRM/Reach` |
| Lemma 3.2, Stage C | `StageCCert.excludes` | `StageC/` |
| Theorem 4.1, no quartet within 7/40 of F6 | `X.no_quartet_near_F6_r0175` | `X/` |
| Lemmas 5.1 and 5.2, transfers and coverage | `transfer`, `recordClopen_of_atlas` and the seed-atlas versions | `Transfer`, `Step4`, `SeedAtlas/` |

The covered classes form a set that is open, closed and contains F6, so `Step2.coverage_of_matched_density` shows
that it contains every non-Tao class.

`MainTheorem.lean`, `Complete.lean` and `Final.lean` also state the theorem for an earlier certificate format,
`AtlasCertificate`. The main theorem imports them for the results above, not for that statement.

## Dependencies

The upstream package `hadamard6_formal` supplies the matrix model and a few lemmas. The proof does not use its
classification theorem. Everything it imports goes through two places.

* [`NoFourMUBs/Lib/Hadamard.lean`](NoFourMUBs/Lib/Hadamard.lean), imported by `Basic`. It imports five upstream leaf
  modules (`BlockCompletion`, `BlockGram`, `FiniteCornerFromBlocks`, `PhaseEquivalence` and `TaoOrbit`, eleven
  modules with their imports). These give the matrix model `Mat6`, `IsHadamard`, `Equivalent`, `IsTaoOrbit`,
  dephasing, and the block Gram and completion lemmas. A few short upstream declarations sit in modules that import
  most of the classification, so this file restates them, with upstream's statements and proofs, in namespace
  `NoFourMUBs`. They are the quotient `Had6`, `HadamardClass6` and `TaoClass` (`HadamardQuotient`), `standardOmega`
  (`TaoAtlas`), `affineFourierMatrix` and its Hadamard property and `transpose_isHadamard` (`KarlssonFourierSeam`),
  and `equivalent_transpose` and `primitiveCubicPhase_eq_standard_or_sq` (`FourierSeamCertificate`), about 150 lines
  in all.
* `PRM/FourierBlock` imports upstream's Fourier-block normalisation and cubic census directly
  (`SimultaneousFourierNormalization`, `FourierCubicTaoTable` and `FourierCoordinateAllocation`). These proofs are
  long, about 2,400 lines of the declarations used, including three Tao case certificates of 320 lines each. They are
  therefore imported, not copied, and bring in a further 42 upstream modules.

The import closure of `NoFourMUBs.Final`, without Mathlib and Lean core (`python3 import_closure.py`), is:

| | Modules | Non-blank lines |
|---|---|---|
| Ours (`NoFourMUBs`, `Step1`) | 117 | 18,756 |
| `Hadamard6` | 56 | 10,143 |
| Total | 173 | 28,899 |

The proof uses about 290 upstream declarations (about 3,300 lines), almost all from the modules above.

## Modules

| Module | Content |
|---|---|
| `Basic`, `Skeleton`, `Invariance`, `Main` | MUBs as unitary matrices, the reduction of four MUBs to a Hadamard quartet edge, invariance under equivalence and under Γ = {id, conj, ᵀ, conj ∘ ᵀ}, and `no_four_mubs` from named inputs |
| `Horizontal`, `NormalBound` | Horizontal phases and the gauge, the bound on the normal displacement used by Stage C, and the isolation of S₆ |
| `StageC/` | Stage C: the bin, direct, linearised, scalar, edge and joint tests, the two-clique assembly, and the certificate interface `StageCCert.excludes` |
| `Record`, `Atlas` | The records of Tao's matrix and of the earlier certificate format, and their exclusion theorems |
| `Transfer`, `Boundary`, `Step4` | Transfers across boundary spheres, boundary covers, and the open and closed covered set |
| `Step1/` | Step 1: the saddle theorem, the deltoid, the single and double boundary, the trace lift and `Step1Geo.maximumCensus` with explicit anchors |
| `Step2/` | The topology of Step 2, matched uniqueness, the connectedness of the strict seeds (explicit paths with `R > 0` join the 18 maxima), the Fourier anchor (`matched_fourier`), the Fourier classes (`fourierClasses_subset`) and `coverage_of_matched_density` |
| `Identity/` | A verified checker for large polynomial identities. A circuit with bounded degrees and coefficients that vanishes at one Kronecker point is the zero polynomial |
| `L1/` | Matched existence. Side existence comes from the Jacobian identity of the Gram map, the inverse function theorem and the connectedness of the strict seeds. Flatness comes from two kernel-checked identities for one weighted defect `W₁₁` (`FlatCheckF`), and the other three defects follow by relabelling the seed (`W_rowPerm`, `W_colPerm`) |
| `PRM/` | The nonmatched converse, exact reach and strict-corner coverage, with its routing (`CoverageMain`), the ten-corner count (`CoverageEndCount`) and the classification of critical strips (`CoverageStrip*`, `CoverageMixed*`, `CoverageSigned*`). `FourierMatch` and `CoverageFourierLocus` serve `FourierVanishing/` only |
| `SeedAtlas/` | The atlas certificate, the X-ball and the main theorem (see [`SeedAtlas/README.md`](NoFourMUBs/SeedAtlas/README.md)) |
| `X/` | No quartet edge within 7/40 of F6 (see [`X/README.md`](NoFourMUBs/X/README.md)) |
| `FourierVanishing/` | The Fourier-vanishing theorem used in Section II of the paper, not by the main proof (see [`FourierVanishing/README.md`](NoFourMUBs/FourierVanishing/README.md)). Build it with `lake build NoFourMUBs.FourierVanishing.Main` |
| `Lib/` | The upstream interface (see [Dependencies](#dependencies)) and the shared lemmas `mul_conj_of_normSq` and `row_orth` |
| `MainTheorem`, `Complete`, `Final` | The assembly of the results above |
| `Axioms`, `AxiomsComplete`, `SeedAtlas/EdgeXAxioms` | The axiom audits read by `check_axioms.py` |

The scripts in `generators/` produce the data modules. `flatness/generate.py` writes the factor table
`L1/FlatData.lean`. `coverage/certificates.py` reproduces the certificates written into `PRM/Coverage*.lean`.
`strip/signed.py` and `zeroj_product/generate.py` produce `PRM/CoverageSignedData` and `PRM/CoverageMixedData`. The
kernel re-checks every identity, so the generators need not be trusted.

## Build cost

`lake build` builds the library root, which does not import `NoFourMUBs.Complete` or `NoFourMUBs.Final`.
`check_axioms.py --full` builds both. Measured on an 18-core Apple laptop with 64 GB, one module at a time
(`lake env lean`, each time including about 10 s of imports):

| Module | Identities | Time | Peak memory |
|---|---|---|---|
| `L1/FlatCheckF` | the 2 cleared coefficients of the weighted defect `W₁₁` | 11 s | 6.3 GB |
| `L1/FlatCheckTable` | 10 table identities | 11 s | 6.1 GB |
| `L1/SideGram`, `SideJacobian`, `SideCover` | side existence | 37 s together | 6 GB |

The 12 modules of `L1/` build in 85 s in one `lake build`, with a peak of 6.5 GB. In strict-corner coverage, no
module takes more than about a minute or 12 GB. The four curve checks `CoverageSignedK*` take about 12 s and 6.1 GB
each, and the two kernel checks of the zero-J part take about 11 s and 6.3 GB each. Rebuilding `L1/`,
`PRM/Coverage*`, `Complete` and `Final` together takes 285 s, with a peak of 6.8 GB.
