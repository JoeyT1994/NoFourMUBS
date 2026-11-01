# The hash-bound core

The proof is organised in four components:
- [`MinimalReconstruction/`](../MinimalReconstruction/README.md)
- [`Connectedness/`](../Connectedness/README.md)
- [`PhaseCover/`](../PhaseCover/README.md)
- [`QuartetExclusion/`](../QuartetExclusion/README.md)

The triple classification in [`TripleClassification/`](../TripleClassification/README.md) is a separate result.

The folders here are the exception. The atlas certificate's receipts, and the triple classifier's binding, record
these files **by path as well as by content**. They therefore stay byte-identical at these paths, and the components
link to them.

| Folder | Bound by | Used by |
|---|---|---|
| [`atlas/`](atlas/README.md) | the Arb receipt (`seed_atlas/results/arb_receipt.json`) and the triple classifier's binding | QuartetExclusion (Stage C, Tao's record) |
| [`seed_atlas/`](seed_atlas/README.md) | the Arb receipt (`cert/`) and the triple classifier's binding (`FORMAT.md`, `cert/`) | PhaseCover (the atlas, its format, the Arb certifier) |
| [`independent/`](independent/README.md) | the Julia receipt (`independent_seed/results/julia/BINDING.txt`) | QuartetExclusion (Julia Stage C and normal bound) |
| [`independent_seed/`](independent_seed/README.md) | the Julia receipt | PhaseCover (the independent checker) |
| [`theorems/Z_completion_hessian/`](theorems/Z_completion_hessian/), [`theorems/ZT_wholeball_transfers/`](theorems/ZT_wholeball_transfers/) | the triple classifier's binding (`THEOREM.md`, `REPORT.md`) | QuartetExclusion (Lemma 3.1), PhaseCover (Lemma 5.1) |
| [`theorems/U_fold_at_edge/`](theorems/U_fold_at_edge/), [`theorems/W_f6_neighbourhood_chart/`](theorems/W_f6_neighbourhood_chart/) | the X-ball classification's binding (`TC_triple_classification/xball/run_xball.py`) | PhaseCover (Theorem 4.2) |
| [`theorems/TC_triple_classification/`](theorems/TC_triple_classification/README.md) | its own receipts | TripleClassification |

`python3 proof/seed_atlas/cert/check_binding.py` confirms the Arb binding against a checkout: `binding: OK`.
[`theorems/README.md`](theorems/README.md) indexes every theorem by its label, wherever it now lives.

## Moved paths

Returned packages are kept byte-for-byte as delivered, so their internal links may still name these old paths.

| Old path | New path |
|---|---|
| `MinimalConstruction/` | `MinimalReconstruction/` |
| `proof/coverage/returns/{E,F,G,J,Q,K,O,S}_*` | `MinimalReconstruction/returns/` |
| `proof/coverage/returns/{A,B,C}_*` | `Connectedness/returns/` |
| `proof/coverage/omega_connected/` | `Connectedness/omega_connected/` |
| `proof/coverage/returns/SOURCE_ZIPS.sha256` | `Connectedness/SOURCE_ZIPS.sha256` |
| `proof/coverage/README.md` | `Connectedness/COVERAGE_INDEX.md` |
| `proof/theorems/{R2_flatness_cross_side, H_fourier_vanishing}` | `MinimalReconstruction/theorems/` |
| `proof/theorems/{XS_edge_side_orders, ZC_cap_transfers, ZC2a_xball_sphere_caps, ZC2b_t3_caps}` | `PhaseCover/theorems/` |
| `proof/theorems/{X_no_quartet_near_F6, X_radius_045}` | `QuartetExclusion/theorems/` |

Every moved file's content is unchanged (`git log --follow` shows its history). The folders above will join their
components once the triple classification is frozen, together with fresh Arb and Julia receipts for the new paths.
