# Status of this return

## Decisive outcome

T1 and T2 are false. This return gives an exact counterexample, a complete
one-parameter circle of counterexamples to T1, and coordinate proofs with
explicit uniform margins. It does not claim an exhaustive description of
the full triple-edge set.

## Proved mathematical statements

1. Triple-edge existence, common-ray counts and third-basis counts are
   invariant under Hadamard equivalence, entrywise conjugation and
   transposition.
2. The fourth-root matrix H0 in TRIPLES.md admits the explicit radical
   companion K0. It is outside every Fourier member and its transpose.
3. H0 has 80 strict corners, all with R=256 and all off both omega
   equations. Its other 320 corners have R=0. This refutes the “some
   strict corner,” “every strict corner,” and maximal-corner repairs of T2.
4. Every matrix H(x) on the whole displayed Zauner circle has a companion
   K(x) given by explicit trigonometric and radical formulas. The
   radicands are bounded below by 5.
5. Two explicitly specified corners of H(x) have R=256 cos^6(3x)
   and R=256 sin^6(3x). At least one has R>=32, and both have
   residual |V-zeta U| at least 3-sqrt(5) for either omega equation.
   Every H(x) is outside both Fourier families, without exceptions.
6. On either omega locus, R=36(Im U^3)^2.
7. The full omega seed locus is exactly the union of the twelve tori
   listed in TRIPLES.md, equivalently the corners with an orthogonal row
   pair or column pair.
8. Every strict corner of every Fourier member and transpose is on this
   locus. Generically there are 144 strict corners; an exact simultaneous
   witness proves the needed nonzero-polynomial assertions.
9. The seed (omega^2,omega,i,i) is on the omega locus with R=144.
   Its positive horizontal reconstruction forces another strict corner
   off the locus. Thus its positive-sheet image is outside both Fourier
   families. A standalone exact physical completion with this top strip
   is specified by a cubic and certified algebraically. The exact vertical
   side identification proves it is the actual positive-sheet matrix,
   up to a permutation of lower rows, with no external existence premise.
   See OMEGA_COMPLETION.md.
10. Every prescribed common unbiased ray for a Fourier-family member
    extends by an explicit formula to a full third basis.
11. Every Fourier parameter is a triple edge, by statement 10 and the
    external common-ray existence theorem of Idel and Wolf.
12. For a Fourier member with finitely many common rays, their number N
    is a multiple of six and they partition into N/6 canonical bases.
    If N=48, this gives eight canonical bases, without excluding
    additional mixed-orbit bases.
13. Every order-six Hadamard admitting four circulant 3-by-3 blocks is a
    triple edge. The proof includes modes in which a coefficient vanishes.

The Zauner construction and the prescribed-ray completion mechanism have
prior literature, identified in TRIPLES.md. This report rederives their
relevant identities and supplies exact checks; it does not claim priority
for those constructions.

## Exact computational verification

All theorem acceptance decisions in the scripts are exact:

| File | Exact checks |
|---|---|
| verify_dita.py | H0 and K0 flatness, both Gram matrices, all 36 unbiasedness equations, full Haagerup set |
| verify_dita_corners.py | All 400 corners, exact histogram, both omega equations, explicit maximal witness |
| verify_zauner_family.py | Laurent Hadamard identities for all parameters, full Laurent Haagerup set, both seed curves, both R identities, Fourier-mode companion algebra and denominator bound |
| verify_fourier_completion.py | Parameter-symbolic Gram and flatness identities, clock and antiunitary action, anchor permutations |
| verify_fourier_direct.py | Independent direct-orientation completion of a prescribed ray, reproducing H0 exactly |
| verify_fourier_corner_count.py | A rational-phase Fourier member with all 144 potential corners strictly positive |
| verify_omega.py | Omega identity, all twelve seed branches, Fourier corner cases, positive side reconstruction, cubic unit-root discriminant, denominator inverses, flatness and complete Hadamard Gram, exact off-locus gaps |
| verify_positive_vertical.py | Exact identification of the cubic lower rows with the prescribed vertical side, including square-root orientation, positivity and cube-root conditions |

The rational field implementation in exact_field.py represents
Q(sqrt(2),sqrt(3),sqrt(5),i). The sixteen basis monomials are independent
because the square classes of 2,3,5,-1 are independent. The symbolic
checks use SymPy's exact rational/algebraic fields and polynomial
division, not approximate simplification thresholds.

The unit-root assertion for the cubic has an analytic proof from its
strictly negative normalized discriminant. No numerical root is accepted
as exact. All scripts raise an exception on failure and work with Python
optimization enabled.

See VERIFICATION.txt for the completed replay. The mathematical external
input in statement 11 is cited and is not advertised as a computational
certificate supplied by this return.

## Exploratory numerical observations

The handoff's least-squares probes are numerical evidence only.
A separate bounded exploratory probe of the omega-seed reconstruction
found 48 rays and no third basis. That search was not exhaustive and
is not used to prove nonexistence or any counting theorem. Its temporary
arrays are not necessary for, and are not included in, the exact package.

No result in this return is accepted from a residual tolerance,
floating point orthogonality graph, fitted identity, or sampled root list.

## Not established

- An exhaustive classification of all triple edges.
- A closed-form enumeration of every common ray for arbitrary Fourier
  parameters.
- A parameter-uniform proof that the common-ray count is 48.
- A proof that generic Fourier members have exactly eight third bases in
  total, including exclusion of mixed-orbit bases.
- A complete analysis of all ray-count and basis-count degenerations.
- Nonexistence of a third basis for the particular non-Fourier
  positive omega completion.
- Exhaustion of all completions arising on the entire omega seed locus.
- A uniform tube theorem or a certified outer cover for an enlarged
  candidate triple-edge set.

T3's statement about a “generic non-member” is not logically refuted merely
by a lower-dimensional family of non-Fourier triple edges. Its precise
genericity and counting claims remain unproved here. The false claim is
that the two Fourier families exhaust triple edges.

The global no-four-MUB proof claimed in the input is not a premise of this
return and has not been replayed by these verifiers.
