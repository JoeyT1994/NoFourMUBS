# Lean formalisation

This builds against the Lean classification of order-6 complex Hadamard matrices, [`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six) (pinned at `57b0302`, which brings in Mathlib).

```bash
lake exe cache get        # prebuilt Mathlib
lake build
python3 check_axioms.py   # build, then audit the axioms of every main theorem (also: verify.py --lean)
```

## The main theorem

[`NoFourMUBs/MainTheorem.lean`](NoFourMUBs/MainTheorem.lean) bundles every finite, checkable input into `AtlasCertificate`: the Records, their boundary covers, the Tao matrices, the explicit anchor completion and F6. It then proves:

```lean
theorem no_four_mubs_of_connected (C : AtlasCertificate) (hX : Step2.NonTaoPreconnected) : ¬ FourMUBs
theorem no_four_mubs_main (C : AtlasCertificate) (hE : Step2.MatchedExistence)
    (hD : Step2.MatchedDensityReach) : ¬ FourMUBs
```

Both use only `propext`, `Classical.choice` and `Quot.sound`.

| Hypothesis | Status |
|---|---|
| `AtlasCertificate` | Finite certificate, checked by `certify.py`, `nonempty.py`, `anchor.py` and the independent Julia checker (`proof/atlas/results/RECEIPT.md`) |
| `NonTaoPreconnected` | `PROOF.md` Theorem 2, proved relative to [CT] via MC1–MC5; open point PR-M |
| `MatchedExistence` (L1) | Proved without [CT] by exact certificates (`proof/coverage/returns/F_side_existence`, `E_matched_flatness`); Lean port pending |
| `MatchedDensityReach` (D) | Open point (PR-M) |

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
| `MainTheorem`, `Axioms` | The main theorem; the axiom audit read by `check_axioms.py` |

`generators/base_anchor/` regenerates `Step2/BaseAnchor.lean`; the kernel re-checks every identity, so the generator is untrusted.

**Next.** The open Lean work:
- port L1's certificates (`proof/coverage/returns/E_matched_flatness`, `F_side_existence`; the latter ships uncompiled Lean lemmas);
- Step 2 density (D) awaits the PR-M result.
