# Status of the critical-reduction contribution

## Fully proved elementary statements

* The horizontal phase distance is finite, attained, and continuous. It
  is a finite minimum of distances to a discrete projected integer
  lattice. This validates the exact use of F4 at the infimum radius.
* Assuming F4, global confinement is equivalent to absence of an exterior
  low-valued local minimum. The proof minimizes directly on the compact
  set `nu >= 0.55`, avoiding any manifold or component-boundary assumption.
* A sharper column-alignment gauge proves `d_F <= 0.09141` implies
  `nu < 0.549999`. It repairs the inaccurate numerical implication in F3.
* An actual tangent or feasible arc with strictly decreasing active
  corner invariants excludes a local minimum even at singular Hadamards.
  A kernel vector of the linearized equations alone is insufficient.
* At a candidate local minimum in four valid seed coordinates, at most
  five active corner gradients are needed in a convex combination equal
  to zero. This is a necessary condition, not a solved global eliminant.

## Exact finite symbolic results

* All stated side denominators are nonzero at positive-R provider points.
  The auxiliary square-root sign flip is exactly a complementary column
  or row reflection, and the side determinant is the auxiliary root.
  The formulas therefore admit local analytic branch providers. Applying
  this to every matrix in `0 < M < 26` uses the restricted F7 coverage
  input. Literal global F7 coverage is inconsistent with Tao's isolation;
  the contradiction is recorded rather than used.
* The full six-phase Gram Jacobian is `Im(q(E))/4`. Hence complementary
  invariant positivity makes all zero-chirality rank-three assertions
  automatic, with no unexamined rank-drop locus.
* On zero chirality, every stationary maximal-corner seed with nonzero
  `Im(q(E))` is excluded when `0 < M < 26`. The sole small positive
  algebraic critical value forces a complementary invariant above 26.
* On zero chirality, a tied complementary pair with
  `0 < R_plus = R_minus <= 26` always has a common strict descent direction.
  Exact polynomial elimination excludes every possible convex balance
  of its two gradients. This handles a genuine nonsmooth two-function
  maximum, including all its algebraic rank drops.
* The nontransverse intersection of zero chirality and `Im(q(E)) = 0`
  is now closed for single-active stationarity. A full Gram quotient
  supplies a Lorentzian Hessian whose radical lies in the actual image;
  an exact septic critical-value polynomial excludes the target interval.
* Combined with the verified companion regular and transverse modules,
  every low-valued local minimum whose entire active set belongs to one
  `3+3` partition is excluded. The complete statement and all its exact
  inputs are assembled in `ONE_PARTITION.md`.

These results are replayed by five scripts, all passing:

```
python3 verify_gauge.py
python3 verify_chart.py
python3 verify_chirality.py
python3 verify_chirality_pair.py
python3 verify_double_zero.py
```

`verify_gauge.py` uses only the Python standard library. The other scripts
require SymPy. Every acceptance comparison is exact. Their purposes and
complete proofs are in the matching Markdown files.

## Numerical evidence only

Decimal displays of algebraic critical values and gauge bounds are
explanatory approximations. No numerical search, sampled matrix, or
floating-point root isolation supports an acceptance decision in the
delivered theorems.

## Explicit remaining obligations

This contribution does not prove global confinement. In particular:

1. A full maximum can have several distinct active corner functions,
   extending beyond one complementary pair. Their gradients may balance
   even when each single gradient and each complementary pair is
   separately nonstationary. That larger active-set obstruction remains.
2. The transverse intersection of zero chirality with `Im(q(E)) = 0`
   is covered by the verified companion parent calculation. The
   nontransverse intersection is proved here in `DOUBLE_ZERO.md`.
   These singular strata are closed for single-active criticality; the
   remaining active-set problem is the one described in item 1.
3. No validated global seed-box cover, explicit global descent field, or
   elimination of every five-active-gradient stationary system has been
   supplied.
4. The low-M F7 coverage assertion is an input. The local chart algebra
   does not repair or re-prove a global coverage theorem.
