# Proofs behind the triple certifier

The documents the certifier's acceptance rules rest on:

| Document | What it proves | Used by |
|---|---|---|
| [`normal_form/PROOFS.md`](normal_form/PROOFS.md) | The cubic normal-form localisation and its bounds (with `PROOF_815.md`, `BASELINE_PROOFS_P1_P2.md`) | normal-form leaves |
| [`ORDERING.md`](ORDERING.md) | The labelled Fourier score Γ_F: invariance, Lipschitz bound, the minimum-transition reduction and the bounds on Γ_F(K), Γ_F(L) | the four minimum-transition balls |
| [`../../proof/theorems/TC_triple_classification/family_neighbourhoods/PROOF.md`](../../proof/theorems/TC_triple_classification/family_neighbourhoods/PROOF.md) | The native whole-ball certifier and the recognition of symmetric triples | native leaves |

Independent reviews of them, and what changed as a result:

| Review | Of |
|---|---|
| [`native_review/`](native_review/README.md), summary in [`NATIVE_REVIEW.md`](NATIVE_REVIEW.md) | the native certifier and recognition (1 November 2026); the branch-overlap repair |
| [`normal_form/review/`](normal_form/review/REVIEW.md) | the normal-form witness (2 November 2026); one sign error found and repaired |
| [`REVIEW_ORDERING.md`](REVIEW_ORDERING.md) | the ordering argument and its implementation (3 November 2026); no gap |

`normal_form/AUDIT_815.md` and `normal_form/REVIEW_of_P1_P2_round2.md` are earlier audits of the bounds that `PROOFS.md` uses.
