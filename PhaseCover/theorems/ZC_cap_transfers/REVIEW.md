# Review of return ZC (26 Oct 2026)

**Replayed on rusty** (`cap_verify.py`, `test_rejection.py`):
- seeds 6, 37 and 96: **CERTIFIED full sphere** with 26, 119 and 159 caps, in 0.65 s, 2.7 s and 3.2 s;
- the rejection suite: PASS.

**Accepted result.**
- **A cap transfer** (T0, T1 on a spherical cap, with both Ψ signs) is certified by a 5 × 5 PSD test (interval LDL) on
  Z's quadratic predictor with ZT's error terms. An affine nonnegative multiplier makes the certificate lossless for
  strict positivity on a genuine cap; the scalar S-procedure is sufficient but not lossless (a counterexample is
  given).
- **Coverage:** positive-threshold rational caps cover S³ exactly when their complementary halfspace polytope lies in
  the unit 4-ball. The certificate is a polar-facet enumeration with integer supporting inequalities and ridge
  incidence, plus vertex norms, all in exact arithmetic.
- **On the 200-ball sample:** 191 spheres are certified, with 6,217 caps in place of 920,143 boxes (148×) and ZT's
  333,983 patches (54×). Caps per sphere: median 27, at most 159.

**Not covered.**
- 7 balls where Z's normal form fails: 2264, 2279, 2297, 2313, 2325, 2326, 2327 (the last four have T3).
- 2 balls where the cap search did not close: 2124 and 2257. An exact witness proves the gap in those particular
  cap lists.
- T3 caps, the X-ball's sphere, and Lean.

**Use.** Transfers become about 30 caps per ball, against about 5,000 boxes. Integration needs:
- a cap format in the certificate;
- `cap_verify` and the exact coverage check in both certifiers;
- the driver producing caps;
- for the kernel, a cap-transfer lemma and a cap-coverage lemma.

Balls where Z fails keep boxes; with ZK2's shrinking that should be none.
