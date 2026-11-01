# Hard balls: plan

Goal: certify the hard seed balls (768, 815, 825, 1016, then 905 and the heavy tree balls) with a few small
certificates per ball. The statement to prove for each pattern is: every zero is symmetric, or there is none.
We never locate the triples.

## What the measurements say (1 Nov 2026, floats, diagnostic only)

1. **Native leaves fail on coarse cells because K is not localised.** On the level-4 cell 1016 (11,9,7,9) (r = 0.01),
   the six colour balls of a pattern have phase radius 0.25–0.49. The joint K contraction (`joint_basis.refine`)
   only reaches 0.22–0.44, and the moving-symmetry bound is q ≈ 25–70. Almost all of it comes from the K-error
   Hessian and Fourier remainder terms; the H motion contributes little. The whole ball moves H by only 0.08 rad
   (U has orthonormal columns, r = 0.08), so H motion is not the obstacle.

2. **One weak complex mode.** At the exact family triples of refs/22, the fixed-H K-Jacobian (30 gauge-fixed K
   phases, 96 equations) has one weak pair of singular values and everything else ≥ 1.26:

   | Ball | weak σ (pair) | next σ |
   |---:|---:|---:|
   | 768 | 0.176 | 1.26 |
   | 815 | 0.090 | 1.26 |
   | 825 | 0.166 | 1.26 |
   | 1016 | 0.118 | 1.26 |

   On the full system (H and K phases, joint gauge removed) the kernel is the 2-dim family tangent. The same weak
   pair is the smallest singular value of the **moving** Jacobian (rank-40 moving space of the surviving K-anchor
   action); all other moving singular values are ≥ 1.58. So the weak mode is an ω-eigen (Z3-moving) direction.

3. **The weak mode is benign.** At fixed family H, with the 28 strong K directions relaxed, the residual grows
   linearly in the weak coordinate ρ: |F| ≈ 0.118 ρ (1016) and 0.090 ρ (815), for every ρ up to 0.4, at every angle.
   There is no nearby non-symmetric zero of the moving equations. Second-order effects in the weak rows are small.

4. **Why these balls.** Along the family, the weak σ drops to ≈ 0.02 about 0.1–0.15 away in (b,c), near
   b = c = 2π/3, where γ(b,c) = 0. The hard balls sit next to a point where the K-completion degenerates. The
   ball itself sees σ_w vary by a factor of about 2–3.

So the native certifier fails on coarse cells for two reasons: the initial K enclosure is too wide, and its
isotropic bounds multiply every error by 1/σ_w ≈ 6–11, although only two of the 40 moving directions are weak.

## The idea: a two-scale witness with a moving reference

For one pattern on a whole ball (or a few coarse cells), split the K errors into 28 strong and 2 weak coordinates,
as the tail return's 815 annulus certificate did, and let the reference follow H.

**Step L: localise.** Use the anisotropic annulus lemma of `PROOF_815.md` §4 in the two norm variables (S, W),
starting from the six colour balls. Its reference y\*(w) and preconditioner are affine in the H coordinate w and are
proposed by floats. The H dependence then enters at second order, not first. The 815 certificate used a fixed
reference, so its constants grow like ‖B_w‖·D with ‖B_w‖ ≈ 12. That is fine at D = 0.003 and fatal at D = 0.08.
Output: every zero lies within (S, W) ≤ (ρ_s, ρ_w) of y\*(w), or the pattern is empty.

**Step F: force symmetry.** Run the averaged moving equation (native PROOF.md §6) on that tube with:
- the single surviving action (K anchor, R = (2,4,3,0,5,1), S = (2,0,1,5,3,4)), so no action search;
- a block (strong/weak) injectivity test instead of one spectral norm. M = I + Δ is injective on range E if the
  2×2 matrix of block norms of Δ has spectral radius < 1;
- a preconditioner affine in w, so that the first-order variation of the Jacobian over the cell cancels.

Outcomes per pattern: EXCLUDED (step L empties it, or a positive residual as in 815 §8) or CLASSIFIED (every zero is
symmetric, so it is of family type by the reviewed recognition argument).

**Why it can work.** Finding 3 says the weak block's own nonlinearity is small up to 0.4. The strong block has
σ ≥ 1.26 and |D²F| ≤ 6 (815 §3), a validity radius of about 0.2. A ball moves H by 0.08 rad.

**Risks, in order.**
1. σ_w varies by a factor of 2–3 across a ball. An affine preconditioner may not track 1/σ_w, and then a ball
   needs 2–16 cells instead of one. That is still far below 26k–54k leaves.
2. Colour balls of 0.4–0.5 rad per column may exceed the strong validity radius. Fallback: start step L from the
   native fine bins (already rebuilt by the checker), not from the colours.
3. Patterns: a level-4 cell has up to 256 patterns, and the genuine K lies in many of them. Each pattern costs one
   witness, about 10 s.

## Certificate and checker

- Witness-only: ball, cell, and (optionally) a reference K\* per pattern. The checker recomputes every float
  proposal (y\*(w), T, B, preconditioners) deterministically from the rebuilt cover, and accepts only Arb strict
  inequalities. Target: a few KB per ball, minutes per ball on one core.
- Code: `TripleClassification/hardballs/`, a single small module plus a driver, built on the pinned native modules
  (`moving_symmetry`, `native_columns`) without changing them.

## New mathematics (proposals for the user, not relied on silently)

- **P1. Parametric anisotropic annulus lemma**: §4 of PROOF_815.md with a w-affine reference and preconditioner.
- **P2. Block injectivity criterion** for the averaged moving equation (two-block small-gain test).

Both are short, standard arguments (Taylor expansion, small-gain), but they are new statements. Each will be
written out in full in `hardballs/PROOFS.md` for the user's decision before anything depends on it.

## Order of work

1. Float feasibility on 1016 (level-4 cell, then the whole ball): estimate (ρ_s, ρ_w) from step L and the block q
   from step F. Stop and report if they are far from closing.
2. Arb checker for step F, then step L, on 1016 cell (11,9,7,9): fraction of its 256 patterns closed, time, size.
3. Whole ball 1016, then 768/815/825; report in `hardballs/REPORT.md`.
