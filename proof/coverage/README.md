# Coverage: proved (8 Oct 2026)

This folder holds two independent returns of the coverage handoff (`../atlas/dev/coverage_handoff/PROMPT.md`), kept as pristine copies.
- `returns/A_deltoid/` comes from `CoverageProof_2026-10-08.zip`.
- `returns/B_exact_quotient/` comes from `CoverageProof.zip`.
- `returns/SOURCE_ZIPS.sha256` holds the hashes of the two zips.

Both replay locally with Python 3, SymPy 1.14.0 and python-flint 0.9.0, and both exit 0:

| Return | Command | Time | Log |
|---|---|---|---|
| A | `cd returns/A_deltoid && python3 verify_all.py` | 6 s | `returns/A_deltoid_REPLAY_2026-10-08.log` |
| B | `cd returns/B_exact_quotient && python3 verify_all.py` | 7 s | `returns/B_exact_quotient_REPLAY_2026-10-08.log` |

Every acceptance decision is exact: Laurent-polynomial identities, resultants and Gröbner bases, Sturm counts, rational interval signs, and exact algebraic evaluation. Arb is used only in return B's reusable boundary checker.

## What is now proved

**Claim A (no classification input).** The positive local maxima of R on T⁴ are exactly the 18-point orbit, under the 144 seed maps, of

  θ* = (α, 2α, −α, −2α), α = arccos(1/4), R(θ*) = 3¹³/2¹² = 1594323/4096.

The Hessian at θ* is negative definite. In particular R ≤ 3¹³/2¹² on T⁴, and {R > 0} has at most 18 components.

Both returns prove this algebraically. Neither uses a box cover.
- **Return A (shortest).** Normalise the even products (ad, b, c) and the odd products (bc, d, a) of the corner to product 1. Put U and V for their traces, A = U + V and B = U − V. Then g = 2v − 3u, η = v − 2u, and R = 4g²η − χ² with χ = (3u − v)(v − u + 12)/2 − 2Re(AB²), where u = |A|² and v = |B|².
  - R is invariant under the circle action (A, B) ↦ (e^{−2iτ}A, e^{iτ}B).
  - This rules out maxima with either trace inside the deltoid: one resultant, two real candidates, both with an increasing direction.
  - The two-boundary problem (U and V both on the deltoid boundary) is then classified exactly.
- **Return B.** The same census by a different exact route. It also reports two delicate cases.
  - The F3 seed has R = ∇R = Hess R = 0 with strict seeds arbitrarily close, so **no interval box cover of T⁴ can terminate**. This is why our `critR.jl` (now `../atlas/dev/`) was retired.
  - The q = 1 real corners are critical points with R = 256. They are saddles.

**Claim B (relative to MC2–MC5).** Exact sheet parity: [H_σ(Lθ)] = 𝒞^κ 𝒯^τ [H_{(−1)^{τ+κ}σ}(θ)].
- Row and column seed maps preserve the sheet.
- Transposition and conjugation each reverse it.
- At the maximum frame E(x) = [[1,1,1],[1,x,x²],[1,x⁻¹,x⁻²]], two exact frame symmetries give **H₊(Lθ*) ≅ K\* for all 144 maps L**: a single class.

**Correction to our draft (both returns).** `../atlas/COVERAGE.md` justified the sheet swap by "H₋ ≅ conj H₊(θ̄)", which is circular. The frame symmetries above repair it.

**Claim C (relative to MC1–MC5).**
- θ ↦ [H₊(θ)] is continuous on all of S = {R > 0}, including root cuts and the s = 0 case of the δ-sign rule. Every component of S contains a local maximum.

**Stronger (return A, `CONNECTEDNESS.md`).** The quotient X = (𝓗/≅) ∖ {[Tao]} is **connected**.
- The images of H₊ and of conj H₊ are connected, since every component of S reaches the single class [K*].
- The explicit family [[F₃, F₃], [F₃D(t), −F₃D(t)]] runs from F₂⊗F₃ ≅ F6 into both images. Its cross-ratio e^{it} shows it avoids F6 and Tao for 0 < t < π/3.

**Task D (partial).** These are exact squared spectra of JᵀJ on the horizontal space:
- the whole affine Fourier family: 0⁴, 3⁴, 9¹², 12⁵ (σ_min = √3);
- Tao: (9/2)¹⁶, 12⁹.

Uniform conditioning at every Hadamard remains a conjecture. The atlas does not need it, because each Record certifies its own σ.

## Consequence for the proof

**Coverage theorem.** Let W be a nonempty finite union of closed Records in the horizontal phase space. Suppose every Hadamard on the boundary of a Record has an equivalent representative in the interior of some Record. Then W ⊇ X: W ∩ X is closed and open in X, and X is connected.

- So the only global input left is a **finite atlas whose boundary transfers are certified**, plus Stage C on every Record.
- No maximum-centred Record, no closure under conjugation or transposition, no maximal-corner domain and no confinement lemma is needed.
- Return B gives a concrete, executable boundary-certificate format: `returns/B_exact_quotient/quotient_coverage/BOUNDARY_FORMAT.md` and `verify_boundary_records.py`. It uses 25-dimensional box trees.
- For our ball Records the certified normal bound ‖ν‖ ≤ n reduces the boundary to a **4-dimensional** tangent shell. See `../atlas/COVERAGE.md`.

**Inputs relied on.** MC1–MC5, relative to the classification paper (Claims B and C only), and the isolation of Tao. Claim A uses neither.
