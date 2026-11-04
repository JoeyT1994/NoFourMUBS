# Review of return Q (18 Oct 2026)

**Return:** `Q_fourier_anchor_result.zip` (SHA-256 `b673f72d…faed`), from handoff Q.

**Claim.** PROVED: for K(t) = [[F₃, F₃], [F₃D(t), −F₃D(t)]], D(t) = diag(1, e^{it}, 1), the corner on rows (1, 3, 5) and
columns (0, 2, 4), dephased, is E = [[1,1,1],[1,ω,−ω²z],[1,ω²,−ωz]] with z = e^{it}, and

  R(t) = 144 sin²t (1 + cos t)² = 2304 sin²(t/2) cos⁶(t/2) > 0 for 0 < t < π.

The complementary blocks are given explicitly with 2T(B) = χ + i√R and 2T(C) = χ − i√R, so K(t) is matched at that
corner directly (no appeal to Theorem 2.4).

**Checks.** All 6 manifest hashes match; `verify.py` (standard library only) passes 62/62, output identical to the
shipped log. Independent: our sympy computation with Lean's `seedS`, `seedT`, `seedRho` gives R − claim = 0 exactly,
and the orientation of the matching agrees at three values of t.

**Assembly correction.** Coverage works as stated (W is open, K(t) → F6, so K(t) ∈ W for small t). Side existence needs
one extra step: Lean's clopen set is {Gh ∈ sideSet 1}, which seed symmetries do not transport directly. Use
V = {Gh ∈ sideSet 1 ∧ Gv ∈ sideSet(−1)}: θ(t) ∈ V, V contains a local maximum, a pointwise "sides ⇒ matched completion"
lemma gives a matched completion there, and anchor transport (with inverse words) gives all 18 maxima. Upstream's
`affineFourierMatrix` gives an equivalent curve with its Hadamard property already proved.

**Status.** Accepted and integrated (18 Oct): `Step2/FourierAnchor.lean` (`matched_fourier`, `exists_matched_mem`,
`coverage_of_matched_density`), `L1.sides_all`, and the inverse anchor words `Step1Geo.anchorSeed_back`. Removed:
`Step2/BaseAnchor.lean` (73 KB), its generator, `proof/atlas/anchor.py`, and the `AtlasCertificate.anchor` field.
