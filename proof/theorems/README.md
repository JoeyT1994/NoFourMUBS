# Theorems behind Steps 2–5

Each folder holds one theorem used by [`PROOF.md`](../../PROOF.md): its write-up, its exact or interval verifiers and
their certificates, and a `REVIEW.md` recording how it was replayed and checked. The letter is the theorem's label in
the folder names, in the certifiers' code and in the Lean sources. The proofs behind Steps 1–2 are in
[`MinimalReconstruction/`](../../MinimalReconstruction/README.md) and [`Connectedness/`](../../Connectedness/README.md).
The folders that no receipt binds live in the component they serve, as the paths below show.

| Label | Folder | Proves | Used in PROOF.md | In the paper | Read first |
|---|---|---|---|---|---|
| Z | [`Z_completion_hessian`](Z_completion_hessian/) | The enclosure (C1 in the code) for a whole seed ball from one computation at the centre: a frame-preserving contraction, both orientation margins from ‖D²ψ‖ ≤ 72, where ψ = Im Ψ as a function of a block's phases, and the completion enclosure Q(w) = P + U w + ν(w) with ‖ν(w)‖_F ≤ ½‖H₂‖r_H² + ‖X‖τ before rounding to the stored P and U | Lemma 3.1 | SM, Completion enclosures on a seed ball | `Z_completion_hessian_return/THEOREM.md` |
| X | [`X_no_quartet_near_F6`](../../QuartetExclusion/theorems/X_no_quartet_near_F6/), [`X_radius_045`](../../QuartetExclusion/theorems/X_radius_045/) | No pair {I₆, H/√6} with d_ph([H],[F₆]) ≤ 3/20 (resp. 9/20) is extendable, by an exact finite cover | Theorem 4.1 (in Lean at 7/40) | SM, Fourier neighborhood | `*_RESULT/REPORT.md` |
| U | [`U_fold_at_edge`](U_fold_at_edge/) | The fold at R = 0: analytic completion across R = 0, and the chart at F₆ | Theorem 4.2 | SM, Fourier neighborhood | `U_fold_at_edge_result/REPORT.md` |
| W | [`W_f6_neighbourhood_chart`](W_f6_neighbourhood_chart/) | The chart at F₆, ξ = (θ₁ − θ₁⁰, θ₂ − θ₂⁰, θ₃ − θ₃⁰, y), on an explicit ellipsoid around F₆, covering every class within 0.15 of F₆, and its tangent metric | Theorem 4.2, the ball at F₆ (the X-ball in the code) | SM, Fourier neighborhood | `W_f6_neighbourhood_chart_RESULT/REPORT.md` |
| XS | [`XS_edge_side_orders`](../../PhaseCover/theorems/XS_edge_side_orders/) | Transfers into the chart at F₆ with no side data: the three corner phases pin the Fourier frame (72 of 14,400 ordered corner pairs) | Theorem 4.3 (transfers into the chart at F₆, T3 in the code) | SM, Fourier neighborhood | `XS_transfer_no_sides/REPORT.md` |
| ZT | [`ZT_wholeball_transfers`](ZT_wholeball_transfers/) | The transfer test of a sphere box against the ball's whole-ball model: the affine vertex bound, the H₂ and output-weighted normal remainders and the signs of Im Ψ(B) and Im Ψ(C), and for the ball at F₆ the weighted τ_A and centre jets | Lemma 5.1 | SM, Boundary transfers and closed subdivisions | `ZT_return/REPORT.md`, `ZT_return/theory.md`, `ZT_return/edge/EDGE_REPORT.md` |
| ZC | [`ZC_cap_transfers`](../../PhaseCover/theorems/ZC_cap_transfers/) | Transfers on spherical caps: one cap by a 5 × 5 positive-definite witness on the whole-ball model, and the exact coverage of S³ by a polar-facet certificate | Lemma 5.1 (the seed spheres) | SM, Boundary transfers and closed subdivisions | `ZC_cap_results/ZC_work/cap_theory.md`, `CAP_FORMAT.md` |
| ZC2a | [`ZC2a_xball_sphere_caps`](../../PhaseCover/theorems/ZC2a_xball_sphere_caps/) | Caps on the sphere of the ball at F₆: ZC's witness with the augmented 22-coordinate model of the ball at F₆ (τ_A, the weighted Hessian, the centre jets of the chart at F₆), and the index-only coverage schema with an exact support tree | Lemma 5.1 (the sphere of the ball at F₆) | SM, Boundary transfers and closed subdivisions | `REPORT_RETURN.md`, `EDGE_CAP_THEOREM.md` |
| ZC2b | [`ZC2b_t3_caps`](../../PhaseCover/theorems/ZC2b_t3_caps/) | Caps that transfer into the chart at F₆: the two conditions of the Fourier transfer theorem (PROOF.md Theorem 4.3) on a whole cap, by two 5 × 5 witnesses, with the remainder of y′ = −2 Im Ψ, and spheres mixing same-corner, corner-change and F₆-chart transfers (T0, T1 and T3 in the code) | Lemma 5.1 (transfers into the chart at F₆) | SM, Boundary transfers and closed subdivisions | `ZC2b/REPORT.md`, `ZC2b/T3_THEOREM.md` |
| R2 | [`R2_flatness_cross_side`](../../MinimalReconstruction/theorems/R2_flatness_cross_side/) | The cleared form d_h d_v g² W₁₁ = F₀ + ζ F₁ of the weighted flatness defect, identically in ℚ(e^{iθ₁}, …, e^{iθ₄}) | Theorem 2.2 (matched flatness, in Lean) | SM Propositions S.2–S.3 | `REPORT.md` |
| H | [`H_fourier_vanishing`](../../MinimalReconstruction/theorems/H_fourier_vanishing/) | If H is not equivalent to Tao's matrix, then M_I(H) = M_I(Hᵀ) = 0 for every three-element I | Not used by the main proof (in Lean, `FourierVanishing/`) | SM Proposition S.8 (Fourier vanishing) | `REPORT.md` |

## Where the theorems are implemented

| Label | Arb (`proof/seed_atlas/cert/`) | Julia (`proof/independent_seed/src/`) |
|---|---|---|
| Z | `wholeball.py` | `wholeball.jl` |
| U, W, XS | `edgecert.py` | `edge.jl`, `graph.jl`, `edge_transfers.jl` |
| ZT | `patches.py`, `edge_wholeball.py` | `patches.jl`, `edge_wholeball.jl` |
| ZC | `caps.py`, `cap_weighted.py`, `cap_coverage.py` | `caps.jl` (in 256-bit intervals, `hp.jl`) |
| ZC2a | `edgecaps.py`, `caps.py`, `edge_wholeball.py`, `cap_coverage.py` | `caps.jl` (`check_edge_caps`), `edge_wholeball.jl` |
| ZC2b | `cap_t3.py`, `seedcert.py` | `caps.jl` (`check_cap_t3`) |

Folders named `context/`, `input*/` or `reference/` hold the material each theorem was written against. The theorem
itself does not depend on them.

## Triple classification

[`TC_triple_classification`](TC_triple_classification/README.md) holds the whole-ball triple certifier, the
classification on the ball at F₆ and their receipts. It is not an input to the no-four-MUB proof above. The status and
an index are in [`TripleClassification/`](../../TripleClassification/README.md).
