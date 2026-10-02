# Ghost barrier, ghost factors and the pair inequality

## Statement

Let `H` be any raw order-six Hadamard, let `h` be a column, and put
`ρ=−2±sqrt3`, so that `ρ+ρ⁻¹=−4`. Write `v^(i)` for `h` with its `i`th entry
multiplied by `ρ`.

(a) **Ghost barrier.** In the complexified Laurent equations, where the
conjugate of a coordinate is represented by its reciprocal, each `v^(i)`
satisfies every common-unbiasedness equation identically. For `i≠j`, the pair
satisfies `Σ_r v^(i)_r/v^(j)_r = 4+ρ+ρ⁻¹ = 0`. Every carrier therefore has
**six pairwise formally orthogonal ghost rays**. No nonzero seed polynomial
is an equality-only consequence of the unsaturated ray equations, at any
degree ([PROOF.md](PROOF.md) §2).

(b) **Physical-preserving ghost factors.** For a raw ray `v` with
`w=H†v/sqrt6`, the 36 quadratics

    D_ij = 18 v_i w_j + sqrt6 (H_ij w_j² + H_ij⁻¹ v_i²)

satisfy `|D_ij/(v_iw_j)| ≥ 18−2sqrt6 > 0` on every physical common ray, and
`D_ij=0` at the ghost obtained from coordinate `i` of column `j`. Imposing
`D_ij≠0` removes every standard ghost and no physical ray (§3).

(c) **Pair inequality.** Take three rays in mixed coordinates
`x_j=(1,s_j,t_j)` with `|s_j|=1`. Then `Σ_(i<j)|s_i+s_j|²=3+|s_1+s_2+s_3|²≥3`,
so some pair has `|s_i+s_j|≥1`. Every orthogonal common-ray triple therefore
supplies a solution of the pair system: two common-ray systems, `O_12=0` and
`u(s_1+s_2)=1`, with 10 phases and 12 real equations. The converse is not
claimed (§1).

## Status

**Proved.** (a) and (b) are exact identities valid for every Hadamard, and
(c) is elementary. Together they are a barrier and a tool. They do not give
an exclusion or a seed-only relation. [BARRIERS.md](../../BARRIERS.md) cites
(a) as the reason equality-only elimination fails.

## Dependencies

(a) and (b) have none. (c) has none as an inequality. The pair system is
written in the strict `a=−1` measurement equations of
[FIXED_OBSERVABLE.md](../FourPlusOne/FIXED_OBSERVABLE.md), which inherit the
reconstruction's accepted side-formula input.

## Omitted (conditional)

- The archived §1 subsection claims that the linear guard removes the
  automatic Karlsson antiunitary-partner component. It relies on Karlsson's
  fixed-block reduction (arXiv:1003.4133 Thm 4 and arXiv:1003.4177 Props 4
  and 7) and on an archived fixed-X distinctness proof.
- The archived §4 lower bound, total degree ≥29 for any global seed
  restriction, depends on compatible surfaces and curves that were obtained
  with an accepted external third-basis/Karlsson input.

Both remain in `KarlssonAndMeasurements/Karlsson/LowDegreeElimination.md` in
the 22-September snapshot. Neither is used here.

## Provenance

The sources are `KarlssonAndMeasurements/Karlsson/LowDegreeElimination.md`
and `low_degree_identities/{verify.py, pair_system.py}`, dated 21 September
2026. The degree search and the antiunitary regression were removed from the
verifier. The imports now use `../FourPlusOne/strict_a1_system.py` and
`../../../MinimalConstruction/Implementation/model.py`, and the verifier
prints its receipt instead of writing it.

## Files and verification

| File | Role |
|---|---|
| [PROOF.md](PROOF.md) | Statements and proofs (a)–(c) |
| `pair_system.py` | The necessary pair system, plus `quadratic_ghost_factors(H,v,w)` |
| `verify.py` | Exact ghost and pair identities, and an 80-digit regression of 96 ghost triples against the current 21 equations on both sheets |

    python3 verify.py      # about 2 s
