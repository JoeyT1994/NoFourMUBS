# Handoff ZC: boundary transfers on spherical caps

**Goal.** Certify each seed ball's boundary transfers on a few dozen to a few hundred **spherical caps**, one or a few
per neighbouring target, instead of thousands of dyadic boxes. A cap would be certified by an S-lemma certificate on
return Z's quadratic predictor, and the sphere covered by an exact cap-coverage check. Today a sphere needs about 5,000
boxes, 11.7 M across the atlas. Return ZT proved that, with the current box structure and transfer targets, a seed
sphere needs at least hundreds of leaves: boxes are the wrong shape, not the bounds.

Label every claim **PROVED**, **CERTIFIED** (exact or interval computation, replayable), **NUMERICAL** or
**NOT ESTABLISHED**. Context files are in `context/`. The Python files there are reference implementations to read
(numpy, python-flint).

---

## 1. The objects

- **Seed balls and transfers.** A seed ball is θ₀ + M_θ w, ‖w‖ ≤ r, with its sphere ‖w‖ = r. A T1 transfer from the
  ball to target ℓ, with element g, ordered corner (I, J) and winding N, holds at a sphere point w when both of these
  hold (`context/FORMAT.md` §4):
  - **target:** ‖M_ℓ⁻¹(L_IJ g Q(w) + 2πN − θ₀_ℓ)‖ < r_ℓ;
  - **orientation:** sign Im Ψ(K[I, Jᶜ]) = o_ℓ and sign Im Ψ(K[Iᶜ, J]ᵀ) = −o_ℓ, with K = g·e^{iQ(w)}.

  T0 is the same corner and linear in w.
- **Z's normal form** (`context/Z_THEOREM.md`). On the whole ball, Q(w) = Q₀ + Uw + ½H₂[w, w] + Xz(w), with
  ‖z(w)‖ ≤ τ, ‖Dz‖ ≤ Z₁ and ‖D²z‖ ≤ Z₂.
- **ZT's patch certificate** (`context/ZT_REPORT.md` §2 and Appendix A; code in `context/patches.py`). With
  A = M_ℓ⁻¹ L_IJ g, the target quantity is a(w) = A(Q₀ + Uw + ½H₂[w, w]) + const, up to an error ‖AX‖τ, or the
  output-weighted τ_A. So the target condition is the quadratic inequality ‖a(w)‖² < (r_ℓ − error)² on the sphere,
  with explicit coefficients. The Ψ signs have a similar quadratic model with error 36·d², from ‖D²ψ‖ ≤ 72.
- **The lower bound** (`context/ZT_REPORT.md` §4). For seed 6, the given transfer targets need at least 627 dyadic
  leaves under FORMAT's traversal, while its sphere has 42 transfer descriptors.

## 2. What we want

1. **A cap certificate (PROVED, then CERTIFIED).** Write a cap as C = {w : ‖w‖ = r, ⟨w, e⟩ ≥ r cos α}. Give a
   certificate that a transfer holds on all of C:
   - an S-lemma or SOS multiplier certificate for the target's quadratic inequality on C, with Z's error terms;
   - the same for the two Ψ signs, with their quadratic models and error.

   It must be checkable in exact or interval arithmetic from a few numbers (multipliers, a PSD witness), and cheap.
   Say how the error terms enter (global τ or τ_A, versus a cap-centred jet as in ZT's local mode), and when the
   S-lemma is lossless here.
2. **Covering the sphere by caps (PROVED, CERTIFIED).** An exact, checkable criterion that finitely many caps cover S³.
   This replaces FORMAT's dyadic traversal. Options include covering-radius arguments with exact rational cap centres,
   or a Delaunay or dual-graph certificate; it must be cheap to verify, since it will be kernel-checked.
3. **Construction (NUMERICAL is fine).** For the 200 sample balls in `context/sample_certificate.json.gz`, use the
   existing transfer targets, plus new ones from the same neighbour balls where useful. Choose caps greedily or by an
   optimisation, and report:
   - the number of caps per ball, against the boxes in the certificate and ZT's patches
     (`context/ZT_per_ball_counts.csv`);
   - CERTIFIED full-sphere cap covers for at least a sample.
4. **The X-ball's sphere,** if the method carries over. It has 1.18 M boxes now, 55,345 ZT patches, and ZT's
   augmented normal form (ZT_REPORT §5, Appendix B).

## 3. Why it matters

Transfers dominate every check:
- **Arb:** about 70 of 101 seed-ball core-hours, before ZT.
- **Julia:** similar.
- **The Lean kernel:** one transfer test per leaf.

Fewer than a few hundred certified caps per ball would make transfers a small part of all three. The Lean side would
also need a cap-transfer lemma, in place of the sphere-restricted box lemma, and a cap-coverage lemma.

## 4. Deliverables

- `REPORT.md` with the cap certificate, the coverage criterion and their proofs.
- A replayable Arb script that, given a ball, its transfer data and a list of caps with certificates, certifies the
  caps and the coverage.
- Per-ball cap counts for the sample.

Partial results are useful. For example: the cap certificate alone, with coverage still by dyadic boxes of the cap
structure, or caps for T0 and T1 only.

**Do not use** the MUB atlas or Stage C.
