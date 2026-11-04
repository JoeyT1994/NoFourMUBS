# Phase cover

Step 5 of [`PROOF.md`](../PROOF.md), with Theorems 4.2–4.3: a finite atlas covers the space X of non-Tao Hadamard
classes. The atlas consists of 2,775 **seed balls**, which are ellipsoids in the four seed phases of a corner, and
one ball at F6 (the **X-ball**). Each piece is certified free of quartet edges by
[`../QuartetExclusion/`](../QuartetExclusion/README.md). Since X is connected
([`../Connectedness/`](../Connectedness/README.md)), covering an open-and-closed nonempty part of X covers all of it.

## The statements

- **Theorem 4.2 (the edge chart).** Near F6, the corner on rows and columns 0, 1, 2 parametrises every
  Hadamard class. This gives the X-ball its chart.
- **Theorem 4.3 (transfers into the chart).** A matrix with an ordered corner whose parameter lies in the
  X-ball's ellipsoid, and which is within phase distance 3/20 of F6, lies in the X-ball. No side data is needed.
- **Lemma 5.1 (transfers).** Up to a symmetry g ∈ Γ (identity, conjugation, transposition, conjugate-transpose),
  every point of every ball's boundary sphere lies in the interior of another ball. Spherical caps cover each
  sphere ‖w‖ = r, and each cap has a certified target:
  - **T0:** the same corner.
  - **T1:** another ordered corner, whose seed is linear in the phases.
  - **T3:** the X-ball, by Theorem 4.3. It is enough that the parameter lies in the target ellipsoid E_t with
    t ≤ 1/5 and that the class lies within phase distance 3/20 of F6, so no side or orientation data needs checking.
- **Orientation.** Every stored seed ball has orientation o = +1, that is Im Ψ(B) > 0 and Im Ψ(Cᵀ) < 0
  ([`SPEC.md`](../proof/seed_atlas/SPEC.md) §1). In the paper's notation this is the other matched completion,
  conj H₊(−θ). Both orientations reach every class and the cover includes conjugates, so the choice does not matter.
  Lean proves uniqueness and openness for both (`matchedO_unique`, `matchedO_conj`).
- **Lemma 5.2 (coverage).** The atlas's classes meet X in an open, closed and nonempty set, so they contain X.

**The certificate.** Each cap's target condition is a norm bound ‖d + F x‖ < 1, for an affine predictor from the
source ball's whole-ball model (Lemma 3.1). It is certified by a 5 × 5 positive-definite S-lemma witness that
accounts for the model's remainder. An exact polar-facet certificate, checked in integers, shows that the caps cover
the sphere. The certificate `seed_atlas_certificate.json.gz` records:
- every seed ball,
- its 117,391 caps,
- the X-ball,
- and Tao's record.

Two independent interval implementations check it: Arb in 33 minutes on one 128-core node, and Julia in 1 h 07 min
on one 64-core node.

## Contents

| Path | Role |
|---|---|
| [`../proof/seed_atlas/`](../proof/seed_atlas/README.md) | The atlas: specification (`SPEC.md`), certificate format (`FORMAT.md`), the Arb certifier (`cert/`), the driver that builds the certificate (`driver/`), the certificate and receipts (`results/`) |
| [`../proof/independent_seed/`](../proof/independent_seed/README.md) | The independent Julia checker, written from `SPEC.md` and `FORMAT.md` only |
| [`../proof/theorems/ZT_wholeball_transfers/`](../proof/theorems/ZT_wholeball_transfers/REVIEW.md) | The whole-ball transfer test (Lemma 5.1, box form) |
| [`../proof/theorems/U_fold_at_edge/`](../proof/theorems/U_fold_at_edge/REVIEW.md), [`../proof/theorems/W_f6_neighbourhood_chart/`](../proof/theorems/W_f6_neighbourhood_chart/REVIEW.md) | **Theorem 4.2**, the edge chart |
| [`theorems/XS_edge_side_orders/`](theorems/XS_edge_side_orders/) | **Theorem 4.3**, transfers into the chart |
| [`theorems/ZC_cap_transfers/`](theorems/ZC_cap_transfers/), [`theorems/ZC2a_xball_sphere_caps/`](theorems/ZC2a_xball_sphere_caps/), [`theorems/ZC2b_t3_caps/`](theorems/ZC2b_t3_caps/) | **Lemma 5.1** by caps: seed spheres, the X-ball's sphere, and T3 caps |

**Check.** `python3 verify.py --atlas -j N` from the repository root, or
`python3 proof/seed_atlas/cert/certify_seed_atlas.py proof/seed_atlas/results/seed_atlas_certificate.json.gz -j N`.
