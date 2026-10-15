# Addendum to `CRITICAL_STRIP_CLASSIFICATION.md` (15 Oct 2026)

This addendum closes the two weakest points that the independent audit (`AUDIT_2026-10-15.md`) found in the
critical-strip classification. The dossier file is hash-pinned, so the clarifications are recorded here.

## 1. The full rational form of the nonzero-J square sum

The dossier's verifier compares only the **numerator** of the whole-strip square sum S, after reduction by the
splitting-algebra relations (3), with the stored factorisation. `i4_denominator.py` reduces the **denominator**
in the same way and factors it, exactly (python-flint, about 20 s):

| | Result |
|---|---|
| Reduced denominator | 1024 · A₊⁵ · A₋⁵ |
| Reduced numerator (stored) | −262144 · k² · (3k² + 1)³ · A₊³ · A₋³ · Q(k, K) |

So, in the splitting algebra and up to a power of h = 1 + k² > 0,

  **S = −256 k² (3k² + 1)³ Q(k, K) / (A₊² A₋²).**

The reduction removes powers of h from numerator and denominator separately, which explains the factor h⁴ in the
audit's numerical fit. Here A₊ and A₋ are the two 22-term polynomials of the classification's equation (7),
∏ⱼ L_{j,±} = ∓16 A_±/h⁷ (they exchange under k ↦ −k), and Q is the stored quartic in K.

**Consequence.** Off the pole strata (all L_{j,±} ≠ 0), and since k ≠ 0 there, S = 0 holds exactly when
Q(k, K) = 0. This is the step the classification's §3 uses. The pole strata are §4.

## 2. Row relabelling at a pole (classification §4)

"Relabel rows to place that denominator at j = 0" needs only one fact. A pole L_{j,±} = g_± + c_j z_± = 0
depends on j through c_j alone, and c₀, c₁, c₂ = 9 − |r|², 9 − |t|², 9 − |s|² are 9 minus the squared moduli of
the three off-diagonal Gram entries. A permutation of the strip's rows permutes those entries (up to conjugation),
so it permutes the c_j and leaves g, η, χ and z unchanged. The vanishing of P_j behaves the same way: by the norm
identity |P_j|² = g² + c_jχ + c_j²η, it too depends on c_j alone. So any pole can be moved to j = 0.
