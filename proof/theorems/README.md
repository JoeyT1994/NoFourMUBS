# Theorems behind Steps 3–5

Each folder holds one theorem used by [`PROOF.md`](../../PROOF.md): its write-up, its exact or interval verifiers and
their certificates, and a `REVIEW.md` recording how it was replayed and checked. The letter is the theorem's label in
`PROOF.md`, in the certifiers' code and in the Lean sources. The proofs behind Steps 1–2 are in
[`../coverage/`](../coverage/README.md).

| Label | Folder | Proves | Used in | Read first |
|---|---|---|---|---|
| Z | [`Z_completion_hessian`](Z_completion_hessian/) | C1 for a whole seed ball from one centre computation: a frame-preserving contraction, both orientation margins from ‖D²ψ‖ ≤ 72, and the enclosure ‖hQ − P − U w‖ ≤ β r²/2 + ‖X‖τ | Lemma 3.1 | `Z_completion_hessian_return/THEOREM.md` |
| X | [`X_no_quartet_near_F6`](X_no_quartet_near_F6/), [`X_radius_045`](X_radius_045/) | No complex Hadamard matrix within horizontal phase distance 3/20 (resp. 9/20) of F6 is a quartet edge, by an exact finite cover | Theorem 4.1 (in Lean at 7/40) | `*_RESULT/REPORT.md` |
| U | [`U_fold_at_edge`](U_fold_at_edge/) | The fold at R = 0: analytic completion across the edge, and the chart at F6 | Theorem 4.2 | `U_fold_at_edge_result/REPORT.md` |
| W | [`W_f6_neighbourhood_chart`](W_f6_neighbourhood_chart/) | The edge chart p = (θ₁, θ₂, θ₃, y) on an explicit ellipsoid around F6, covering every class within 0.15 of F6, and its tangent metric | Theorem 4.2, the X-ball | `W_f6_neighbourhood_chart_RESULT/REPORT.md` |
| XS | [`XS_edge_side_orders`](XS_edge_side_orders/) | Transfers into the chart with no side data: the three corner phases pin the Fourier frame (72 of 14,400 ordered corner pairs) | Theorem 4.3 (T3) | `XS_transfer_no_sides/REPORT.md` |
| ZT | [`ZT_wholeball_transfers`](ZT_wholeball_transfers/) | The transfer test of a sphere box against the ball's whole-ball model: the affine vertex bound, the H₂ and output-weighted normal remainders, the Ψ signs; for the X-ball, the weighted τ_A and centre jets | Lemma 5.1 | `ZT_return/REPORT.md`, `ZT_return/theory.md`, `ZT_return/edge/EDGE_REPORT.md` |
| ZC | [`ZC_cap_transfers`](ZC_cap_transfers/) | Transfers on spherical caps: one cap by a 5 × 5 positive-definite witness on the whole-ball model, and the exact coverage of S³ by a polar-facet certificate | Lemma 5.1 (the seed spheres) | `ZC_cap_results/ZC_work/cap_theory.md`, `CAP_FORMAT.md` |
| ZC2a | [`ZC2a_xball_sphere_caps`](ZC2a_xball_sphere_caps/) | Caps on the X-ball's sphere: ZC's witness with the X-ball's augmented 22-coordinate model (τ_A, the weighted Hessian, edge centre jets); the index-only coverage schema with an exact support tree | Lemma 5.1 (the X-ball's sphere) | `REPORT_RETURN.md`, `EDGE_CAP_THEOREM.md` |
| ZC2b | [`ZC2b_t3_caps`](ZC2b_t3_caps/) | T3 caps: Theorem 4.3's two conditions on a whole cap, by two 5 × 5 witnesses, with the signature remainder of y′ = −2 Im Ψ; mixed T0/T1/T3 spheres | Lemma 5.1 (T3) | `ZC2b/REPORT.md`, `ZC2b/T3_THEOREM.md` |
| R2 | [`R2_flatness_cross_side`](R2_flatness_cross_side/) | The cleared form d_h d_v g² W₁₁ = F₀ + ζ F₁ of the weighted flatness defect, identically in ℚ(a, b, c, d) | Theorem 2.2 (matched flatness, in Lean) | `REPORT.md` |
| H | [`H_fourier_vanishing`](H_fourier_vanishing/) | All twenty row and column Fourier moments of a non-Tao order-six Hadamard matrix vanish | The paper (not the main proof); in Lean, `FourierVanishing/` | `REPORT.md` |

## Where the theorems are implemented

| Label | Arb (`proof/seed_atlas/cert/`) | Julia (`proof/independent_seed/src/`) |
|---|---|---|
| Z | `wholeball.py` | `wholeball.jl` |
| U, W, XS | `edgecert.py` | `edge.jl`, `graph.jl`, `edge_transfers.jl` |
| ZT | `patches.py`, `edge_wholeball.py` | `patches.jl`, `edge_wholeball.jl` |
| ZC | `caps.py`, `cap_weighted.py`, `cap_coverage.py` | `caps.jl` (in 256-bit intervals, `hp.jl`) |
| ZC2a | `edgecaps.py`, `caps.py`, `edge_wholeball.py`, `cap_coverage.py` | `caps.jl` (`check_edge_caps`), `edge_wholeball.jl` |
| ZC2b | `cap_t3.py`, `seedcert.py` | `caps.jl` (`check_cap_t3`) |

Folders named `context/`, `input*/` or `reference/` hold the material each theorem was written against; the theorem
itself does not depend on them.
