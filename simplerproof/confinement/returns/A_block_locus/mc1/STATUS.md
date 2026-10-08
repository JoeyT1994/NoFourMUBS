# Status: quantitative MC1 contribution

## Fully proved by exact algebra and finite combinatorics

- The imaginary part of `perm(B) det(B)^2/prod(B)` uses exactly 24 Laurent monomials, obtained from a 55-term full expansion.
- Universal determinant/permanent Gram identities for every 3 by 3 unit-entry matrix.
- The permanent-square sum 72 for each row triple of an order-six Hadamard.
- Exact fourth subset moments for centered unit vectors, including orthogonal row ratios.
- A formula for each row-pair aggregate of `Im q` through fourth column moments, giving 300 exact necessary inequalities when `M<26`.
- The determinant fourth-moment identity (6.2), implying an unconditional corner with squared determinant at least 27/2.
- The tensor normalization (5.1) and global complex identity `sum q=8640+sum T_{i;jk} T_{j;ik} T_{k;ij}`.

The proofs are in `GENERAL_IDENTITIES.md`. Their coefficient and multiplicity checks are in `verify_general_identities.py`, which runs with standard-library Python only and passes using integer arithmetic.

## Certified finite computation

Only the exact coefficient and combinatorial verifications above are used. No interval cover, interval reconstruction, or certified global optimization was obtained.

## Numerical evidence only

Exploration suggested the stronger complementary identity `q(H[S^c,T^c])=conj(q(H[S,T]))`. No proof was completed, and no result in this contribution uses it. This observation is recorded here only to prevent an unproved sign identity from entering the proof chain.

## Remaining gap

No quantitative estimate was established that converts small values of all corner invariants into a bound on distance from the Fourier orbit. The identities preserve coupled phases and allow cancellations in aggregate constraints. Consequently this contribution does not prove the requested global cutoff 26, any replacement explicit cutoff, or the absence of a distant low-M component.
