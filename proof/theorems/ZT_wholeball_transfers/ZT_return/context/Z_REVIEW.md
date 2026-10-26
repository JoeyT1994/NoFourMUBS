# Review of return Z (25 Oct 2026)

**Replayed on rusty** (`python replay.py`, about 3 min): CERTIFIED. 291 full radii plus 9 separate reduced radii,
the Hessian and remainder witnesses, and every stated sharpness threshold pass.

**Accepted result.** For a seed ball θ₀ + M_θ w (‖w‖ ≤ r), one centre-based Arb computation certifies, with no
subdivision:
- the matched analytic branch over the whole ball (a contraction τ);
- both orientation signs, and R > 0;
- a C1 enclosure ‖hQ − P − Uw‖ ≤ n, within 1.8× of the true remainder on the benchmark.

It is conditional only on the local matched-completion germ (`PROOF.md` §2). The scalar recipe
n = ½ C‖M‖²r² is provably too loose; the frame-preserving contraction is what makes it sharp.

**Use.** `proof/seed_atlas/cert/wholeball.py` (Z's certifier on the certificate's centre, frame and branch) is now the
first C1 step of the Arb certifier, with the box method as fallback. On 30 balls of the re-grown atlas, 29 certify in
0.5 s each, against about 150 s with boxes. Their n is 1.01–1.39× the box-certified n.

**To do:**
- the Julia replay of the whole-ball method;
- a Lean or kernel version: it would replace the per-ball C1 boxes in the kernel run.
