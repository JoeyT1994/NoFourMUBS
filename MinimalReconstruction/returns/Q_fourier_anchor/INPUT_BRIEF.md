# Handoff Q: anchor the reconstruction at the Fourier family instead of the explicit H₀

## What it would remove
- `lean/NoFourMUBS/Step2/BaseAnchor.lean` (73 KB): an explicit matched completion H₀ at the maximum seed θ*, over
  ℚ(i, √3, √5, √7), with 36 unit checks plus the Hadamard and signature identities.
- Its generator (`lean/generators/base_anchor/`), `proof/atlas/anchor.py`, the certificate field
  `AtlasCertificate.anchor` and the obligation "H₀ lies in Record 9319".

The Fourier field (`AtlasCertificate.fourier`: F6 lies in the interior of a Record, Record 877 at distance 0.023) then
does both jobs.

## Where H₀ is used now (PROOF.md)
1. **Side existence** (Theorem 2.2, return J). The set U of strict seeds whose Gram matrix is realised by a side with
   Im T > 0 is open and closed in S = {R > 0}. H₀ supplies sides at the maximum θ*, seed symmetries transport them to
   all 18 maxima, and Lemma 1.1 gives U = S.
2. **Coverage** (Lemma 4.2, Lean route `coverage_of_matched_density`). A = f₊⁻¹(W) is open and closed in S. H₀ ∈ W
   puts the 18 maxima in A, so A = S.

Both arguments need *one* strict seed in U (respectively A) in each component of S. They do not need that seed to be
a maximum: a component of S contains a positive local maximum (the argument of Lemma 1.1), so U ∋ one point of a
component ⇒ U ⊇ that component ⇒ U contains a maximum ⇒ by the seed symmetries U contains all 18 ⇒ U = S.

## The statement to prove
Let ω = e^{2πi/3}, F₃ = (ω^{ij}), D(t) = diag(1, e^{it}, 1) and

  K(t) = [[F₃, F₃], [F₃D(t), −F₃D(t)]],

a member of the two-parameter Fourier family, Hadamard for every real t, with K(0) ≅ F₂⊗F₃ ≅ F6.

> **Lemma Q.** There is t₀ > 0 such that for 0 < t < t₀ the positional corner of K(t) on rows {1, 3, 5} and columns
> {0, 2, 4} (zero-based), once dephased, is strict: R(t) > 0. Give R(t) in closed form.

Numerically (float, not a proof), R ≈ 0.0576 at t = 0.01 and ≈ 5.71 at t = 0.1, so R ≈ 576 t² near 0. For t > 0, 108–144
of the 400 positional corners are strict. Any one explicit strict corner with a closed-form R(t) > 0 will do; the one
above is the largest for small t.

The rest is assembly, not new mathematics:
- **Matched.** K(t) is Hadamard with a strict corner. It is not Tao (its cross-ratio e^{it} is not a cube root of
  unity for 0 < t < π/3), so by Theorem 2.4 its sides at that corner are matched. Hence the corner seed θ(t) lies in U
  (side existence) and K(t) is a matched completion there.
- **Coverage.** F6 is in the *interior* of a Record, and K(t) → F6 in the quotient, so K(t) ∈ W for all small t. With
  θ(t) ∈ A, the component argument gives A = S. Conjugation invariance of W handles the other matching. No explicit t
  is needed beyond Lemma Q's t₀.
- **Every component.** The argument above reaches every component of S only if each component's maximum is in the
  18-point orbit, which Theorem 1 gives, and if the orbit's points all lie in U. One point of the orbit in U is enough,
  by the seed-symmetry transport already in Lean (`AnchorTransport`).

## Deliver
A short proof of Lemma Q with R(t) explicit (for example as a polynomial in cos t times sin²(t/2)), and its exact
check (sympy or integers). The Lean re-plumbing of `SideCover` and `coverage_of_matched_density` is engineering and
will be done on our side.

**Difficulty:** low. **Payoff:** about 73 KB of Lean, one generator, one checker script and one certificate obligation.
