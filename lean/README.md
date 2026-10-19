# Lean formalisation

This builds against Mathlib and a small part of the Lean classification of order-6 complex Hadamard matrices, [`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six) (pinned at `57b0302`; see [Dependencies](#dependencies)).

```bash
lake exe cache get        # prebuilt Mathlib
lake build
python3 check_axioms.py   # build, then audit the axioms of every main theorem (also: verify.py --lean)
python3 check_axioms.py --full   # also build and audit L1 and Final (about 12 min on an Apple M5 Max with the Mathlib cache)
```

## The main theorem

[`NoFourMUBs/MainTheorem.lean`](NoFourMUBs/MainTheorem.lean) bundles every finite, checkable input into `AtlasCertificate`: the Records, their boundary covers, the Tao matrices and F6. It then proves:

```lean
theorem no_four_mubs_main (C : AtlasCertificate) (hE : Step2.MatchedExistence)
    (hD : Step2.MatchedDensityReach) : ¬ FourMUBs
```

[`NoFourMUBs/ConnectedRoute.lean`](NoFourMUBs/ConnectedRoute.lean) keeps the alternative route, with the connectedness of the non-Tao quotient as a hypothesis; `Final` does not import it:

```lean
theorem no_four_mubs_of_connected (C : AtlasCertificate) (hX : Step2.NonTaoPreconnected) : ¬ FourMUBs
```

[`NoFourMUBs/Complete.lean`](NoFourMUBs/Complete.lean) discharges `hE` with `L1.matchedExistence`:

```lean
theorem no_four_mubs_of_density (C : AtlasCertificate) (hD : Step2.MatchedDensityReach) : ¬ FourMUBs
```

It also proves the main theorem from the certificate and strict-corner coverage (MC1) alone:

```lean
theorem no_four_mubs_of_coverage (C : AtlasCertificate) (hcov : PRM.StrictCornerCoverage) : ¬ FourMUBs
```

[`NoFourMUBs/Final.lean`](NoFourMUBs/Final.lean) proves coverage (`PRM.strictCornerCoverage`), which leaves the atlas certificate as the only hypothesis:

```lean
theorem Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs
```

All five use only `propext`, `Classical.choice` and `Quot.sound` (audited by `Axioms.lean` and `AxiomsComplete.lean`).

| Hypothesis | Status |
|---|---|
| `AtlasCertificate` | Finite certificate, checked by `certify.py`, `nonempty.py` and the independent Julia checker (`proof/atlas/results/RECEIPT.md`) |
| `NonTaoPreconnected` | `PROOF.md` Theorem 2: via L1, L2 and exact reach (return G), without any classification. Only `no_four_mubs_of_connected` takes it; `Final` uses `Step2.coverage_of_matched_density` instead |
| `MatchedExistence` (L1) | **Proved in Lean** (`PROOF.md` Theorem 2.2): `L1.matchedExistence` (`L1/Existence.lean`): side existence by the Jacobian identity (J) and the inverse function theorem (`proof/coverage/returns/J_side_existence`), and flatness from the certificate `E_matched_flatness`, re-checked by the kernel |
| `MatchedDensityReach` (D) | **Proved in Lean from strict-corner coverage** (`PRM.densityReach`, via exact reach `PRM.exactReach`, `PROOF.md` Corollary 2.6, and return G's Theorem A, `PRM.nonmatched_tao`, `PROOF.md` Theorem 2.4) |
| `StrictCornerCoverage` (MC1) | **Proved in Lean** (`PROOF.md` Theorem 2.5): `PRM.strictCornerCoverage` (`Final.lean`), from the critical strip classification I4 (`PRM/CoverageStripParts`: zero `J` by the zero-`J` square-sum identity `PRM/CoverageStripIdZero*`, nonzero `J` by return K's two signed corner sums `PRM/CoverageSigned*`), the endpoint exclusions I5 (`PRM/CoverageEndpoints`) and the routing and ten-corner count (`PRM/CoverageMain`) |

## Dependencies

The upstream package `hadamard6_formal` supplies the matrix model and a few lemmas; the proof does not use its classification theorem. Everything it imports goes through two places:

* [`NoFourMUBs/Lib/Hadamard.lean`](NoFourMUBs/Lib/Hadamard.lean), imported by `Basic`. It imports five upstream leaf modules (`BlockCompletion`, `BlockGram`, `FiniteCornerFromBlocks`, `PhaseEquivalence`, `TaoOrbit`; eleven modules with their imports): the matrix model `Mat6`, `IsHadamard`, `Equivalent`, `IsTaoOrbit`, dephasing, and the block Gram and completion lemmas. It restates, with upstream's statements and proofs, the few short upstream declarations that sit in modules importing most of the classification: the quotient `Had6`, `HadamardClass6`, `TaoClass` (`HadamardQuotient`), `standardOmega` (`TaoAtlas`), `affineFourierMatrix` and its Hadamard property, `transpose_isHadamard` (`KarlssonFourierSeam`), `equivalent_transpose` and `primitiveCubicPhase_eq_standard_or_sq` (`FourierSeamCertificate`), about 150 lines. They live in namespace `NoFourMUBs`.
* `PRM/FourierBlock` and `PRM/FourierMatch` import upstream's Fourier-block normalisation and cubic census directly (`SimultaneousFourierNormalization`, `FourierCubicTaoTable`, `FourierCoordinateAllocation`, `FourierNormalForm`, `FourierBlockCoordinates`). These proofs are long (about 2,400 lines of the declarations used, including the three 320-line Tao case certificates), so they are imported, not copied; their imports bring in a further 42 upstream modules.

The import closure of `NoFourMUBs.Final`, without Mathlib and Lean core (`python3 import_closure.py`):

| | Modules | Non-blank lines |
|---|---|---|
| Ours (`NoFourMUBs`, `Step1`) | 124 | 21,788 |
| `Hadamard6` | 56 | 10,143 |
| Total | 180 | 31,931 |

Measured 18 Oct 2026, after the cleanup that removed the unused modulo-five route (`CoverageSumArith`, `CoverageSumRule`) and `Step2/Connected` from the closure (before it: 127 and 183 modules, 22,235 and 32,378 lines). Before `Lib/Hadamard`, `Basic` imported all of `Hadamard6` and the closure held 137 upstream modules (24,180 lines), 305 in all (49,653 lines). The proof uses about 290 upstream declarations (about 3,300 lines), almost all from the modules above.

## Modules

| Module | Content |
|---|---|
| `Basic`, `Skeleton`, `Invariance`, `Main` | MUBs as unitary matrices; four MUBs give a Hadamard quartet edge; invariance under equivalence and Γ = {id, conj, ᵀ, conj ∘ ᵀ}; `no_four_mubs` from named inputs |
| `Horizontal`, `NormalBound` | Horizontal phases and the gauge; Lemma 3.1 (the calculus-free normal bound) and the isolation of S₆ |
| `StageC/` | Lemma 3.2 (Stage C): bins, direct, linearised, scalar, edge and joint tests, the two-clique assembly, and the certificate interface `StageCCert.excludes` |
| `Record`, `Atlas` | `RecordCert` (the data `certify.py` checks for one Record) and its exclusion theorem; atlas exclusion |
| `Transfer`, `Boundary`, `Step4` | Lemma 4.1 (boundary transfer), boundary covers, and the clopen covered set |
| `Step1/` | Step 1 in full: the saddle theorem, the deltoid, single and double boundary, the trace lift and `Step1Geo.maximumCensus` with explicit anchors, and the anchor orbit. It uses the 216 certificate theorems of library `Step1` (`Step1Gen/`) |
| `Step2/` | Step 2 topology (`Statements`, `TopologyCore`, `QuotientTopology`); matched uniqueness (`SideAlg`, `SidePerm`, `MatchedUnique`; `PROOF.md` Theorem 2.3); anchor transport (`AnchorTransport`: any matched completion at one maximum moves to all 18, and the clopen/maximum argument `eq_univ_of_anchor_transport`); the Fourier anchor (`FourierAnchor`, return Q: the family `affineFourierMatrix ω 1 z` is matched at a strict corner for `Im z > 0`, `matched_fourier`) and the direct coverage theorem `coverage_of_matched_density`; coverage from connectedness (a hypothesis) and F6 ≠ Tao (`Connected`, imported only by `ConnectedRoute`) |
| `Identity/` | A verified checker for large polynomial identities: a circuit with bounded degrees and coefficients vanishing at one Kronecker point is the zero polynomial (`Kronecker`), evaluated with sparse outer variables (`Sparse`, and the faster recursor form `Fast`), over a factor table of denominators with one quadratic element (`Frac`) |
| `L1/` | Matched existence. Side existence (return J, `proof/coverage/returns/J_side_existence`): the Gram invariants, domain inequalities and norm identities (`SideGram`); the Jacobian identity (J) of the Gram map in angle coordinates, the inverse function theorem and the open and closed sets of realised Gram data (`SideJacobian`); the open and closed set of strict seeds with sides of both signs (`SideCover`), which contains the Fourier anchor and so, by the pointwise step `matched_of_sides` and the anchor transport, every strict seed (`sides_all`, giving `exists_side_h` and `exists_side_v`, in `Existence`); and the side formulas (`SideFormulas`). Matched flatness (certificate E): the weighted-defect criterion `flat_of_W` (`FlatMatrix`), the reduced data and circuits (`FlatData`, `FlatCircuitsBase`, `FlatCircuits`), their kernel checks (`FlatCheck*`, for the one weighted defect `W₁₁`) and the bridge `W_zero` (`FlatBridge`), which gets the other three defects by relabelling the seed (`W_rowPerm`, `W_colPerm`). The assembly is `Existence` (`PROOF.md` Theorem 2.2) |
| `PRM/` | Return G (`proof/coverage/returns/G_prm`). An actual side's signature is a root of its Gram quadratic, R = 4 (Im T)² (`SideRoot`). Sides on the two roots share no column (`SharedColumn`). A strict strip has no proportional columns (`StrictStrip`). The projector argument gives an orthogonal column triple (`Projector`). A 3×3 Hadamard block gives Tao or all corners matched (`FourierBlock`, using upstream's Fourier normalisation and cubic census; the Fourier families are matched at all corners by 200 kernel-checked identities, `FourierMatch`). Theorem A is `Converse` (`PROOF.md` Theorem 2.4); exact reach (`PROOF.md` Corollary 2.6) and density from coverage are in `Reach`. Strict-corner coverage (MC1, `PROOF.md` Theorem 2.5, `MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`): the routing, Fourier critical locus, block lemma and ten-corner count (`CoverageMain` and its imports; the count is `CoverageTen*` and `CoverageGap`, the sorted 3-subsets `tri` and `e6 : I6 ≃ Fin 6` are in `Defs`); the critical strip classification I4 (`CoverageStrip*`): the zero-J square-sum identity (`CoverageStripId*`, status in `generators/stripid/STATUS.md`) and, for nonzero J, return K's signed sums (`CoverageSigned*`: the signed corner expansion, the boundary identity (7) with poles, the weighted sum on four curves in the gauge s = t = 1, pole forcing and the product of the six λ-denominators, with the pole factorizations of `CoverageQuarticPole`); the endpoint exclusions I5 (`CoverageEndpoints`, `CoverageEnd*`) |
| `FourierVanishing/` | Return H (`explorations/returns/H_fourier_vanishing`), an input to the draft paper's Section II, not to the main proof: `FourierVanishing.fourierVanishing`, all twenty row and column Fourier moments of a non-Tao order-six Hadamard vanish. It is built from `PRM.nonmatched_tao` and `PRM.strictCornerCoverage`. `Main` imports `Final`, so build it explicitly (`lake build NoFourMUBs.FourierVanishing.Main`); the lemma map is in `FourierVanishing/README.md` |
| `Lib/` | The upstream interface: narrow imports and the restated upstream declarations (see [Dependencies](#dependencies)); also the shared lemmas `mul_conj_of_normSq` and `row_orth` |
| `MainTheorem`, `ConnectedRoute`, `Complete`, `Final`, `Axioms`, `AxiomsComplete` | The main theorem, its connectedness form, with L1 discharged, and with coverage discharged (`Final.no_four_mubs`); the axiom audits read by `check_axioms.py` (`Axioms.lean` 32 theorems, `AxiomsComplete.lean` 18, `Step1/Audit.lean` 216) |

`generators/flatness/` regenerates `L1/FlatData.lean` (`generate.py`, using E's exact rational helper) and the check modules `L1/FlatCheck{Mh,Qv,W11,F}.lean` (`checks.py`). `generators/coverage/certificates.py` reproduces the certificates hard-coded in `PRM/Coverage*.lean`. `generators/strip/` (`moments.py`, `signed.py`) and `generators/stripid/` produce the data and check modules of I4. The kernel re-checks every identity, so the generators are untrusted.

**Build cost of L1.** `NoFourMUBs.Complete` is not imported by the library root, so `lake build` stays light. Matched flatness needs the kernel checks of only one weighted defect, `W₁₁` (the entry `(0, 0)` of `F0`, `F1`, `mhData`, `qvData` in the zero-based convention of `FlatCircuits`); `W₁₂`, `W₂₁`, `W₂₂` are `W₁₁` at relabelled seeds (handoff M: `W_rowPerm`, `W_colPerm` in `FlatMatrix`, `W_zero` in `FlatBridge`). Its kernel checks, measured on an 18-core Apple laptop (64 GB), one module at a time (`lake env lean`; each time includes about 10 s of imports):

| Module | Identities | Time | Peak memory |
|---|---|---|---|
| `L1/FlatCheckW11` | the 2 coefficients of the weighted defect `W₁₁` (4.6) | about 3 min | 11 GB |
| `L1/FlatCheckMh` | 18 entries of `K Q⁽¹⁾ K*` | under 1 min | 7 GB |
| `L1/FlatCheckQv`, `FlatCheckTable` | 18 vertical moments, 10 table identities | under 1 min | 6 GB |
| `L1/SideGram`, `SideJacobian`, `SideCover` | side existence (return J) | 37 s together | 6 GB |

The whole L1 route (the 15 modules of `L1/`) builds serially in about 6 min (366 s), peak 10.8 GB, from 346 KB of source
(31 MB of oleans). Before handoff M (17 Oct 2026), with the four defects checked separately (`FlatCheckF00` … `F11`,
36 entries each in `FlatCheckMh`, `FlatCheckQv`), it was 18 modules, about 20 min (1173 s, of which 1046 s for the
flatness checks), peak 11.0 GB, 562 KB of source (`FlatData` 449 KB instead of 229 KB) and 31 MB of oleans.

**Build cost of `Final`.** `NoFourMUBs.Final` is not imported by the library root either. Since return K replaced the nonzero-J square-sum route (17 Oct 2026; `proof/coverage/returns/K_nonzero_J/INTEGRATED.md`), no module of I4 takes more than about a minute or 12 GB (the four curve checks `CoverageSignedK*`; serial build of the nonzero-J part 3.5 min instead of 36 min). Building `Final` one module at a time is still advisable on a shared machine. `check_axioms.py --full` builds both `Complete` and `Final`.

**Status.** Every hypothesis except `AtlasCertificate` is proved in Lean; the certificate is checked by `certify.py` (Arb) and the independent Julia checker. An experimental project to check it in the Lean kernel lives in [`../kernel_atlas/`](../kernel_atlas/README.md), built as the separate Lake library `KernelAtlas` (declared in `lakefile.toml`, not a default target); the proof does not import it.
