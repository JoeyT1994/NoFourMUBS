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
> strips are now proved by return K's signed corner sums.

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
* if J!=0, its data are one of the three listed exceptional scalar cases.

CRITICAL_P7_EXCLUSION.md and CRITICAL_EQUI_CORRELATION_EXCLUSION.md
exclude the two rational exceptional cases from an all-critical strip.
(Return K, `proof/coverage/returns/K_nonzero_J/REPORT.md`, gives a shorter proof of the nonzero-J classification by two
signed corner sums; the Lean proof uses it.) Every remaining nonzero-J corner consequently has the single value

    p_star=9-4/(1+kappa²),
    3 kappa³+kappa²+kappa-1=0, kappa>0.                (2)

This number is irrational. The displayed cubic is irreducible over Q:
its possible rational roots ±1 and ±1/3 are not roots. Hence kappa
has degree three over Q. If p_star were rational, (2) would make
kappa² rational, giving kappa degree at most two, a contradiction.

Let n0,n5,nstar count the three possible p values on this row triple.
The exact fixed-row sum rule in CRITICAL_CORNER_REDUCTION.md gives

    n0+n5+nstar=20,       5 n5+p_star nstar=108.         (3)

If nstar were nonzero, (3) would express p_star as a rational number.
Thus nstar=0. But then 5 n5<=100, contradicting (3). No such H exists.

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
4. The two separately proved endpoint exclusions.
5. Singular-minor and geometric-row Fourier routing, followed by the
   exact Fourier-family critical-locus census.
6. The irrationality and integer-count contradiction (2)–(3).

`verify_strict_corner_coverage.py` checks the remaining algebraic
bookkeeping. `verify_dossier.py` replays all prerequisite local verifiers
and records their source hashes. The analytic arguments above and in
the dependency proofs are part of the certificate; the receipt is not
a claim that a proof assistant has formalized the prose.
