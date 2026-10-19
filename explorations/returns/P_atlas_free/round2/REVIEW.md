# Review of return P, round 2 (18 Oct 2026)

**Return:** `P_atlas_free_round2.zip` (SHA-256 `af84ba7a…9f99`). Not used by the proof; the atlas stays.

**New since round 1 (PROVED / CERTIFIED):** a global clock-collision theorem (a companion of {I, U(D)} with two rays
from one clock orbit is in the continuous family or the product class), so what remains of A is cliques with six
distinct orbit labels; the cubic predicate P₃ (30 factors; P₃ = 0 means Fourier *or Tao*); four-ray completion
(at most one completion, existing iff D₄ = 0); coarse length and count bounds; the quartet cross-equations reduced to
16 + 8 + 1 tests; and the all-400-minor pullback to 280 factors Φ.

**Checks.** 31/31 hashes; `verify_all.py` passes all 6 gates in 2.5 s with receipts reproduced byte for byte.
Independent numerical checks at a random Fourier pair (48 common rays, 8 companions, four-ray formulas rebuild every
missing pair) and at a Fourier-free anchor (60 common rays, one companion).

**Open.** (A′) companions with six distinct clock labels; (C) no component of triple space with Π > 0, now phrased via
D₄ and Φ, but not reduced to a finite check. The clock-collision theorem relies on an external preprint (Sun,
arXiv:2610.12180) that we have not checked. Correction to the brief: the needed boundary statement is
closure(V ∖ V_F) ∩ V_F = ∅.
