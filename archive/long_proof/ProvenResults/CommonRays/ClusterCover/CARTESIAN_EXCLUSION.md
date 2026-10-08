# Cheaper outward-interval exclusion of phase boxes

**Status: analytic sufficient condition; implemented in the campaign's production cover certificate.**
This uses the same Taylor coefficients and remainders as the existing cover
certificate. It introduces no floating-point error estimate or new
reconstruction assumption.

Write a column of the unnormalised carrier on a seed sub-cell as

    H_k(s) = h_k0 + Σ_{α≠0} h_kα s^α + e_k(s),
    |s^α|≤1, |e_k(s)|≤rem_k,
    dev_k ≥ Σ_{α≠0}|h_kα|+rem_k.

For phase centre c, set z₀=1, z_k=e^{ic_k}, and let u=e^{iγ} be any
rotation. Define

    S₀ = Σ z_k conjugate(h_k0),
    V_k = conjugate(u) z_k conjugate(h_k0),
    E_coarse = Σ dev_k,
    E_refined = Σ_{α≠0}|Σ z_k conjugate(h_kα)| + Σ rem_k.

Either E bounds the seed-dependent variation in `Σ z_k conjugate(H_k(s))`.
For phase offsets `|δ_k|≤w_k`, define real intervals

    C_k ⊇ {cos δ−1 : |δ|≤w_k},
    T_k ⊇ {sin δ : |δ|≤w_k},
    d_k ≥ dev_k min(2,w_k).

The real and imaginary parts of the rotated column sum are enclosed by

    Re = Re(conjugate(u) S₀) + [−E,E]
         + Σ_{k=1}⁵ [Re(V_k) C_k − Im(V_k) T_k + [−d_k,d_k]],
    Im = Im(conjugate(u) S₀) + [−E,E]
         + Σ_{k=1}⁵ [Im(V_k) C_k + Re(V_k) T_k + [−d_k,d_k]].

Indeed, the constant-coefficient increment is exactly
`V_k(e^{iδ_k}−1)`; the remaining mixed increment has modulus at most
`dev_k |e^{iδ_k}−1|≤d_k`. The unperturbed first coordinate has no increment.
The displayed rectangles therefore contain every possible sum, even though
they forget dependence between sine, cosine, and the common seed.
If the outward interval `Re²+Im²` omits the integer 6 for any column, the
whole phase box × seed sub-cell contains no common unbiased ray. ∎

## Implementation and fallback

`CartesianVerifier()` first tries E_coarse, then E_refined. It computes
all certificate quantities using IntervalArithmetic. Floating values only
choose the column order and rotation angle; any such choices are valid.
Cached phase/width intervals are keyed by the exact Float64 arguments;
cached coarse radii belong to the actual CoverCell object, including each
restricted seed sub-cell. Caches must be private to a worker and the cell
coefficients must not be mutated after caching. The current search obeys
both conditions.

The original `verified_excluded` is the fallback when the new rectangles
do not exclude. Thus a rejected cheap test never prevents an exclusion
that the original verifier would accept on the same node. The existing
floating proposal filter, full torus cover, seed splits, label containment,
and graph certificate remain required.

The speed benefit comes from avoiding interval argument functions and,
when E_coarse suffices, the fourteen nonconstant coefficient dot products.
Performance figures belong in the campaign receipt; this theorem alone
does not imply a runtime reduction.
