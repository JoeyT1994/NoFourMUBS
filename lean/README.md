# Lean formalisation

This builds against the Lean classification of order-6 complex Hadamard matrices, [`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six) (pinned at `57b0302`, which brings in Mathlib).

```bash
lake exe cache get        # prebuilt Mathlib
lake build
python3 check_axioms.py   # build, then audit the axioms of every main theorem (also: verify.py --lean)
python3 check_axioms.py --full   # also build and audit L1 (NoFourMUBs.Complete; about an hour, see below)
```

## The main theorem

[`NoFourMUBs/MainTheorem.lean`](NoFourMUBs/MainTheorem.lean) bundles every finite, checkable input into `AtlasCertificate`: the Records, their boundary covers, the Tao matrices, the explicit anchor completion and F6. It then proves:

```lean
theorem no_four_mubs_of_connected (C : AtlasCertificate) (hX : Step2.NonTaoPreconnected) : ¬ FourMUBs
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

All five use only `propext`, `Classical.choice` and `Quot.sound`.

| Hypothesis | Status |
|---|---|
| `AtlasCertificate` | Finite certificate, checked by `certify.py`, `nonempty.py`, `anchor.py` and the independent Julia checker (`proof/atlas/results/RECEIPT.md`) |
| `NonTaoPreconnected` | `PROOF.md` Theorem 2: without [CT] via L1, L2 and return G's exact reach; earlier, relative to [CT] via MC1–MC5 |
| `MatchedExistence` (L1) | **Proved in Lean**: `L1.matchedExistence` (`L1/Existence.lean`), from the certificates `proof/coverage/returns/F_side_existence` and `E_matched_flatness`, re-checked by the kernel |
| `MatchedDensityReach` (D) | **Proved in Lean from strict-corner coverage** (`PRM.densityReach`, via return G's Theorem A, `PRM.nonmatched_tao`) |
| `StrictCornerCoverage` (MC1) | **Proved in Lean**: `PRM.strictCornerCoverage` (`Final.lean`), from the critical strip classification I4 (`PRM/CoverageStripParts`, with the sign certificate and pole classification in `PRM/CoverageQuartic` and the two square-sum identities in `PRM/CoverageStripId*`), the endpoint exclusions I5 (`PRM/CoverageEndpoints`) and the routing and ten-corner count (`PRM/CoverageMain`) |

## Modules

| Module | Content |
|---|---|
| `Basic`, `Skeleton`, `Invariance`, `Main` | MUBs as unitary matrices; four MUBs give a Hadamard quartet edge; invariance under equivalence and Γ = {id, conj, ᵀ, conj ∘ ᵀ}; `no_four_mubs` from named inputs |
| `Horizontal`, `NormalBound` | Horizontal phases and the gauge; Lemma 3.1 (the calculus-free normal bound) and the isolation of S₆ |
| `StageC/` | Lemma 3.2 (Stage C): bins, direct, linearised, scalar, edge and joint tests, the two-clique assembly, and the certificate interface `StageCCert.excludes` |
| `Record`, `Atlas` | `RecordCert` (the data `certify.py` checks for one Record) and its exclusion theorem; atlas exclusion |
| `Transfer`, `Boundary`, `Step4` | Lemma 4.1 (boundary transfer), boundary covers, and the clopen covered set |
| `Step1/` | Step 1 in full: the saddle theorem, the deltoid, single and double boundary, the trace lift and `Step1Geo.maximumCensus` with explicit anchors, and the anchor orbit. It uses the 216 certificate theorems of library `Step1` (`Step1Gen/`) |
| `Step2/` | Step 2 topology (`Statements`, `TopologyCore`, `QuotientTopology`); matched uniqueness (`SideAlg`, `SidePerm`, `MatchedUnique`); anchor transport and the explicit anchor `BaseAnchor`; coverage from connectedness and F6 ≠ Tao (`Connected`); the dense reduction of L1 (`DenseExistence`) |
| `Identity/` | A verified checker for large polynomial identities: a circuit with bounded degrees and coefficients vanishing at one Kronecker point is the zero polynomial (`Kronecker`), evaluated with sparse outer variables (`Sparse`, and the faster recursor form `Fast`), over a factor table of denominators with one quadratic element (`Frac`) |
| `L1/` | Matched existence. Side existence (certificate F): the side identities as circuits (`SideInput`, `SideCircuits`), their kernel checks (`SideCheck*`), the rotation bridge and `exists_side_gram` (`SideBridge`, `SideIdentities`, `SideExistence`, `SideConstruction*`) and the side formulas (`SideFormulas`). Matched flatness (certificate E): the weighted-defect criterion `flat_of_W` (`FlatMatrix`), the reduced data and circuits (`FlatData`, `FlatCircuitsBase`, `FlatCircuits`), their kernel checks (`FlatCheck*`) and the bridge `W_zero` (`FlatBridge`). The assembly is `Existence` |
| `PRM/` | Return G (`proof/coverage/returns/G_prm`). An actual side's signature is a root of its Gram quadratic, R = 4 (Im T)² (`SideRoot`). Sides on the two roots share no column (`SharedColumn`). A strict strip has no proportional columns (`StrictStrip`). The projector argument gives an orthogonal column triple (`Projector`). A 3×3 Hadamard block gives Tao or all corners matched (`FourierBlock`, using upstream's Fourier normalisation and cubic census; the Fourier families are matched at all corners by 200 kernel-checked identities, `FourierMatch`). Theorem A is `Converse`; exact reach and density from coverage are in `Reach`. Strict-corner coverage (MC1, `MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`): the routing, Fourier critical locus, block lemma and ten-corner count (`CoverageMain` and its imports); the critical strip classification I4 (`CoverageStrip*`), with its sign certificate and pole classification (`CoverageQuartic*`) and the zero-J and nonzero-J square-sum identities (`CoverageStripId*`, status in `generators/stripid/STATUS.md`); the endpoint exclusions I5 (`CoverageEndpoints`, `CoverageEnd*`) |
| `FourierVanishing/` | Return H (`proof/coverage/returns/H_fourier_vanishing`), an input to the draft paper's Section II, not to the main proof: `FourierVanishing.fourierVanishing`, all twenty row and column Fourier moments of a non-Tao order-six Hadamard vanish. It is built from `PRM.nonmatched_tao` and `PRM.strictCornerCoverage`. `Main` imports `Final`, so build it explicitly (`lake build NoFourMUBs.FourierVanishing.Main`); the lemma map is in `FourierVanishing/README.md` |
| `MainTheorem`, `Complete`, `Final`, `Axioms`, `AxiomsComplete` | The main theorem, with L1 discharged, and with coverage discharged (`Final.no_four_mubs`); the axiom audits read by `check_axioms.py` |

`generators/base_anchor/` regenerates `Step2/BaseAnchor.lean`, and `generators/flatness/` regenerates `L1/FlatData.lean` (`generate.py`, using E's exact rational helper) and the check modules `L1/FlatCheck{Mh,Qv,F*}.lean` (`checks.py`). `generators/coverage/certificates.py` reproduces the certificates hard-coded in `PRM/Coverage*.lean`, and `generators/critical/` the critical-quartic definitions and regions. `generators/strip/` and `generators/stripid/` produce the data and check modules of I4. The kernel re-checks every identity, so the generators are untrusted.

**Build cost of L1.** `NoFourMUBs.Complete` is not imported by the library root, so `lake build` stays light. Its kernel checks, measured on a 10-core Apple laptop:

| Module | Identities | Time | Peak memory |
|---|---|---|---|
| `L1/SideCheckY1` | side identity Y1 | about 42 min | 10 GB |
| `L1/SideCheckY0` | side identity Y0 | about 12 min | 8 GB |
| `L1/SideCheckCore`, `SideCheckNorm` | 7 side identities | minutes | |
| `L1/FlatCheckF00` … `F11` | the 8 coefficients of the weighted defects (4.6) | about 8 min each, in parallel | 11 GB each |
| `L1/FlatCheckMh` | 36 entries of `K Qh K*` | about 3 min | 9 GB |
| `L1/FlatCheckQv`, `FlatCheckTable` | 36 vertical moments, 10 table identities | under 1 min | 6 GB |

**Build cost of `Final`.** `NoFourMUBs.Final` is not imported by the library root either. Its square-sum data modules are slow to elaborate: `CoverageStripIdNonzeroDataN` about 9 min, `DataQ` about 16 min and `DataP1` about 8 min, each at 7–9 GB (including about 6 GB of Mathlib). Build them one module at a time; the order is in `generators/stripid/STATUS.md`. `check_axioms.py --full` builds both `Complete` and `Final`.

**Status.** Every hypothesis except `AtlasCertificate` is proved in Lean; the certificate is checked by `certify.py` (Arb) and the independent Julia checker. An experimental project to check it in the Lean kernel lives in [`../kernel_atlas/`](../kernel_atlas/README.md), built as the separate Lake library `KernelAtlas` (declared in `lakefile.toml`, not a default target); the proof does not import it.
