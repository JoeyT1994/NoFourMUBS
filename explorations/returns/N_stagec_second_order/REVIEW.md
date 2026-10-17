# Review of return N (17 Oct 2026)

**Return:** `N_stagec_second_order_results_2026-10-17.zip` (18.9 MB; SHA-256 `a3bd3d59…b39`, in `proof/coverage/returns/SOURCE_ZIPS.sha256`),
from handoff N (`handoff/BRIEF.md`). Only its readable core is kept here (REPORT, the paper
proof `work/quadratic_proof.md`, the formal notes and candidate Lean, the test implementation and the exact verifiers); the
full zip, with fixtures and survey data, is kept locally in `handoff_packages/` (git-excluded) and can be re-shared.

## Claims (the return's labels)
- **N1 PROVED:** a second-order single-vector (tangent) test for Stage C — the exact quadratic polynomial on the 5-D bin
  box × 4-D tangent ball with explicit one-sided support bounds, a sharp Hessian contraction, an explicit cubic remainder,
  and all normal/frame-rounding errors, within the existing Lean certificate domain.
- **N2 PROVED (conditional):** a second-order normal-bound theorem with branch and tangent-leakage conditions; not used
  in the measurements.
- **CERTIFIED:** 1,620 selected new rejection comparisons (six Records × five resolutions) re-evaluated in 160-bit Arb,
  conditional on the supplied geometry bars; exact-rational identity and support fixtures.
- **NUMERICAL (301 + 6 Records):** at R = 0.08 the new test presents 2.37× fewer bins to the tangent stage with every
  baseline pass kept (refining unresolved Records to M = 96; a 3.2× cut at M = 48 loses 75 passes); at R = 0.12 a
  primary-then-retry procedure passes 238/301 (79%), the primary filter alone 210/301 (70%).
- **NOT ESTABLISHED:** compiled Lean, a production integer checker, Julia integration, full recertification, kernel
  CPU-hour savings.

## What we checked
- All files match `SHA256SUMS`; code scanned (network/subprocess only in the optional survey launcher, not run).
- `work/verify_quadratic_exact.py`: PASS (576 support and 576 weighted-Frobenius checks).
- `work/verification/verify_identities.py`: PASS (finite exact-rational checks, 48 cases, incl. a row-sum counterexample).
- `work/verification/replay_arb.py`: PASS, 1,620/1,620 comparisons at 160 bits, 0 failures, minimum margin ≈ 1.03·10⁻⁷.
- Not checked by us: the written analytic proofs (Appendix A of REPORT.md, `work/quadratic_proof.md`) — they need a
  mathematical review before any use.

## Decision: filed, not integrated (17 Oct 2026)
Using N means rebuilding the atlas with larger Records and teaching certify.py, the Julia checker, the Lean Stage C
modules and the kernel checker the new test, then recertifying everything. The current atlas is certified and the full
kernel run is already under way, so the payoff now is small. **Revisit** if the kernel atlas has to be rerun (R = 0.12
Records could cut the Record count several-fold) or if the atlas is rebuilt for another reason.
