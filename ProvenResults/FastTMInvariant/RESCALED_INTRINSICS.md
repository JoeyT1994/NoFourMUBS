# Rescaled `inv` and `sqrt` (30 September 2026)

**Status:** proved here. Independent upstream review has been requested; until it reports, treat this
note as the only proof of the change. The FastTMInvariant guard is unchanged. Production FastTM is
the reviewed guarded source (sha256 `e18d1563…`) with exactly two edits:

- a three‑line header note;
- the `inv`/`sqrt` block, replaced by the rescaled forms below.

`guarded_replay.py` checks this mechanically. `previous_from_production` undoes both edits and requires
`GUARDED_SHA256`. The production sha256 is `7e9c0bc3c08a42094d1f1dca34a61238c7a3510f091db189fa7947f1c2f35baa`.

## Why

The old forms built their series coefficients as (−1)^k / c₀^(k+1) and √c₀·b_k / c₀^k. With a small
but nonzero centre c₀, for example a denominator of the side constructor `side_tm`, the constant
c₀^−(Q+1) exceeds the guard's range 2⁴⁰. This happens even though H/|c₀| < 1 and the result is
modest. The guarded campaign of 29–30 September sent 406,719 such cells to the branch layer, where
the unguarded run had pruned them. See
[`REPORT_2026-09-30.md`](../../NumericalCampaign/Campaign/REPORT_2026-09-30.md).

## Statement

Let a be a guarded Taylor model with Float64 centre c₀ = a.c[1], and let h = a − c₀. Here h is the
polynomial part without its constant term, plus the remainder a.r. Then a(s) = c₀ + h(s) for every s
in [−1,1]⁴. Suppose sup(H/|c₀|) < 1, where H = hbound(a).

Let L be the outward interval 1/interval(c₀), so L contains 1/c₀. Put v = L·h + 1, computed with the
guarded interval‑times‑model and model‑plus‑scalar operations. Put x = hbound(v).

1. **Enclosure of u.** For every s, u(s) = h(s)/c₀ satisfies 1 + u(s) ∈ v(s) and |u(s)| ≤ x.
   `*(X::Interval, a)` encloses λ·a(s) for every λ in X, in particular λ = 1/c₀. Adding the exact
   Float64 1.0 keeps that enclosure. v's constant coefficient is exactly 1, because h has constant
   coefficient 0 and m·0 = 0. So hbound(v) bounds |v(s) − 1| ≥ |u(s)|.
2. **Inverse.** If x < 1, then 1/(1+u) = Σ_{k≤Q} (−u)^k + T with |T| ≤ Σ_{k>Q} x^k = x^(Q+1)/(1−x).
   `series(v, fk, λ)` evaluates Σ fk[k]·w^k on w = v − 1 by guarded Horner steps. Its result encloses
   the polynomial for every w within v's enclosure, and then adds λ to the remainder. With fk[k] = (−1)^k
   and λ = x^(Q+1)/(1−x), the result S encloses 1/(1+u(s)). Then L·S encloses (1/c₀)·1/(1+u(s)),
   which is 1/(c₀+h(s)) = 1/a(s).
3. **Square root.** Take c₀ > 0 and x < 1. Then √(1+u) = Σ_{k≤Q} b_k u^k + T, with b_k = binom(1/2, k).
   Here |b_{k+1}/b_k| = |k − 1/2|/(k+1) < 1 for k ≥ 1, so |b_k| is nonincreasing for k ≥ 1. Hence
   |T| ≤ |b_{Q+1}|·x^(Q+1)/(1−x) for every Q ≥ 0. The b_k are built as outward interval products.
   interval(√c₀)·S encloses √c₀·√(1+u(s)), which is √a(s).

Every step is a guarded primitive, so FastTMInvariant covers the rounding of every accepted trace.
Any intermediate outside the proved range throws, and the caller treats that as "not excluded".
Intermediates are now of size about 1/|c₀|, not |c₀|^−(Q+1). The tail bounds are the same geometric
bounds as before, applied at centre 1.

## Checks

- `NumericalCampaign/Certification/test_fasttm.jl`: rigour sampling PASS, 16 of 16 cases, including
  nested inv/sqrt/cos at order 8.
- `test_hplus.jl`: 0 BigFloat violations at ρ = 1e‑3, 5e‑3 and 1e‑2.
- `guarded_replay.py` on production, receipt in `Verification/fasttm_rescaled_2026-09-30/guarded_replay/`:
  range‑guard rejection controls 9 of 9, exact subnormal controls 4 of 4, order‑12 intrinsic
  regressions 12 of 12, carrier replay PASS.
- Old and new forms give the same enclosure bounds, to the digits printed, on four test models with
  c₀ from 0.01 to 3. 2,000 random points each lie inside both. The script is
  `NumericalCampaign/Campaign/guard_study_2026-09-30/sanity.jl`.
- Campaign effect on 204 guard‑blocked layer cells: 88.2 % of their volume is pruned and none is left
  in the layer, against 39.6 % pruned before. On 208 genuine branch‑point cells there is no change.
