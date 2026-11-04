# Floating-point rounding in Stage C: corrected model and constants

Stage C is the set of vector-cover and graph-search tests run inside every ball, introduced in OpenAI's proof of
N(6) = 3. `../proof/atlas/RIGOUR.md` §3 bounds the floating-point error of these tests. That file is bound by path to the atlas
receipts and stays byte-identical, so its corrections are recorded here (3 November 2026, following an external
referee report). Neither correction changes any rejection.

## 1. The model must allow underflow

RIGOUR.md §3 uses the purely relative model fl(a∘b) = (a∘b)(1+ε), |ε| ≤ u = 2⁻⁵³. As stated, that model fails when
an exact result underflows. For example, the exact product 2⁻⁶⁰⁰ · 2⁻⁶⁰⁰ = 2⁻¹²⁰⁰ rounds to 0, with relative error 1.
Use instead the mixed model, valid for every correctly rounded basic operation with gradual underflow and no
overflow:

    |fl(a∘b) − a∘b| ≤ u·|a∘b| + 2⁻¹⁰⁷⁵,   ∘ ∈ {+, −, ×, ÷}.

The bounds of §3 then hold with one extra absolute term per operation.

Each tested expression has at most a few thousand operations on quantities of magnitude at most 10, so the extra
terms add less than 10⁴ · 10 · 2⁻¹⁰⁷⁵ < 10⁻³⁰⁰. The sums and products that follow are therefore bounded exactly as
in §3, up to that negligible term. There is no other change, because no hypothesis about intermediates being normal
is needed.

## 2. Two table entries are too small

In the table of §3, two rows are bounded too tightly.

**Bin tests (6.7), (6.12), (6.11).** Each side is a sum of at most 50 terms, each a coefficient of magnitude at most
10 times a quantity carrying error at most 10⁻¹². The triangle inequality gives 50 · 10 · 10⁻¹² = 5·10⁻¹⁰ per side,
not < 10⁻¹⁰. The bound is < 10⁻⁹ per side.

**Edge tests (6.16), (6.20), (6.21) and the joint test (6.23).** Each side is a sum of at most 20 · 36 = 720 terms.
Each term is a product of factors with error at most 10⁻¹² and magnitude at most 1. That gives at most 7.2·10⁻¹⁰ per
side, so the bound is again < 10⁻⁹ per side.

**The margins still dominate.** Every Stage C rejection uses lhs > rhs + MARGIN with MARGIN = 10⁻⁷. The summed error
of the two sides is below 2·10⁻⁹, and 10⁻⁷ exceeds it by a factor of 50 (RIGOUR.md says 100). So a float rejection
still implies the exact rejection.

The certifier's atlas-transfer test is unaffected: its error is < 10⁻¹³ against a margin of 10⁻¹⁰.

## 3. Where this applies

- **The atlas (both checkers).** Stage C runs in every seed ball's quartet exclusion. The Julia checker re-decides
  its Stage C rejections in intervals, independently of this analysis.
- **The triple classification.** The native leaves of the triple-classification certificates use the same Stage C
  through `TripleClassification/certifier/certifier/pr4/stagec_guard.py`, with the same margins and input-range
  checks.
- **Not covered.** The Arb replay of RIGOUR.md §4 samples rejections. It is evidence, not part of this bound.
