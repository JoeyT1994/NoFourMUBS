# Review of return W (25 Oct 2026)

**Replayed:** `python3 -I scripts/verify_all.py` (standard library, about 10 s on a copy). All component checks pass. The
JSON receipts match the shipped ones except for the informational `elapsed_seconds` fields.

**Accepted results (relative to U's germ theorem):**
- One fixed U chart (corner 0,1,2 at θ⁰, augmented system (20)) on the explicit ellipsoid
  `D = {q^T W q ≤ 1/25}` (tangent radius 0.2) has a unique solution branch in an explicit cubic-predictor tube
  (contraction < 0.815). The side determinant is |det B| > 0.729.
- **Coverage:** every Hadamard class at horizontal phase quotient distance ≤ 0.15 from [F6] is Φ(p) for some p in the
  interior of D.
- The map is injective modulo the 72 Fourier stabilisers (all 518,400 permutation pairs checked).
- The boundary of D maps to distance > 0.15.
- σ_min(DΦ_h) ≥ 1/265 in raw parameters (1/12 scaled). The Hessian bound 1.5e11 is conservative and not for practical
  use.

**Atlas use.** The edge chart reaches past the old F6 record's radius 0.125. Edge balls placed in this chart (one
larger ball, or several) can therefore cover the region the seed atlas was built against, with transfers between edge
balls linear in U's coordinates. This is what closes the shell found on 25 Oct (1.6M uncovered edge-sphere boxes).
