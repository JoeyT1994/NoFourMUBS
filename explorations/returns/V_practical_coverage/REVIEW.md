# Review of return V (24 Oct 2026)

**Replayed:** `python -I verify_all.py`. All eight exact certificates pass (1.3 s), and the receipts are identical to
the shipped ones.

**Accepted, with d the unnormalised quotient Frobenius distance to [F6] and M the maximum corner R:**
- M ≥ 4d² for d ≤ 1/2, and M ≥ 81d²/400 for d ≤ 4/7. Hence M ≥ 0.04 on the annulus 0.1 ≤ d ≤ 4/7.
- Both Fourier families, at any distance: M ≥ 864 d²/π².
- Every Hadamard has a corner with p ≤ 9/2 whose blocks all have squared singular values in [3 − √6, 3 + √6].
- Group rounding: a row with mixing defect L_r < 1/9 gives d² ≤ L_r/(1 − L_r).

**Open:** the far region d > 4/7. The return reduces it to one inequality, S(H) ≥ L_tot(H) (or (3/5)·L_tot), which
would give M ≥ 1/600 for d ≥ 0.1. Until that is proved, the "grid over {R ≥ ε}" atlas is not available; the
open-and-closed atlas remains the route. The local constants already size F6's neighbourhood: on the F6 record's
boundary, d ≈ 0.125, so M ≳ 0.06.
