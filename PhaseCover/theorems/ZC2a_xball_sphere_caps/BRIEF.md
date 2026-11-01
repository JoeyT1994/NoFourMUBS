# Handoff ZC2a: spherical caps on the X-ball's sphere

## Why

The proof that ℂ⁶ has no four MUBs certifies a finite atlas: seed balls in four seed phases, plus one ball at F6 (the
**X-ball**). Each ball's boundary sphere must transfer into the interior of other balls (`PROOF.md` Lemma 5.1). The
goal is a Lean kernel check of the whole atlas, so the number of objects the kernel must check matters.

Return ZC (spherical caps, attached) replaced boxes on seed-ball spheres: in the new atlas, 2,693 seed spheres are
covered by caps (median 27 per sphere) instead of 13.4 million boxes. **The X-ball's sphere is now the largest
remainder: 8,031,516 boxes** (levels 6–8, 16,100 transfer groups, all T1 into seed balls). Replace them with
caps.

## What exists

- **ZC** (`ZC/`): a cap `{‖x‖ = 1, v·x ≥ h}` in x = w/r is certified for a T0/T1 transfer by a 5 × 5 positive-definite
  witness (λ, μ, s, optional multiplier vector) on the source's affine predictor d + F x, plus the target remainder
  r_t(1 − √s) > ε and both Ψ-sign margins. Coverage of S³ by an exact polar-facet certificate. Modes `polynomial`,
  `local`, `local_sphere`; `weighted_target`. Read `cap_theory.md`, `CAP_FORMAT.md`, `REPORT.md`, `construction.py`.
  ZC covers **seed-ball sources only**; its `weighted.py` refuses an edge model.
- **ZT's edge appendix** (`ZT_edge/EDGE_REPORT.md`): the X-ball's whole-ball model in the F6-012 chart,
  Q(w) = Q0 + U w + H₂[w, w]/2 + X z(w), ‖z‖ ≤ τ, from a 22-normal-coordinate augmented system (row orthogonality plus
  ψ_h(Q) = −p₄/2, with the first three seed cross-ratios fixed). It gives:
  - the output-weighted normal error τ_A of an output map A (EDGE_REPORT §4), used in the one-centre test;
  - the weighted Hessian, used in the actual-centre test with centre jets (`edge_centre_jet`).
- **The production checker** (`cert/`): `edge_wholeball.py` (the edge model; `EdgeTransfer`, a `patches.Transfer` whose
  one-centre test uses τ_A and whose centre test uses the weighted Hessian and the edge centre jet); `caps.py`
  (`check_cap(model, transfer, cap)`, ZC's checker), `cap_coverage.py`, `cap_weighted.py`, `patches.py`,
  `seedcert.py`, `edgecert.py` (the X-ball's checks; `check_edge_transfers`). Certificate format: `FORMAT.md` §§4, 4a, 8.
- **Data** (`data/`): the X-ball record of the new atlas (its frame, radius, enclosure and all 16,100 T1 group
  descriptors with their boxes), and the headers of every seed ball (targets; no boxes).

Layout: `cert/` is the production checker; it imports `atlas/` (Stage C and shared helpers), so run it with both on
`sys.path`. `ZC/`, `Z/`, `ZT*/`, `XS/` hold the theorems; `data/` the extract of the new atlas (gzip JSON, FORMAT.md
layout; `source` names its origin).

## Task

1. **Theorem.** State and prove the cap transfer theorem for the X-ball as source: ZC's theorem with the edge model's
   error terms. Polynomial mode: ε = ½‖A H₂‖Δ² + τ_A (instead of ‖AX‖τ or ZC's seed T0). Local modes: ε = ½(weighted
   Hessian)Δ² with the edge centre jet. The orientation margins (both Ψ signs at the target corner) with the edge
   model's remainders. Say exactly which ZT edge bounds each step uses, and check that the edge chart's gauge and the
   representative "nearest P + U w" (FORMAT §8) carry over to every point of a cap.
2. **Verifier.** An Arb check of one X-ball cap and of the X-ball sphere's coverage, in the style of `caps.py` and
   `seedcert.check_seed_caps`. Every acceptance must be an interval or exact inequality. Reuse `check_cap` if the edge
   transfer fits its interface, and say precisely what changes if it doesn't.
3. **Construction.** Adapt `construction.py` to the X-ball source, run it on the whole X-ball sphere, certify every
   cap with your verifier and the coverage with `cap_coverage.py`.
4. **Format.** Propose the certificate field (in the style of FORMAT §4a: `"caps"` on the edge ball, `group_index`
   into its T1 groups).
5. **Negative tests.** An enlarged cap, a dropped cap, a wrong `group_index`, a tampered witness: each must be
   rejected.

## Report

- The theorem and its proof, with labels **PROVED** / **CERTIFIED** (interval or exact replay) / **NUMERICAL** /
  **NOT ESTABLISHED** on every claim.
- Cap count and coverage facets for the X-ball sphere (against 8,031,516 boxes), construction and verification times,
  any sphere regions left to boxes and why.
- The coverage certificates' size. With caps on 2,661 seed spheres the certificate grew from 46 MB to 90 MB
  (compressed): the exact polar-facet certificates' big integers outweigh the 13 million boxes they replaced. For the
  kernel this matters. If you see a compact exact encoding, or a smaller witness of coverage, describe it. Optional.

## Constraints

- Nothing numerical is accepted: floats only propose; Arb or exact arithmetic decides.
- Do not change the meaning of existing fields; new fields only.
- Python with python-flint 0.9, numpy, scipy (construction only), as in `requirements.txt`.
