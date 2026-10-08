# Status: global confinement is not proved

## Requested result and remaining gap

The requested theorem is

\[
M(H)<26\quad\Longrightarrow\quad\nu(H)\le0.55
\]

for every order-six complex Hadamard matrix. **This package does not prove
that theorem.** It finds no counterexample. It does not complete the proposed
consequence about four mutually unbiased bases.

The sharpest global critical-point result is this: under the stated
target-region reconstruction input, no local minimum with \(0<M<26\)
can have its **entire active corner set contained in one \(3+3\)
partition**. All regular and singular cases within that statement are
covered. The remaining obstruction is a possible convex balance of
active-corner gradients when the full active set spans different partitions.

Cross-partition ties really do occur in the target sublevel. An exact
Fourier-family example has 72 maximizing corners across 18 partitions and
has common descent. Thus a correct completion needs control of the
gradients, not an assumption that low-valued maxima have few ties.

## 1. Fully proved mathematical statements

The proofs are in `CONFINEMENT.md` and the detailed companion notes.
Where a statement uses an exact finite polynomial computation, its certificate
is listed separately in Section 2. Supplied theorems remain the inputs
identified in Section 3.

### Explicit confinement on a global subregion

- Across the **entire** two-parameter Fourier family, its transpose, and
  their equivalents, \(M<144\) implies
  \(\nu\le\sqrt{2/3}\arcsin(\sqrt M/12)\). For \(M<26\),
  this gives \(\nu<0.358338\) and \(d_F<0.073081\).
- The phase-distance bound is sharp at every level \(0\le m\le26\),
  using the true infimum over all Fourier equivalents. Every local minimum
  on either complete family torus is Fourier-equivalent.
- Every Hadamard in the uniform horizontal-phase tube of radius \(1/40\)
  around those full families satisfies
  \(M<26\Rightarrow\nu<0.548503<0.55\). With F4 this improves
  to \(\nu\le0.451\).
- A new elementary gauge proves
  \(d_F\le0.09141\Rightarrow\nu<0.549999\). It validates
  the handoff's intended radius \(0.0914\), whose justification did
  not follow from the original rounded F3 bound.

### Global critical-point reductions

- The horizontal phase infimum is finite, attained, and continuous.
  Minimizing on the compact set \(\{\nu\ge0.55\}\), using F4,
  rigorously establishes the handoff's local-minimum reformulation.
- The reconstruction formulas admit actual local analytic four-seed
  families at the positive maximal seeds needed in the target region,
  conditional on the restricted F7 input. Explicit lower bounds control
  their denominators; auxiliary root sign changes are complementary
  permutations.
- Every physical maximal seed with \(0<R=M<26\) has a nonzero
  gradient in its four seed phases. This includes regular invariants,
  zero chirality, a vanishing complementary invariant, and both
  transverse and nontransverse intersections of those singular loci.
- If both complementary corner functions are active and the Gram
  coordinates are regular, every first-order convex balance has value
  at least
  \((233472\sqrt6-488448)/3125>26\). Zero-chirality ties below
  26 are also excluded. This yields the full one-partition theorem.
- Every exterior counterexample would therefore yield a local minimum
  with \(0<M<26\), \(\nu>0.55\), \(d_F>0.09141\),
  distance more than \(1/40\) from the Fourier families, and an active
  set spanning several partitions. In a valid four-seed provider, zero
  must be a convex combination of at most five active gradients.

### Quantitative identities valid for every Hadamard

- Same-row complementary minors obey exact determinant/permanent
  identities; their determinant squares differ by at most a factor two.
- Every row triple has a maximum-volume split with determinant square
  at least \(54/5\), and both blocks have explicit least-singular-value
  lower bounds.
- Under \(M<26\), that selected minor has
  \(\Re q\ge891/50\) and principal argument of magnitude below
  \(1/8\) radian.
- The signed invariant has an exact determinant-only form, an exact
  row-triple contraction identity, and an exact twelve-contraction
  formula for the sum of all 400 \(R\) values.

These identities do not yet bound the distance of all 36 entries from
a compatible Fourier representative. The needed phase-propagation or
coercive inequality has not been proved.

## 2. What rests on exact finite computation

Fourteen executable certificates are included. They use integer/rational
arithmetic, exact polynomial algebra, exact ordered quadratic fields,
Sturm root counts, or rational interval evaluation. **No floating-point
comparison decides a proof claim.**

| Certificate | What it checks |
|---|---|
| `fourier/verify_fourier.py` | All 400 Fourier-family defining invariants, multiplicities, actual equivalence permutations, horizontal and integer-lattice identities, and rational numerical caps. |
| `global/verify_tube.py` | All signed-invariant coefficients, exact exponent covariance, derivative constants, and the rational tube bound. |
| `global/verify_critical_invariants.py` | Regular stationary classification, the seed Jacobian identity, and the universal reflected square identity. |
| `global/verify_cayley_smooth.py` | Smooth Cayley factorization, coordinate changes, critical resultants, all exceptional factors, exact root counts, and rational critical-value readouts. |
| `critical/verify_gauge.py` | The improved gauge radii and exact audit of the original F3 threshold. |
| `critical/verify_chart.py` | Reconstruction denominator identities, side identities, determinant and branch-permutation algebra. |
| `critical/verify_chirality.py` | The six-phase Gram Jacobian, complete zero-chirality single-critical equations, and the complementary-value exclusion. |
| `critical/verify_chirality_pair.py` | Zero-chirality complementary-pair elimination and exact signs of the critical-value polynomials on the target interval. |
| `critical/verify_double_zero.py` | Real-seed enumeration, double-Cayley branches, Hessian coefficients, critical resultant and its uniform sign. |
| `critical_exceptions/verify_qzero.py` | Smooth and singular q-zero elimination, Hessian congruences, Sturm counts, and exact value enclosures. |
| `mc1/verify_minor_identities.py` | Universal minor identities, Hadamard specializations and exact constants for the global phase bounds. |
| `mc1/verify_global_contractions.py` | The complete integer coefficient reduction of the full sum of squares to twelve contractions. |
| `mc1/complement_minimax/verify_complement_minimax.py` | Every regular complementary-pair branch and the exact \(\mathbb Q(\sqrt6)\) barrier. |
| `mc1/verify_cross_partition.py` | The exact 72-corner/18-partition low-sublevel example, all four overlap types, and its rational sublevel bound. |

The accompanying human proofs justify why the verified identities exhaust
the stated cases. In particular, root counts and resultants are not used
as substitutes for checking exceptional factors or feasible tangent images.

Run `python3 verify_all.py`. The recorded clean replay is in
`verification.log`. Individual certificates also exit nonzero on failure.
This is a reproducible exact computational proof package, not a formal
proof-assistant development. Independent logical reviews and independent
replays of the delicate rank and singularity arguments are included in
`mc1/REVIEW.md`, `mc1/CRITICAL_LOGIC_REVIEW.md`, and
`exploration_fourier_agent/REVIEW_CRITICAL.md`.

## 3. Assumed supplied theorems and input audit

The full F1–F8 ledger is in Section 7 of `CONFINEMENT.md`.
F1, F2, F4 and the specified part of F7 are used in the global
critical-point reduction; F8 is used for the global minor bounds.
The original proof/certificate of F4 is assumed, not independently
reconstructed. F3's rounded implication is replaced by a new proof.
The local estimates in F5 and the samples in F6 are not proof inputs.

F7's literal statement covering every non-Fourier Hadamard conflicts
with F6's isolated Tao matrix and the rank-four analytic provider.
This inconsistency is recorded, not used to infer a theorem. Only the
stipulated F7 coverage on \(0<M<26\) is assumed here. The local
chart algebra does not itself re-prove that coverage.

## 4. Numerical evidence only

The supplied toolkit self-test was run successfully before the research
and replayed from the bundled inputs during packaging. It is a
floating-point self-test, not an exact certificate. Its recorded replay
is `exploration_fourier_agent/supplied_selftest.log`.

A reproducible 30-start general-Hadamard minimax pilot used analytic
derivatives, tangent linear programs and numerical retraction:

| Numerical endpoint | Number of starts |
|---|---:|
| Near Fourier, computed \(M\le9.05\times10^{-12}\) | 12 |
| Candidate \(M\approx205.421318589\) | 7 |
| Candidate \(M\approx250.739727562\) | 1 |
| Candidate \(M\approx256\) | 3 |
| Candidate \(M\approx243\) with numerical tangent dimension zero | 7 |

Every low-valued endpoint was compared with the 7,200 dephased Fourier
representatives generated by the supplied routine. The largest computed
upper estimate for \(\nu\) was about \(1.74\times10^{-7}\).

These are numerical candidates and computed distances. The run does not
certify their exact criticality, equivalence classes, local minimality,
or isolation. It is not a classification of minima below 26 or below 60.
The additional near-active-pattern analysis uses numerical tolerances;
its near-ties are not certified equalities.

Scripts, seeds, every saved start and endpoint, trajectories, residuals,
stopping reasons and logs are in `exploration_fourier_agent/`.
The numerical scripts are excluded from `verify_all.py`.

## 5. What is still needed

There is no complete elimination of cross-partition convex-gradient
balances, no complete validated seed-box cover, and no quantitative
MC1 estimate strong enough to imply the required distance bound.
The absence of these steps is the reason the requested theorem remains
unproved in this return.

The new exact results narrow a future completion to that coupled active-set
problem, while supplying certified subregions, corrected terminal distance
tests, singular-case exclusions, and explicit globally conditioned minor data.
