# Exceptional endpoint: Tao

| Result | Statement | Scope and status | File |
|---|---|---|---|
| Tao exclusion | The standard basis and Tao's matrix S_6^(0) have exactly 90 common-unbiased unit vectors (up to phase), and no two are orthogonal. So {I, S_6^(0)} is in no MUB triple, and Tao is never a transition of a MUB triangle or quartet | Exact certificate. **Conditional on one frozen external elimination** (msolve output `tao_elimination_z1.out`), which is not replayed here. Its polynomial was re-derived by a second, independent CAS (Singular). This agrees with Brierley-Weigert | [TaoExclusion.md](TaoExclusion.md) |

## Files

- `tao_full_torus_system.py`: generates the exact torus system that was eliminated.
- `tao_elimination_z1.out`: the frozen msolve elimination result.
- `tao_automorphism_certificate.py`: the A6 coordinate action, used to transfer p(z1)=0 to every coordinate.
- `tao_exact_enumerator.py`: exact enumeration of the 9^5 alphabet candidates over Q(omega,eta).
- `singular_rederivation/`: Singular 4.4.1 scripts and outputs that re-derive the elimination polynomial. They are not run by `verify.py`.
- `verify.py`: replays everything except the elimination, in about 50 s. It prints one PASS line per sub-check and exits nonzero on failure.

## Verification

    python3 verify.py
