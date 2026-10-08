# Status: q-zero exceptional-stratum theorem

## Proved

For every dephased unimodular 3x3 seed with
`Im(s r conj(t)) != 0` and `Im q(E)=0`, every positive stationary value of its defining corner invariant `R(E)` is strictly greater than 30.

The proof covers the whole q-zero stratum with nonreal Gram product, including rank-two seed-to-invariant maps. The key rank drops are handled by an adjugate identity and a Hessian-nullspace argument, not by assuming regularity.

For a valid smooth Hadamard corner chart, this excludes a local minimum below 26 having one active corner class in this stratum.

## Exact finite certificates

`verify_qzero.py` uses exact SymPy polynomial arithmetic, Sturm root counts, and rational interval bounds. All eliminations and root counts replay successfully. The Jacobian and square identities it uses are separately certified by `../global/verify_critical_invariants.py`.

## Numerical evidence

No numerical evidence is needed for this theorem. Decimal approximations obtained while finding the candidate polynomials were not used to decide any final inequality.

## Scope and remaining gaps

This module does not itself treat the intersection where both `Im q(E)=0` and `Im(s r conj(t))=0`; the companion `../global/CAYLEY_SMOOTH.md` and `../critical/DOUBLE_ZERO.md` close that intersection. The complete one-partition result is assembled in `../critical/ONE_PARTITION.md`. Convex balances involving active corners across several partitions remain unresolved, so the package does not complete global confinement.
