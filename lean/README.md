# Lean formalisation of the minimal proof

This builds against Mateo Cárdenes Wuttig's formal classification, [`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six), pinned at `57b0302`, which brings in Mathlib.

```bash
lake exe cache get   # prebuilt Mathlib
lake build
```

## Status

`#print axioms NoFourMUBs.no_four_mubs` reports only `[propext, Classical.choice, Quot.sound]` (run `lake env lean NoFourMUBs/Axioms.lean`).

| Module | Content | Status |
|---|---|---|
| `Basic.lean` | MUBs as unitary matrices; `QuartetEdge`; **four MUBs ⇒ a Hadamard quartet edge** | ✅ proved |
| `Skeleton.lean` | `Inputs` (the three substantive hypotheses); invariance under entrywise conjugation | ✅ proved |
| `Invariance.lean` | **quartet edges are invariant under Hadamard equivalence** (upstream `Equivalent`) | ✅ proved |
| `Main.lean` | **`no_four_mubs : Inputs Ball → ¬ FourMUBs`** | ✅ proved, relative to `Inputs` |
| `Inputs.taoExcluded` | Remark 3.3: S₆ is a zero-dimensional Record | ⏳ Lemma 3.1, Stage C, finite certificate |
| `Inputs.excluded` | Step 3: Lemma 3.1 (normal bound) plus Stage C (`STAGEC.md`) | ⏳ lemmas to formalise; certificate as an explicit hypothesis |
| `Inputs.covered` | Steps 1, 2 and 4: maxima of R, connectedness, the open-closed atlas | ⏳ Step 2 needs the seed-domain theorem and global reach, not yet in the upstream Lean |

The computational certificate (`proof/atlas/results/`) will enter as an explicit hypothesis, `CertificateValid`. This mirrors how the upstream project treats its post-classification calculations.
