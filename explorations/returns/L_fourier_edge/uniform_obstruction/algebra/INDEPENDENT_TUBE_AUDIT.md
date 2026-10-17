# Independent audit of the frozen Diţă tube cover

## Verdict and scope

The reviewed native-128 source is
../cover/d0_tube_cover.cpp, SHA-256
520dfcb7213bf3a7f73ab09ad8f3f8ea151d4e7ff9c23649febe42d0b42625f8.
The reviewed root proof is
../cover/ARITHMETIC_AND_COVER_SOUNDNESS.md, SHA-256
9a2ee211aff05b51c4e5fea79f46a4f69354a7acab92515e0c465f875e1f0354.

The arithmetic, critical-point handling, and residual-tube containment
arguments pass this independent review. A successful full search is a
separate gate. The static audit does not certify an unfinished run or
convert template-only output into coverage.

The script audit_d0_tube.py binds the reviewed source and note, checks
all 75 coefficients against the exact Gaussian anchor, verifies the
rational pi enclosure with Machin's identity, and checks the numerical
inequalities in this audit. Its receipt records current input hashes.

## Signed arithmetic

Every checked endpoint lies between \(-M\) and \(M\), where
\(M=2^{63}-1\). A product has magnitude at most \(M^2<2^{126}\).
An endpoint sum has magnitude at most \(2M<2^{64}\), and either five-term
Krawczyk sum is below \(5M<2^{66}\). All are strictly within signed
128-bit range. Negations in upward rounding cannot reach the signed
128-bit minimum. Every narrowing is checked before conversion.

The factorial loop ends at \(19!<2^{57}\). The floating preconditioner
proposal is accepted only when finite and at most 100 in absolute
value; multiplication by \(Q=2^{44}\) is far within the llround range.
Its value need not be an actual inverse for the containment argument.

Plain signed 64-bit subtractions of search-box endpoints are safe
because every box is contained in the initial cube: the initial width
is below \(7Q<2^{47}\), and only intersections and subsets become new
search boxes. The potentially much larger Krawczyk image is not installed
as a search box. Quarter indices are guarded, and the trigonometric
output bound below makes all direct sign changes and padding safe.
Search counters are unsigned; no signed-counter overflow premise is
hidden in the coverage argument.

## Trigonometric enclosures

Here is a coarse calculation independent of the root note's sharper
Horner recurrence. The point routine has \(|x|\le32Q\), and its quarter
index obeys \(|k|\le21\) because \(\mathrm{PI\_LO}>3Q\). The dyadic
reduced angle differs from the true angle by less than

\[
 \frac{|k|/2+1}{Q}<\frac{12}{Q}.
\]

Its runtime bound \(|r|/Q<0.786\) implies
\((r/Q)^2<2/3\). The rounded squared argument differs by less than
\(1/Q\). Comparing Horner evaluation at that rounded argument with
the true polynomial at the same argument gives an error less than

\[
 \frac{2}{Q}\sum_{j\ge0}(2/3)^j=\frac6Q.
\]

One term accounts for coefficient rounding and one for each Horner
rounding. Changing the polynomial argument from the rounded square to
the true square costs less than

\[
 \frac1Q\sum_{j\ge1}j(2/3)^{j-1}=\frac9Q,
\]

using the coarse bound one on every coefficient. The Taylor remainder
is below \(1/Q\), since the reduced angle has magnitude below one and
\(19!>Q\). The final sine multiplication adds less than \(1/Q\).
Therefore the cosine error is below \(28/Q\), and the sine error is
below \(29/Q\), including the quarter-turn reduction error.
Both are below \(32/Q\); the actual padding \(1024/Q\) is ample.

The root note obtains the stronger common bound \(27/Q\) by comparing
true and rounded Horner suffixes in one recurrence. Its suffix bound
\(5/Q+(5/8)E\), initial bound \(1/Q\), and invariant \(E<14/Q\)
are valid. The final sine multiplication preserves that invariant.
The displayed cosine and sine Taylor remainders also hold because
their next parity-forbidden coefficients are zero.

For an interval argument, each true critical point \(k\pi/2\) has its
integer index between the minimum of the two lower floor quotients
and the maximum of the two upper ceiling quotients. The extra index
on each side is conservative. quarter_point reverses the pi endpoints
for negative \(k\), so its enclosure remains directed correctly.
A true critical point inside the argument interval cannot be omitted
by the disjointness test. Extra extrema only enlarge the result.
Endpoint padding, these extrema, and clipping to the exact range
\([-1,1]\) therefore enclose the whole interval.

## Residual-tube Krawczyk step

The coefficient phase is
\(\arg(\overline{D_{rj}}D_{sj})\), with angle
\(\theta_r-\theta_s+\gamma\). Thus the implemented residual and its
two derivative signs are correct. The diagonal contribution cancels
the subtracted six.

For any tube point \(x\) in a current box, put \(y=F(x)\).
If \(m\) is the midpoint and \(A_x\) is the mean Jacobian along the
segment from \(m\) to \(x\), then for any fixed matrix \(C\),

\[
 x=m-C(F(m)-y)+(I-CA_x)(x-m).
\]

The code enlarges its midpoint residual by the symmetric tolerance,
which contains \(F(m)-y\). Its Jacobian interval contains \(A_x\),
and its upward-rounded row spreads contain the final term. Therefore
every tube point lies in the image. This identity uses no inverse,
Jacobian nonsingularity, or contraction hypothesis.

Disjoint image and source boxes therefore exclude tube points.
An image contained in a template covers every tube point of its source
box there. Intersecting source and image preserves every tube point;
the floating relative-volume criterion only decides whether to take
this already sound intersection.

## Closed coverage

The initial shifted cube has side length greater than \(2\pi\), so it
covers the entire phase torus. Every child split is closed and uses the
same exact integer endpoint on both sides. Every pruning step is
either residual exclusion, the image containment argument above, or
containment in a retained template. Failed arithmetic guards and
unresolved small boxes stop with nonzero exit.

Consequently successful exhaustion gives the claimed tube containment,
including all equality and boundary cases. Neither this argument nor
the companion graph argument requires unique roots, simple roots,
constant complex-fiber degree, or one ray per retained box.
