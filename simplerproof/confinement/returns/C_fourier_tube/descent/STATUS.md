# Status of the descent and conditioning work

## Fully proved

- Every physical corner with `R>=epsilon>0` has all displayed corner-chart
  denominators bounded away from zero by explicit functions of `epsilon`.
  The stronger determinant bound is `g >= (epsilon/2)^(1/3)`.
- Exact normalization gives `lambda_j=P_j/(g+c_j z)` and
  `d_F=(n gamma-2 alpha k)/delta`. The side variables satisfy
  `d_F^2=n^2-4|alpha|^2`, `rho>=n/2`, `|sigma|^2=rho`, `|xi|=1`,
  `3M_s M_s*=G`, and `det M_s=delta`.
- Both sheets and both side constructions satisfy these bounds. The
  statement is local in the choices of complex roots; it does not
  assert a single smooth global principal-branch chart.
- There are exact strict seeds with all four distinguished-corner
  derivatives zero and `R=(625-275 sqrt(5))/2` strictly between zero and
  26. Therefore the low-critical-seed problem cannot be replaced by
  excluding every positive stationary point of `R` on the seed torus.
- The convex-hull criterion in `NONSMOOTH_DESCENT.md` is a sufficient
  descent test and a necessary local-minimum test on any differentiable
  physical chart, without a global manifold assumption.

## Exact finite computation used

`verify_chart_denominators.py` checks the polynomial identities underlying
these results using exact rational SymPy arithmetic. It passed, printing
`CHART AND STATIONARY-SEED EXACT VERIFICATION PASS`. The observed elapsed
time was approximately 24.5 seconds. This is a finite identity replay,
not an interval cover of a parameter region.

## Numerical evidence only

The persisted eight generic minimax-descent trials give six very small
final maxima and two first-order stationary candidates near
`205.4213185894`. They neither prove local minimality nor exclude any
unsampled component. The golden-ratio stationary seed has numerical
completed maximum approximately 369.224, but this value is not used in
any exact result.

## Main task still open

These results do not prove that every Hadamard with `M<26` lies within
horizontal phase distance 0.55 of the Fourier equivalence class. They
supply uniform nonsingularity bounds for a future validated descent
cover away from `R=0`, and show explicitly why maximality must be kept
when searching for low critical points. A globally valid treatment of
the remaining small-`R` collar and a complete descent/coverage argument
are still needed.
