# Lean formalisation

This builds against Mathlib and a small part of the Lean classification of order-6 complex Hadamard matrices, [`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six) (pinned at `57b0302`; see [Dependencies](#dependencies)).

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

([`NoFourMUBs/SeedAtlas/EdgeXFinal.lean`](NoFourMUBs/SeedAtlas/EdgeXFinal.lean); `propext`, `Classical.choice`,
`Quot.sound` only, audited by `SeedAtlas/EdgeXAxioms.lean`). `EdgeAtlasCertificate` bundles the finite data of
`PROOF.md` Steps 3–5:
- the seed balls (`SeedBallCert`: C1 as `hC1`, Stage C);
- the X-ball (`EdgeBallCert`: its chart, the image bound within ρ = 7/40 of F6, and `exclusion : XExclusion ρ`,
  discharged by return X in Lean, `X.Radius0175`);
- the boundary covers;
- Tao's record.

What each field says, and which checker establishes it: [`NoFourMUBs/SeedAtlas/README.md`](NoFourMUBs/SeedAtlas/README.md).
The route is the coverage argument below. The covered classes are clopen and contain F6, the X-ball's centre
(`EdgeAtlasCertificate.clopen`), so `Step2.coverage_of_matched_density` covers every non-Tao class.

Return X: [`NoFourMUBs/X/`](NoFourMUBs/X/README.md), `no_quartet_near_F6_r0175 : ∀ H, IsHadamard H → dph H ≤ 7/40 → ¬ QuartetEdge H`,
hypothesis-free; its Stage C certificate at F6 is kernel-checked (`kernel_atlas/lean/KernelAtlas/X/`).

## The coverage route (shared with the earlier atlas)

[`NoFourMUBs/MainTheorem.lean`](NoFourMUBs/MainTheorem.lean) bundles every finite, checkable input into `AtlasCertificate`: the Records, their boundary covers, the Tao matrices and F6. It then proves:

```lean
theorem no_four_mubs_main (C : AtlasCertificate) (hE : Step2.MatchedExistence)
    (hD : Step2.MatchedDensityReach) : ¬ FourMUBs
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

All four use only `propext`, `Classical.choice` and `Quot.sound` (audited by `Axioms.lean` and `AxiomsComplete.lean`).

| Hypothesis | Status |
|---|---|
| `AtlasCertificate` | The earlier proof's certificate of 12,021 Records (git tag `v1-25dim-records`); the theorems below are reused by the seed-atlas route |
| `MatchedExistence` (L1) | **Proved in Lean** (`PROOF.md` Theorem 2.2): `L1.matchedExistence` (`L1/Existence.lean`): side existence by the Jacobian identity (J) and the inverse function theorem (`proof/coverage/returns/J_side_existence`), and flatness from the certificate `E_matched_flatness` in return R2's cleared form (two polynomial identities), re-checked by the kernel |
| `MatchedDensityReach` (D) | Every non-Tao class is in the closure of the matched classes, their conjugates and the Fourier classes `Step2.FourierClasses` (the two-parameter Fourier family `Step2.fourierFamily` and its transpose; `coverage_of_matched_density` covers them because the covered classes are clopen and contain `F6`, `Step2.fourierClasses_subset`). **Proved in Lean from strict-corner coverage** (`PRM.densityReach`, via exact reach `PRM.exactReach`, `PROOF.md` Corollary 2.6, and Theorem A in the form `PRM.nonmatched_tao_or_fourier`, `PROOF.md` Theorem 2.4) |
| `StrictCornerCoverage` (MC1) | Every Hadamard matrix outside the Fourier family (`Step2.InFourierFamily`) has a strict corner. **Proved in Lean** (`PROOF.md` Theorem 2.5): `PRM.strictCornerCoverage` (`Final.lean`), from the critical strip classification I4 (`PRM/CoverageStripParts`: zero `J` by return O's two unsquared mixed-corner sums `PRM/CoverageMixed*`, `PRM/CoverageZeroJProduct`, nonzero `J` by return K's two signed corner sums `PRM/CoverageSigned*`), the routing (`PRM/CoverageMain`) and return S's ten-corner count, which also excludes the two rational endpoints (`PRM/CoverageEndCount`) |

## Dependencies

The upstream package `hadamard6_formal` supplies the matrix model and a few lemmas; the proof does not use its classification theorem. Everything it imports goes through two places:

* [`NoFourMUBs/Lib/Hadamard.lean`](NoFourMUBs/Lib/Hadamard.lean), imported by `Basic`. It imports five upstream leaf modules (`BlockCompletion`, `BlockGram`, `FiniteCornerFromBlocks`, `PhaseEquivalence`, `TaoOrbit`; eleven modules with their imports): the matrix model `Mat6`, `IsHadamard`, `Equivalent`, `IsTaoOrbit`, dephasing, and the block Gram and completion lemmas. It restates, with upstream's statements and proofs, the few short upstream declarations that sit in modules importing most of the classification: the quotient `Had6`, `HadamardClass6`, `TaoClass` (`HadamardQuotient`), `standardOmega` (`TaoAtlas`), `affineFourierMatrix` and its Hadamard property, `transpose_isHadamard` (`KarlssonFourierSeam`), `equivalent_transpose` and `primitiveCubicPhase_eq_standard_or_sq` (`FourierSeamCertificate`), about 150 lines. They live in namespace `NoFourMUBs`.
* `PRM/FourierBlock` imports upstream's Fourier-block normalisation and cubic census directly (`SimultaneousFourierNormalization`, `FourierCubicTaoTable`, `FourierCoordinateAllocation`). These proofs are long (about 2,400 lines of the declarations used, including the three 320-line Tao case certificates), so they are imported, not copied; their imports bring in a further 42 upstream modules.

The import closure of `NoFourMUBs.Final`, without Mathlib and Lean core (`python3 import_closure.py`):

| | Modules | Non-blank lines |
|---|---|---|
| Ours (`NoFourMUBs`, `Step1`) | 117 | 18,756 |
| `Hadamard6` | 56 | 10,143 |
| Total | 173 | 28,899 |

Measured 23 Oct 2026, after return R2 replaced the third-moment data of matched flatness (`L1/FlatCheckMh`, `FlatCheckQv`, `FlatCheckW11` out, `FlatData` 229 KB to 4 KB; before it: 120 and 176 modules, 19,093 and 29,236 lines). Earlier, on 22 Oct 2026, after return O replaced the zero-`J` square sum (`CoverageStripIdZero*` and the corner-square expansion `CoverageStripMomentData` out, `CoverageMixed*` and `CoverageZeroJProduct` in; before it: 120 and 176 modules, 19,612 and 29,755 lines). Earlier that day, after splitting the pure half-strip definitions into `PRM/CoverageStripHalfDefs` (so the zero-`J` data, its kernel checks and return K's curve checks build in parallel with the strip chain: rebuilding `PRM/Coverage*` and `Final` took 4 min 21 s instead of 5 min 7 s; before it: 119 and 175 modules, 19,578 and 29,721 lines), the cube-root reduction of the cubic census (`PRM/FourierBlock`, handoff 22 Oct §5.1; before it: 19,732 and 29,875 lines), the weaker classification chain (the Fourier classes are covered by connectedness, `Step2/FourierFamily` in; the 400-corner Fourier matching `PRM/FourierMatch` and the Fourier critical locus `PRM/CoverageFourierLocus` out of the closure; before it: 120 and 176 modules, 20,306 and 30,449 lines) and the removal of unused declarations (before it: 20,637 and 30,780 lines). Earlier that day, after the connectedness of the strict seeds (`Step2/StrictConnected`) replaced the anchor orbit and transport (`Step1/AnchorOrbit`, `Step2/AnchorTransport` out; before it: 121 and 177 modules, 20,799 and 30,942 lines). Earlier, on 18 Oct 2026, after return S replaced the endpoint exclusions (`CoverageEndP7`, `CoverageEndEqui`, `CoverageEndpoints`, `CoverageTenArith` out, `CoverageEndCount` in; before it: 124 and 180 modules, 21,788 and 31,931 lines) and the cleanup that removed the unused modulo-five route (`CoverageSumArith`, `CoverageSumRule`) and `Step2/Connected` from the closure (before it: 127 and 183 modules, 22,235 and 32,378 lines). Before `Lib/Hadamard`, `Basic` imported all of `Hadamard6` and the closure held 137 upstream modules (24,180 lines), 305 in all (49,653 lines). The proof uses about 290 upstream declarations (about 3,300 lines), almost all from the modules above.

## Modules

| Module | Content |
|---|---|
| `Basic`, `Skeleton`, `Invariance`, `Main` | MUBs as unitary matrices; four MUBs give a Hadamard quartet edge; invariance under equivalence and Γ = {id, conj, ᵀ, conj ∘ ᵀ}; `no_four_mubs` from named inputs |
| `Horizontal`, `NormalBound` | Horizontal phases and the gauge; Lemma 3.1 (the calculus-free normal bound) and the isolation of S₆ |
| `StageC/` | Lemma 3.2 (Stage C): bins, direct, linearised, scalar, edge and joint tests, the two-clique assembly, and the certificate interface `StageCCert.excludes` |
| `Record`, `Atlas` | `RecordCert` (the data `certify.py` checks for one Record) and its exclusion theorem; atlas exclusion |
| `Transfer`, `Boundary`, `Step4` | Lemma 4.1 (boundary transfer), boundary covers, and the clopen covered set |
| `Step1/` | Step 1 in full: the saddle theorem, the deltoid, single and double boundary, the trace lift and `Step1Geo.maximumCensus` with explicit anchors. It uses the 96 certificate theorems of library `Step1` (`Step1Gen/`): the modules for the interior, the single boundary and the double boundary; the other Step 1 certificates are checked in Python only |
| `Step2/` | Step 2 topology (`Statements`, `TopologyCore`, `QuotientTopology`); matched uniqueness (`SideAlg`, `SidePerm`, `MatchedUnique`; `PROOF.md` Theorem 2.3); the strict seeds are connected (`StrictConnected`, `isConnected_strict`: every component of `{R > 0}` contains a positive local maximum, and explicit paths with `R = Rch(Re v, Re u³) > 0` join the 18 maxima); the Fourier anchor (`FourierAnchor`, return Q: the family `affineFourierMatrix ω 1 z` is matched at a strict corner for `Im z > 0`, `matched_fourier`); the Fourier classes (`FourierFamily`: the two-parameter family `fourierFamily ω x y = [[F, F], [F D, −F D]]` is Hadamard, continuous on the torus and contains `F6`, so a clopen set of classes containing `F6` contains it and its transpose, `fourierClasses_subset`) and the direct coverage theorem `coverage_of_matched_density` |
| `Identity/` | A verified checker for large polynomial identities: a circuit with bounded degrees and coefficients vanishing at one Kronecker point is the zero polynomial (`Kronecker`), evaluated with sparse outer variables (`Sparse`, and the faster recursor form `Fast`), over a factor table of denominators with one quadratic element (`Frac`) |
| `L1/` | Matched existence. Side existence (return J, `proof/coverage/returns/J_side_existence`): the Gram invariants, domain inequalities and norm identities (`SideGram`); the Jacobian identity (J) of the Gram map in angle coordinates, the inverse function theorem and the open and closed sets of realised Gram data (`SideJacobian`); the open and closed set of strict seeds with sides of both signs (`SideCover`), which contains the Fourier anchor and so, since the strict seeds are connected, every strict seed (`sides_all`, giving `exists_side_h` and `exists_side_v`, in `Existence`); and the side formulas (`SideFormulas`). Matched flatness (certificate E, with return R2's cleared form, `explorations/returns/R2_flatness_cross_side`): the weighted-defect criterion `flat_of_W` (`FlatMatrix`), the circuits in the seeds (`FlatCircuitsBase`, `FlatCircuits`, with the factor table of denominators `FlatData`, checked in `FlatCheckTable`), the two kernel checks of the one weighted defect `W₁₁` (`FlatCheckF`: return R2's cleared coefficients `F0`, `F1` of `d_h d_v g² W₁₁ = F₀ + ζ F₁`, built from the definitions) and the bridge `W_zero` (`FlatBridge`), which gets the other three defects by relabelling the seed (`W_rowPerm`, `W_colPerm`). The assembly is `Existence` (`PROOF.md` Theorem 2.2) |
| `PRM/` | Return G (`proof/coverage/returns/G_prm`). An actual side's signature is a root of its Gram quadratic, R = 4 (Im T)² (`SideRoot`). Sides on the two roots share no column (`SharedColumn`). A strict strip has no proportional columns (`StrictStrip`). The projector argument gives an orthogonal column triple (`Projector`). A 3×3 Hadamard block gives Tao or the Fourier family (`FourierBlock`, `tao_or_fourier_of_block`, using upstream's Fourier normalisation and cubic census). Theorem A is `Converse` (`PROOF.md` Theorem 2.4, as `nonmatched_tao_or_fourier`: a strict nonmatched corner forces Tao or the Fourier family); exact reach (`PROOF.md` Corollary 2.6) and density from coverage are in `Reach`. Strict-corner coverage (MC1, `PROOF.md` Theorem 2.5, `MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`, for matrices outside the Fourier family): the routing, block lemma (`CoverageBlock`, `inFourierFamily_of_block`) and ten-corner count (`CoverageMain` and its imports; the count is return S's `CoverageEndCount` with `CoverageTen*` and `CoverageGap`: the anchored sum rule, the vertex sums of the signed `J`, the fourth moment and `p⋆ ∈ (5.722, 5.723)`, which also exclude the two rational endpoints; the sorted 3-subsets `tri` and `e6 : I6 ≃ Fin 6` are in `Defs`); the critical strip classification I4 (`CoverageStrip*`): for zero J, return O's two unsquared sums over the nine mixed corners (`CoverageMixed*`: the sums as half-moment polynomials, identities (12) and (27a) in the gauge s = t = 1 with the cofactors of the return's two mixed certificates, one kernel check each; `CoverageZeroJProduct`: `K = (1 − z)(z + 3)³` from their real and imaginary parts and the scalar steps) and, for nonzero J, return K's signed sums (`CoverageSigned*`: the signed corner expansion, the boundary identity (7) with poles, the weighted sum on four curves in the gauge s = t = 1, pole forcing and the product of the six λ-denominators, with the pole factorizations of `CoverageQuarticPole`). Outside `Final`, for `FourierVanishing`: the Fourier family is matched at every corner (200 kernel-checked identities, `FourierMatch`, giving return G's Theorem A in its original form `nonmatched_tao`) and its all-critical members are `F6` (the Fourier critical locus, `CoverageFourierLocus`, giving MC1 in its `F6` form `strictCorner_of_not_F6`) |
| `FourierVanishing/` | Return H (`explorations/returns/H_fourier_vanishing`), an input to the draft paper's Section II, not to the main proof: `FourierVanishing.fourierVanishing`, all twenty row and column Fourier moments of a non-Tao order-six Hadamard vanish. It is built from `PRM.nonmatched_tao` (`PRM/FourierMatch`) and `PRM.strictCornerCoverage` with the Fourier critical locus (`PRM.Coverage.strictCorner_of_not_F6`). `Main` imports `Final`, so build it explicitly (`lake build NoFourMUBs.FourierVanishing.Main`); the lemma map is in `FourierVanishing/README.md` |
| `Lib/` | The upstream interface: narrow imports and the restated upstream declarations (see [Dependencies](#dependencies)); also the shared lemmas `mul_conj_of_normSq` and `row_orth` |
| `MainTheorem`, `Complete`, `Final`, `Axioms`, `AxiomsComplete` | The main theorem, with L1 discharged, and with coverage discharged (`Final.no_four_mubs`); the axiom audits read by `check_axioms.py` (`Axioms.lean` 31 theorems, `AxiomsComplete.lean` 18, `Step1/Audit.lean` 96) |

`generators/flatness/generate.py` regenerates the factor table `L1/FlatData.lean` (using E's exact rational helper); the flatness checks themselves (`L1/FlatCheckF`) need no generated data. `generators/coverage/certificates.py` reproduces the certificates hard-coded in `PRM/Coverage*.lean`. `generators/strip/signed.py` (return K's 48-term signed corner expansion, `PRM/CoverageSignedData`) and `generators/zeroj_product/generate.py` (return O's two mixed sums and the cofactors of its mixed certificates, from the return's JSON, `PRM/CoverageMixedData`) produce the data modules of I4; `generators/stripid/STATUS.md` records the removed square-sum routes. The kernel re-checks every identity, so the generators are untrusted.

**Build cost of L1.** `NoFourMUBs.Complete` is not imported by the library root, so `lake build` stays light. Matched flatness needs the kernel checks of only one weighted defect, `W₁₁`; `W₁₂`, `W₂₁`, `W₂₂` are `W₁₁` at relabelled seeds (handoff M: `W_rowPerm`, `W_colPerm` in `FlatMatrix`, `W_zero` in `FlatBridge`). Since return R2 (23 Oct 2026) these are two identities between Laurent polynomials in the seeds, `F0 = 0` and `F1 = 0` (`FlatCheckF`, `validR 0`), built from the definitions with no generated data (return R2's `J_ij = Σ (V_i)_{ac} (U H_j U*)_{ac}` with `U = E* adj G = −g K` and `Q⁽¹⁾ = (H₀ + g z H₁) / P₀ P̄₁`, `Qm_cleared`). Measured on an 18-core Apple laptop (64 GB), one module at a time (`lake env lean`; each time includes about 10 s of imports):

| Module | Identities | Time | Peak memory |
|---|---|---|---|
| `L1/FlatCheckF` | the 2 cleared coefficients of the weighted defect `W₁₁` | 11 s | 6.3 GB |
| `L1/FlatCheckTable` | 10 table identities | 11 s | 6.1 GB |
| `L1/SideGram`, `SideJacobian`, `SideCover` | side existence (return J) | 37 s together | 6 GB |

The whole L1 route (the 12 modules of `L1/`) builds in 85 s (one `lake build`, from the rest of the library; one module at a time 263 s, of which about 20 s per module is Lake and imports), peak 6.5 GB, from 117 KB of source. Before return R2, with the reduced data of `K Q⁽¹⁾ K*` and of the vertical third moments in `FlatData` (229 KB) and their checks (`FlatCheckW11`, about 3 min and 11 GB; `FlatCheckMh`, 18 entries, 1 min and 7 GB; `FlatCheckQv`, 18 entries), it was 15 modules, 250 s in one `lake build` (560 s one module at a time, measured the same way), peak 11.0 GB, 347 KB of source. Before handoff M (17 Oct 2026), with the four defects checked separately (`FlatCheckF00` … `F11`, 36 entries each in `FlatCheckMh`, `FlatCheckQv`), it was 18 modules, about 20 min (1173 s, of which 1046 s for the flatness checks), peak 11.0 GB, 562 KB of source (`FlatData` 449 KB).

**Build cost of `Final`.** `NoFourMUBs.Final` is not imported by the library root either. Since return K replaced the nonzero-J square-sum route (17 Oct 2026; `proof/coverage/returns/K_nonzero_J/INTEGRATED.md`), no module of I4 takes more than about a minute or 12 GB (the four curve checks `CoverageSignedK*`; serial build of the nonzero-J part 3.5 min instead of 36 min); since 23 Oct 2026 these run the kernel test with no sparse variable (`qvalidR … 0` instead of `1`; the checker is verified for every setting), about 12 s and 6.1 GB each instead of about 40 s and 11.6 GB (`lake env lean`). Since return O replaced the zero-J square sum (22 Oct 2026), the zero-J part is six modules of about 96 KB of source (30 KB of generated data instead of 216 KB); its two kernel checks take about 11 s and 6.3 GB each (the old square-sum check about a minute). Rebuilding `PRM/Coverage*` and `Final` from the same state took 266 s instead of 270 s back to back on this shared machine (the sum of the module times 806 s instead of 862 s): the wall time is set by the nonzero-J chain. With these settings and return R2, rebuilding L1, `PRM/Coverage*`, `Complete` and `Final` together (one `lake build`) took 285 s with a peak of 6.8 GB on this shared machine (23 Oct 2026); before, the flatness check and the curve checks each needed about 11 GB, and building `Final` one module at a time was advisable. `check_axioms.py --full` builds both `Complete` and `Final`.

**Status.** Every hypothesis except `AtlasCertificate` is proved in Lean; the certificate is checked by `certify.py` (Arb) and the independent Julia checker. An experimental project to check it in the Lean kernel lives in [`../kernel_atlas/`](../kernel_atlas/README.md), built as the separate Lake library `KernelAtlas` (declared in `lakefile.toml`, not a default target); the proof does not import it.
