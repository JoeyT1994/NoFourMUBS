# Soundness of the Diţă residual-tube cover

This note applies to the frozen `d0_tube_cover.cpp`, SHA-256
`520dfcb7213bf3a7f73ab09ad8f3f8ea151d4e7ff9c23649febe42d0b42625f8`,
with the canonically checked `tube_inputs.h`. It explains the enclosure
arithmetic and the exhaustive search. A successful full execution is a
separate necessary gate; running the template or arithmetic smoke checks
alone does not prove coverage.

The source is adapted from Hao-Yu Sun's CC BY 4.0 ancillary program for
[arXiv:2610.12180v1](https://arxiv.org/html/2610.12180v1). The original
anchor, candidate list, residual allowance and acceptance problem have
been replaced. This is a fresh Diţă calculation, not a replay of that
paper's neighborhood theorem. The inherited introductory comments about
Boost and `a119-run-scope.md` are obsolete: the actual code uses native
signed 128-bit intermediates, and this note records its scope.

## 1. Exact input bindings

Put

\[
Q=2^{44}=17592186044416,\qquad
\pi_-={55267482437722\over Q},\quad
\pi_+={55267482437723\over Q}.
\]

The independent rational input checker proves
\(\pi_-<\pi<\pi_+\) by alternating rational bounds for
\(16\arctan(1/5)-4\arctan(1/239)\). It regenerates the header exactly,
checks all 75 Gaussian pair coefficients against the literal Diţă matrix,
and binds all 600 dyadic phase coordinates to the rational templates.

The target raw-matrix radius is \(\epsilon=10^{-4}\). Define

\[
\eta=30\epsilon+36\epsilon^2={75009\over25000000},\qquad
\widehat\eta={\lceil Q\eta\rceil\over Q}
={52782891321\over Q}.
\]

The search covers the larger sublevel set with allowance
\(\widehat\eta\). Its retained boxes have halfwidth

\[
h={\lceil Q/100\rceil\over Q}={175921860445\over Q},
\]

not literally \(1/100\). The separate exact binding check proves
\(h+10^{-9}<10001/10^6\), the chordal radius used by the graph.

## 2. Fixed-point interval operations and signed-128 safety

An interval with integer endpoints \([a,b]\) means the real interval
\([a/Q,b/Q]\). Addition and subtraction are exact; multiplication takes
the smallest and largest of four endpoint products and rounds the lower
result down and the upper result up after division by \(Q\). Signed
integer division explicitly corrects C++ truncation toward zero to
mathematical floor. Integer scaling, midpoint and quarter-turn bounds
use the same directed division. Every stored computed endpoint is
checked against \(M=2^{63}-1\); the asymmetric value \(-2^{63}\) is
excluded.

These operations fit signed 128-bit intermediates:

* A product of two admissible 64-bit endpoints has magnitude at most
  \(M^2<2^{126}\). Signed 128-bit storage permits magnitudes below
  \(2^{127}\). Negating a product for upward rounding remains safe.
* An endpoint sum or difference has magnitude at most \(2M<2^{64}\).
  The midpoint numerator and signed-division corrections are also safe.
  Every divisor is required to be positive; the signed-minimum divided
  by minus-one overflow case cannot occur.
* Krawczyk spread and row sums each add five already rounded, checked,
  nonnegative endpoints. Their sums are below \(5M<2^{66}\), then pass
  through checked narrowing before storage.
* The Taylor factorial is formed only through \(19!<2^{57}\). Products
  used to construct it are its successive factorials, so this same
  bound applies throughout construction.
* All other small integer multipliers, including the quarter-turn
  reduction and its guards, are bounded by the explicit argument/index
  guards or are products of admissible endpoint-sized integers.

The plain 64-bit operations that do not invoke checked narrowing are
also bounded. Search boxes are always inside the initial cube, whose
side length is \(2\pi_+<7\), so their endpoint differences are below
\(7Q<2^{47}\). Template coordinates and cube shifts are input-checked.
Quarter indices lie in the guarded range \([-65,65]\). Point-trig
outputs have magnitude at most \(Q+32\), as proved below, so their
sign changes and padding by 1024 cannot overflow. Fixed coefficients,
loop indices and successful run counters are far below their storage
limits. An interval produced by a Krawczyk image is checked before use;
only its intersection with the current search box can become a new
search box.

The prescribed build additionally uses `-ftrapv`, checked narrowing,
`-fno-fast-math` and `-ffp-contract=off`. These are defensive checks;
the integer bounds above supply the mathematical overflow argument.
Floating point appears only in optional preconditioner proposals and
in the decision whether contraction is efficient. Neither floating
calculation is an enclosure or a reason to accept or exclude a point.

## 3. Proof of the trigonometric padding

The point routine requires \(|x|\le32Q\). It chooses an integer quarter
index \(k\) and sets the dyadic reduced numerator

\[
r=x-\left\lfloor{k\,\mathrm{PI\_LO}\over2}\right\rfloor.
\]

The formula for \(k\), together with \(\pi_->3\), gives \(|k|\le22\).
The routine checks \(|r|/Q<0.786\). Since the pi interval has width
\(1/Q\), the true reduced angle \(x/Q-k\pi/2\) differs from \(r/Q\)
by less than \(12/Q\). Sine and cosine are both 1-Lipschitz, so this
causes less than \(12/Q\) value error, including after the exact
quarter-turn permutation and sign changes.

For the remaining calculation put \(t=r/Q\) and
\(q=\lfloor r^2/Q\rfloor/Q\). Then

\[
|q-t^2|<1/Q,\qquad 0\le q\le t^2<0.786^2<5/8.
\]

The program constructs the cosine coefficients through degree 18 and
the sine coefficients through degree 19 by truncating each factorial
coefficient toward zero to the grid. Each coefficient error is less
than \(1/Q\). Horner multiplication rounds down, with error less than
\(1/Q\) at each step. Every suffix of either true polynomial in
\(t^2\) has absolute value at most
\(\sum_{j\ge0}(5/8)^j=8/3<3\), since all coefficient magnitudes are
at most one.

If \(E\) is the error of the next Horner suffix, the current suffix
error is therefore at most

\[
{1\over Q}+{1\over Q}+{3\over Q}+{5\over8}E.
\]

Starting with error less than \(1/Q\) at degree nine bounds every
suffix error by \(14/Q\). The final sine multiplication by \(t\)
adds less than \(1/Q\) and multiplies the previous error by less than
0.786, so the same \(14/Q\) bound covers it. The true Taylor remainders
are less than \(1/20!\) and \(1/21!\), respectively, each below
\(1/Q\). Thus either point-trig output differs from the exact value
by less than

\[
(12+14+1)/Q<32/Q.
\]

The actual padding is \(1024/Q\), safely larger than this bound.

For a non-point interval, the routine uses the padded endpoint values
and inserts every possible intervening extremum at \(k\pi/2\). Its
index bounds use both rational pi endpoints and an extra index on each
side. An interval enclosure of a critical point is omitted only when
disjoint from the input interval. Extra extrema only enlarge the range.
For width at least \(2\pi_-\), it returns \([-1,1]\); this is safe
even when that width is slightly less than a true full period. These
rules prove that the returned intervals enclose sine and cosine at
every point of every accepted input interval.

## 4. Residual and Jacobian enclosures

Fix \(\theta_0=0\) and write \(x_r=e^{i\theta_r}\). The five tested
residuals are

\[
F_j(\theta)=|(D^\dagger x)_j|^2-6
=2\sum_{r<s}\cos(\theta_r-\theta_s+\gamma_{jrs}),
\quad j=0,\ldots,4,
\]

where \(e^{i\gamma_{jrs}}=\overline{D_{rj}}D_{sj}\). The exact
Gaussian coefficients make every phase a multiple of \(\pi/2\), with
the interval coefficients validated independently. Differentiating each
term gives the signs and factors of two used in `residual`. The outward
interval operations therefore enclose both \(F(X)\) and its Jacobian
over each closed convex box \(X\).

Every actual near-anchor common ray satisfies all six residual bounds.
Using only five of them enlarges the covered set, so it cannot discard
an actual candidate. The sixth equation is not needed by this gate.

## 5. The sublevel Krawczyk identity

Let \(m\) be the dyadic midpoint of a box \(X\). The program may
propose any finite dyadic matrix \(C\). Its approximate inverse routine
only supplies such a proposal: values must be finite and have absolute
value at most 100 before safe rounding to the grid. Neither invertibility
nor an inverse-error assertion is used.

If \(x\in X\) and \(y=F(x)\in[-\widehat\eta,\widehat\eta]^5\),
the integral mean-value identity gives

\[
A_x=\int_0^1DF(m+t(x-m))\,dt,\qquad
F(x)=F(m)+A_x(x-m).
\]

Consequently

\[
x=m-C(F(m)-y)+(I-CA_x)(x-m).
\tag{K}
\]

The Jacobian enclosure contains \(A_x\), since the segment is inside
the box. Enlarging the center residual by the symmetric tolerance
encloses \(F(m)-y\). Row-wise interval magnitude bounds on
\(I-CDF(X)\), multiplied by coordinate radii and summed with upward
rounding, enclose the final term in (K). Thus every sublevel point of
\(X\) belongs to the computed image \(K(X)\).

This is only a necessary-set enclosure. It remains valid at singular
Jacobians and multiple roots, and it does not assert a contraction or
existence of a root. Failure to propose a matrix simply causes further
subdivision. Intersecting with \(K(X)\) preserves every relevant point.

## 6. Exhaustive coverage and its completion condition

The root box is

\[
[-\pi_++1/8,\pi_++1/8]^5.
\]

Each coordinate interval has length greater than \(2\pi\), so its
exponentials cover the entire circle, and the root box covers the full
five-dimensional phase torus. The retained templates are wholly inside
the corresponding shifted cube; a separate input check verifies this.

Every processed box has one of four outcomes:

1. It lies in a retained template and is accepted there.
2. A residual interval misses the closed tolerance interval, excluding
   the whole box.
3. Its Krawczyk image is disjoint from it, excluding every sublevel
   point; or that image lies in a retained template, covering every
   sublevel point there.
4. It is optionally intersected with its Krawczyk image, then split
   along one coordinate. The two closed children share the exact
   integer cut, so their union loses no boundary point.

No unknown small box is accepted: an unresolved width threshold,
arithmetic guard failure, unavailable output or invalid split causes
`VERIFICATION_INCOMPLETE` and nonzero exit. The search reads no saved
producer checkpoint and starts with exactly the displayed root cube.
At successful exhaustion the pending stack is empty, and the counters
must satisfy

\[
N=2S+1,\qquad L_{\rm range}+L_{\rm Krawczyk}+L_{\rm template}=S+1.
\]

The executable then writes `tube_coverage.json` with `complete: true`
and prints `COMPLETE_D0_RESIDUAL_TUBE_COVER`. The runner must also record
exit zero and bind the source, header, input and binary hashes. A retained
receipt is evidence of that execution; a fresh full replay is the
independent way to reproduce the mathematical search. Template-only,
local-root-only and historical source runs have explicitly narrower scope.

The coverage conclusion is containment in 120 neighborhoods. It does
not by itself claim 120 perturbed rays, exactly one solution per box,
or a constant orthogonality graph. The companion obstruction requires
none of those additional assertions.
