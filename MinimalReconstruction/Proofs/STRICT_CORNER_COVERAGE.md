# Global strict-corner coverage

**Theorem (SM Proposition S.5, Vanishing of R at every corner).** Every
order-six complex Hadamard not equivalent to F₆ has a dephased positional
3 by 3 corner with the reconstruction's R>0. Tao's matrix is included.
Equivalently, the locus on which R vanishes at all 400 positional corners
is exactly the equivalence class of F₆.

This is `PROOF.md` Theorem 2.5. It does not assert that every corner is strict. The argument uses exact identities,
the Fourier routing of the proof of the nonmatched converse ([`../returns/G_prm/PRM.md`](../returns/G_prm/PRM.md) §7.1),
the signed corner sums for the case J ≠ 0 ([`../returns/K_nonzero_J/`](../returns/K_nonzero_J/REPORT.md)) and the
ten-corner count ([ENDPOINT_COUNTING.md](ENDPOINT_COUNTING.md)). It uses no classification input and no sampled
evidence.

## Proof

For any physical corner E and its same-row complementary block B,
the universal identities checked in `verify_invariants.py` give

    R(E)=4(Im Ψ(B))²>=0,  Ψ(B)=perm(B)det(B)²/prod(B).    (1)

The identity is valid even when B is singular: after clearing the
nonzero phase monomial it is a Laurent-polynomial identity. Thus it
suffices to show that a Hadamard matrix with R=0 at every corner is
equivalent to F₆.

Suppose H has R=0 at every corner and is not equivalent to F₆. By
PRM.md §7.1, a singular 3 by 3 minor would put H in the
Fourier family or its transpose. FOURIER_CRITICAL_LOCUS.md would then
force equivalence to F₆, a contradiction. Therefore all 400 minors
are invertible. The same two results rule out three complete rows in
the conjugate row form (1;x;conjugate(x)).

Apply CRITICAL_STRIP_CLASSIFICATION.md to any three complete rows of H. For
each of their twenty three-column corners, its theorem now says:

* if J=0, then p is 0 or 5,
* if J!=0, its data are one of the three listed exceptional scalar cases:
  the single value

      p_*=9-4/(1+k²),
      3k³+k²+k-1=0, k>0,                                 (2)

  or one of the two rational cases (p=27/5 equicorrelated, p=7).

(The signed corner sums in [`../returns/K_nonzero_J/`](../returns/K_nonzero_J/REPORT.md) give a shorter proof of the
classification in the case J ≠ 0, and the Lean proof uses them.) The ten-corner count of
[ENDPOINT_COUNTING.md](ENDPOINT_COUNTING.md) shows that the ten corners containing one column cannot all be of these
types: the anchored sum rule Σp=54 leaves no corner at `p_*` (`p_*` lies in (5.722, 5.723), or use that it is
irrational), the vertex sums of the signed J make the counts of both rational cases even, and the two remaining count
patterns contradict the fourth moment ΣX²≥54 or the vertex sums. No such H exists.

Conversely F₆ is among the twelve zero-maximum Fourier representatives
in FOURIER_CRITICAL_LOCUS.md, so every corner has R=0. This property
is invariant under Hadamard equivalence. Together with (1), the
contradiction proves the theorem. ∎

## Dependency and verification scope

The proof chain is:

1. Universal identities on actual blocks with unit-modulus entries
   (SIDE_FIBER.md §1 and the invariant verifier), without a strictness
   assumption.
2. The complementary equations R=0 and the fixed-row sum 108.
3. Exact square-sum identities on three complete rows, the scalar
   Bernstein/Sturm classification, and explicit coverage of
   moment-denominator poles.
4. Fourier routing of singular minors and of the conjugate row form,
   followed by the exact census of the Fourier-family corners with R=0.
5. The anchored ten-corner count of ENDPOINT_COUNTING.md, which also
   excludes both rational cases.

`verify_strict_corner_coverage.py` checks the remaining algebraic
bookkeeping, and `verify_endpoint_counting.py` the count. `verify_dossier.py` replays all prerequisite local verifiers
and records their source hashes. The analytic arguments above and in
the dependency proofs are part of the certificate. The receipt is not
a claim that a proof assistant has formalized the prose.
