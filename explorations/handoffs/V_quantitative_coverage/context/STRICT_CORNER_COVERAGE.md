# Global strict-corner coverage

**Theorem (MC1).** Every order-six complex Hadamard not equivalent to F6
has a dephased positional 3 by 3 corner with the reconstruction's R>0.
Tao is included. Equivalently, the locus on which all 400 positional
corner discriminants vanish is exactly the equivalence class of F6.

This proves the statement used in ASSUMPTIONS.md without weakening its
quantifiers. It does not assert that every corner is strict. The argument
uses exact identities and the proved ClassificationPaper imports in
FOURIER_ROUTING.md; no sampled evidence or historical global claim is
an input.

> **Note (18 Oct 2026).** The ClassificationPaper imports of `FOURIER_ROUTING.md` are no longer needed: `PRM.md` §7.1
> (return G) proves the same routing directly, and the current proof (`PROOF.md` Theorem 2.5) uses that. The nonzero-J
> strips are now proved by return K's signed corner sums, and the two rational endpoints are excluded by the ten-corner
> count of return S (ENDPOINT_COUNTING.md) instead of the two former endpoint-exclusion proofs.

## Proof

For any physical corner E and its same-row complementary phase block B,
the universal identities checked in `verify_invariants.py` give

    R(E)=4(Im[perm(B)det(B)²/prod(B)])²>=0.              (1)

The identity is valid even when B is singular: after clearing the
nonzero phase monomial it is a Laurent-polynomial identity. Thus it
suffices to show that a carrier with all corner R=0 is equivalent to F6.

Suppose H is all-critical and is not equivalent to F6. By
FOURIER_ROUTING.md, a singular 3 by 3 minor would put H in the
Fourier family or its transpose. FOURIER_CRITICAL_LOCUS.md would then
force equivalence to F6, a contradiction. Therefore all 400 minors
are invertible. The same two results rule out a complete row triple
that can be phased into (1;x;conjugate(x)).

Apply CRITICAL_STRIP_CLASSIFICATION.md to any three rows of H. For
each of their twenty three-column corners, its theorem now says:

* if J=0, then p is 0 or 5;
* if J!=0, its data are one of the three listed exceptional scalar cases:
  the single value

      p_star=9-4/(1+kappa²),
      3 kappa³+kappa²+kappa-1=0, kappa>0,                (2)

  or one of the two rational endpoints (p=27/5 equicorrelated, p=7).

(Return K, `proof/coverage/returns/K_nonzero_J/REPORT.md`, gives a shorter proof of the nonzero-J classification by two
signed corner sums; the Lean proof uses it.) ENDPOINT_COUNTING.md (return S) shows that the ten corners containing one
column cannot all be of these types: the anchored sum rule Σp=54 leaves no corner at p_star (p_star lies in
(5.722, 5.723), or use that it is irrational), the vertex sums of the signed J make both endpoint counts even, and the
two remaining count patterns contradict the fourth moment ΣX²≥54 or the vertex sums. No such H exists.

Conversely F6 is among the twelve zero-maximum Fourier representatives
in FOURIER_CRITICAL_LOCUS.md, so every corner has R=0. This property
is invariant under Hadamard equivalence. Together with (1), the
contradiction proves the theorem. ∎

## Dependency and verification scope

The proof chain is:

1. Universal actual-phase-block identities (SIDE_FIBER.md §1 and
   the invariant verifier), without a strictness assumption.
2. Complementary critical equations and the fixed-row sum 108.
3. Exact whole-strip square-sum identities; scalar Bernstein/Sturm
   classification; explicit coverage of moment-denominator poles.
4. Singular-minor and geometric-row Fourier routing, followed by the
   exact Fourier-family critical-locus census.
5. The anchored ten-corner count of ENDPOINT_COUNTING.md, which also
   excludes both rational endpoints.

`verify_strict_corner_coverage.py` checks the remaining algebraic
bookkeeping; `verify_endpoint_counting.py` the count. `verify_dossier.py` replays all prerequisite local verifiers
and records their source hashes. The analytic arguments above and in
the dependency proofs are part of the certificate; the receipt is not
a claim that a proof assistant has formalized the prose.
