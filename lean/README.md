# Lean formalisation of the minimal proof

This builds against Mateo Cárdenes Wuttig's formal classification, [`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six), pinned at `57b0302`, which brings in Mathlib.

```bash
lake exe cache get   # prebuilt Mathlib
lake build
```

## Status

| Module | Content | Status |
|---|---|---|
| `NoFourMUBs/Basic.lean` | MUBs as unitary matrices; `QuartetEdge`; **four MUBs ⇒ a Hadamard quartet edge** | ✅ proved |
| `NoFourMUBs/Skeleton.lean` | **Main theorem `no_four_mubs`** from named `Inputs`; invariance under entrywise conjugation | ✅ proved, relative to `Inputs` |
| `Inputs.equivInvariant` | quartet edges are invariant under Hadamard equivalence | ⏳ next |
| `Inputs.taoExcluded` | Remark 3.3 (S₆ is a zero-dimensional Record) | ⏳ needs Lemma 3.1, Stage C and the certificate |
| `Inputs.excluded` | Step 3: normal bound (Lemma 3.1) plus Stage C (`STAGEC.md`) | ⏳ lemmas to formalise; certificate checked externally |
| `Inputs.covered` | Steps 1, 2 and 4: maxima of R, connectedness, the open-closed atlas | ⏳ Step 2 needs the seed-domain theorem and global reach, which are not yet in the upstream Lean |

The computational certificate (`proof/atlas/results/`) will enter as an explicit hypothesis, `CertificateValid`. This mirrors how the upstream project treats its post-classification calculations.
