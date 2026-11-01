# Handoff ZC2b: spherical caps for transfers into the X-ball (T3)

## Why

The proof that ℂ⁶ has no four MUBs certifies a finite atlas: seed balls in four seed phases, plus one ball at F6 (the
**X-ball**). Each ball's boundary sphere must transfer into the interior of other balls (`PROOF.md` Lemma 5.1). The
goal is a Lean kernel check of the whole atlas, so the number of objects the kernel must check matters.

Return ZC (spherical caps, attached) covers a seed ball's sphere by caps when all its transfers go to other seed balls
(T0, T1). In the new atlas that is 2,693 of 2,775 seed balls. **The other 82 seed balls also transfer into the X-ball
(kind T3)**, so they keep all their boxes: 569,854 in all, 159,836 of them T3. Give T3 a cap version, so that these
82 spheres can be covered by caps too.

## What exists

- **Theorem 4.3 (return XS, `XS/`).** Let K be Hadamard with an ordered corner (I, J), and
  p′(K) = (θ′₁ − π/3, θ′₂ − 2π/3, θ′₃ − 2π/3, −2 Im Ψ(K[I, Jᶜ])). If p′(K) lies in a target contained in W's
  ellipsoid E_{1/5} and d([K], [F6]) ≤ 3/20, then K ≅ H(p′(K)). Read `XS/REPORT.md`.
- **The T3 test on a box** (`FORMAT.md` §8; `cert/edgecert.py`, `check_T3`). Over the whole box:
  - (a) ‖Mth_e⁻¹ p′‖ < r_e: the corner parameter lies in the X-ball's ellipsoid (once: that ellipsoid lies in E_{1/5});
  - (b) the phase distance of K to F6 is below 3/20: sup ‖h(π(Q′) + 2πN − P_F6)‖ with any row/column alignment and N.
  Here θ′₁..θ′₃ are linear in the source phases Q, while y′ = −2 Im Ψ(K[I, Jᶜ]) is not.
- **ZC** (`ZC/`): a cap {‖x‖ = 1, v·x ≥ h} in x = w/r is certified for a T0/T1 transfer by a 5 × 5 positive-definite
  witness on the source's affine predictor d + F x (an S-lemma bound of ‖d + F x‖² ≤ s on the cap), with remainders
  from the source's whole-ball model, plus both Ψ-sign margins via the linear cap minimum. Coverage of S³ by an exact
  polar-facet certificate. Read `cap_theory.md`, `CAP_FORMAT.md`, `REPORT.md`, `construction.py`.
- **The seed ball's whole-ball model** (`Z/THEOREM.md`; `cert/wholeball.py`, `cert/patches.py`): Q(w) = Q0 + U w +
  H₂[w, w]/2 + X z(w), ‖z‖ ≤ τ, with ZT's output-weighted bounds (`cert/cap_weighted.py`) and centre jets
  (`patches.centre_jet`).
- **Data** (`data/`): the 82 seed balls' records with every transfer group (T0, T1, T3) and box, the X-ball record, and
  the headers of every seed ball.

Layout: `cert/` is the production checker; it imports `atlas/` (Stage C and shared helpers), so run it with both on
`sys.path`. `ZC/`, `Z/`, `ZT*/`, `XS/` hold the theorems; `data/` the extract of the new atlas (gzip JSON, FORMAT.md
layout; `source` names its origin).

## Task

1. **Theorem.** A cap version of the T3 test from the source's whole-ball model:
   - (a) ‖Mth_e⁻¹ p′(w)‖ < r_e on the cap. θ′₁..θ′₃ are affine in Q, but y′ needs a linearisation of Im Ψ with a
     certified remainder (the Ψ-sign machinery of ZT and ZC bounds ‖D²ψ‖ ≤ 72);
   - (b) the phase distance to F6 below 3/20 on the cap: an S-lemma bound of a 36-dimensional affine output plus
     remainders, with the alignment and N fixed per cap or per group.
   Decide whether one 5 × 5 witness per condition suffices, or what replaces it. **This is new mathematics: write it
   up fully, with every error term.**
2. **Verifier.** An Arb check of one T3 cap, in the style of `caps.check_cap`, and mixed spheres: T0/T1 caps and T3 caps
   together covering one sphere (one coverage certificate over all of them).
3. **Construction.** Extend `construction.py`, run it on the 82 spheres, certify every cap and each sphere's coverage.
4. **Format.** Propose the cap record for T3 (`group_index` of a T3 group; any extra fields).
5. **Negative tests.** Enlarged cap, dropped cap, wrong winding, wrong `group_index`, tampered witness: all rejected.

## Report

- The theorem and its proof, with labels **PROVED** / **CERTIFIED** (interval or exact replay) / **NUMERICAL** /
  **NOT ESTABLISHED** on every claim.
- How many of the 82 spheres are covered fully by caps; cap and facet counts against their 569,854 boxes; times.
- Anything left to boxes, and why.

## Constraints

- Nothing numerical is accepted: floats only propose; Arb or exact arithmetic decides.
- Do not change the meaning of existing fields; new fields only.
- Python with python-flint 0.9, numpy, scipy (construction only), as in `requirements.txt`.
