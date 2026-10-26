# Strict-corner coverage on the full Fourier family

**Proved subcase of MC1.** Let omega=exp(2 pi i/3), let
F=(omega^(ij)) for 0<=i,j<=2, and put

    N(z,w) = [[F,F],[F diag(1,z,w),-F diag(1,z,w)]],
    z=exp(i alpha), w=exp(i beta).

Every such N is a phase Hadamard: the two block rows each have Gram
6I, and their cross Gram cancels. The theorem below also applies to
N transposed and to all monomially equivalent representatives.

Put X=2 beta-alpha, Y=alpha+beta, T=beta-2 alpha=X-Y. Then the
maximum of the reconstruction discriminant over all positional corners is

    max_corner R = 36 (|sin X|+|sin Y|+|sin T|)².        (1)

It vanishes precisely at twelve parameter pairs modulo 2 pi:

    alpha=a pi/3, beta=b pi/3,
    0<=a,b<6 integers, a+b divisible by 3.              (2)

Each of these twelve matrices is equivalent to F6. Consequently any
matrix in this family or its transpose, unless equivalent to F6,
has a strict positional corner.

## Exact finite proof

The 400-corner multiset consists of 256 zeros and, for each of the
four choices s,t in {-1,1}, 36 copies of

    36 (sin X+s sin Y+t sin T)².                        (3)

`verify_fourier_critical.py` checks this identity over the Laurent ring
Z[zeta6][z,z^-1,w,w^-1], with zeta6²=zeta6-1. It generates the
generic reconstruction polynomial from its definition, dephases each
of the twenty row triples and twenty column triples, and substitutes
the exact Laurent monomials of N. Independently it computes the
negative square of the complementary phase-block signed determinant.
The two computations agree at every corner. Finally it compares the
entire multiset with (3) by exact coefficient comparison.

All four signs together with the irrelevant overall sign exhaust the
eight signed sums of the three sines. Their largest absolute value
is their sum of absolute values, proving (1). The census also gives

    sum_corner R = 5184(sin² X+sin² Y+sin² T).          (4)

The right side of (1) is zero exactly when X and Y are integer
multiples m pi and n pi. Solving the two linear equations gives

    alpha=(2n-m) pi/3, beta=(m+n) pi/3,

which is exactly (2). For every pair in (2), the verifier finds and
checks two permutations r,c of {0,...,5} for which

    N_ij = zeta6^(r_i c_j).

These twelve equivalence witnesses are included in the receipt. They
are checked entry by entry in exact modular arithmetic.

Finally, dephasing, row and column phase multiplication, and row and
column permutations preserve the multiset of corner discriminants.
For row phases this follows directly from invariance of p,J,W;
column phases cancel in the corner Gram matrix. Transposition
preserves R by the universal identity checked in `verify_invariants.py`.
The conclusion therefore holds on all the stated equivalence classes.

## Provenance and remaining scope

This proof recovers the exact census from
`ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_MAX_R.md`.
Its verifier is now self-contained in this folder: its source header
records the hashes of the three files from which its routines were
adapted. It makes no runtime imports from those modules and accepts
none of their assertions as additional axioms.

*(Written before MC1 was proved; it is now proved in `STRICT_CORNER_COVERAGE.md`.)* The remaining MC1 problem is to prove that every all-critical carrier
belongs to these equivalence classes. The Fourier-family result does
not establish that reduction for the rest of the Karlsson sector or
for carriers outside it.
