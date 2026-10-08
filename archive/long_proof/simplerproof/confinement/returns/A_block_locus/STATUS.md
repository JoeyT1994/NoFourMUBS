# Status of the confinement handoff

## The requested unrestricted theorem

**Not proved.** This output does not establish that every order-six
Hadamard with \(M<26\) has \(\nu\le0.55\). No counterexample has been
established either. The claimed final step of the no-four-MUB argument
therefore remains open.

The precise remaining case is an ambient local minimum satisfying
\(0<M<26\), \(\nu>0.55\), and containing no order-three Hadamard
submatrix. The supplied F4 and the topology proof justify this reduction.

## What is fully proved

1. **Sharp confinement on the full three-by-three Hadamard-block locus.**
   If any corner is an order-three Hadamard and \(M\le m<108\), then
   \[
   \nu\le\sqrt{2/3}\arcsin(\sqrt m/12),\qquad
   d_F\le\sin\bigl(\arcsin(\sqrt m/12)/6\bigr).
   \]
   At \(M<26\), these give \(\nu<0.358338\), \(d_F<0.073081\).
   The constants in the exact formulas at 26 are optimal on this locus. All affine Fourier
   parameters, their transposes and equivalences, and all finite
   exceptional branches are covered.

2. **A global descent theorem on that structural locus.** No point with
   \(0<M<243\) and an order-three Hadamard submatrix is a local minimum
   of \(M\) on the ambient Hadamard set.

3. **A stronger gauge conversion for all unit-entry matrices.**
   \[
   d_F\le r\le0.1\quad\Longrightarrow\quad
   \nu\le6\sqrt{\tfrac56(1-\sqrt{1-\tfrac{12}{5}r^2})}.
   \]
   This proves \(d_F\le0.0914\Rightarrow\nu<0.55\). The exact
   sufficient radius for the non-strict conclusion is
   \(\sqrt{2889359/345600000}\).

4. **The topology required for the proposed reduction.** The horizontal
   phase infimum is finite and attained; \(\nu\) is continuous, with a
   \((\pi/2)\)-Lipschitz bound in the raw Frobenius metric. Minimizing
   \(M\) on \(\{\nu\ge0.55\}\), and using supplied F4 on its boundary,
   rigorously proves the local-minimum reformulation.

5. **General exact identities.** These include the permanent-square
   sum 72 for every row triple, complementary determinant/permanent
   balance, a 24-term imaginary Laurent representation, fourth subset
   moments, row-pair aggregation through fourth column moments,
   a compact cubic tensor formula for the sum of all q values, and
   an unconditional corner determinant lower bound 27/2.

6. **A precise nonsmooth descent test.** In a differentiable
   four-parameter feasible family, zero must lie in the convex hull
   of at most five active corner gradients at an ambient local minimum.
   The notes give a valid interval-box rejection criterion.

The handwritten proofs are part of the certificate: the scripts replay
the indicated coefficient expansions, arithmetic, and finite cases,
rather than serving as a formal proof assistant for the whole analysis.

## What rests on certified finite computation

- The 400 Fourier corner formulas are verified as Laurent-polynomial
  identities with exact integer coefficients.
- The phase-lattice equivalences are checked in all 36 residue classes;
  the horizontal norm and all six hexagon vertices are checked exactly.
- The exceptional Fourier-block reduction exhausts all 81 cube-root
  parameter quadruples. Every flat matrix has all 400 corner invariants
  evaluated in exact rational Eisenstein arithmetic. The 18 nonpure flat
  branches all have \(M=243\).
- The general Laurent coefficients and finite combinatorial moment
  multiplicities are checked by integer arithmetic.
- The gauge cutoff is a rational comparison. Reported gauge decimals
  are enclosed by Arb; affine-radius decimals use rational alternating
  Taylor bounds.
- One above-cutoff chart seed is evaluated exactly for the scoped input
  audit. It is not used to discard any target-domain point.

There is **no** certified global seed cover, no certified classification
of all local minima, and no proof that all low-M Hadamards enter the
structural locus.

## What is numerical evidence only

- The supplied self-test prints `SELFTEST PASS`; it remains a
  floating-point check.
- The 183 completed minimax-descent runs produce 80 near-zero stopping
  points, and positive stopping values near 205.421319,243,250.739728,
  256, and260.616435. No positive stopping value below 26 appears.
- These are stopping classes of an exploratory algorithm, not proved
  local minima or an exhaustive classification.
- All 80 near-zero stops have very small numerical Fourier alignments.
  A numerical alignment above a threshold would provide no lower
  bound on the true infimum \(\nu\).
- Additional exploration suggested a stronger complementary sign
  identity for q. It was not proved and is not used.

None of this numerical evidence enters any of the proved conclusions.

## What would close the gap

One still needs an exhaustive exclusion of distant low local minima,
or another genuinely global quantitative argument. The exact identities
currently leave the distribution and coupled phases of the tensor
moments uncontrolled. In particular, no bound has been obtained on

\[
\Delta_3(H)=27-\max_c|\det H_c|^2
\]

from \(M(H)\). An approximate-block route would also require a
quantitative stability theorem, since the block classification in this
output assumes an exact order-three Hadamard submatrix.

The delivered proofs, scripts, and numerical records are complete for
the partial statements above. `verify_all.py` explicitly reports that
the unrestricted theorem remains open even when all replays pass.
