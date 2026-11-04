# Independent mathematical audit of the Step 1 route

## Verdict and scope

**No mathematical counterexample or missing degeneracy was found in the
audited Step 1 route.** The deltoid characterization, the continuous-lift
and open-quotient argument, the algebraic identification of the extra cusp
branch, and the passage from positive local maxima to (W) are correct with
the hypotheses made explicit below.

Two analytic details must appear in the final blueprint:

1. A component of \(S=\{R>0\}\) is open because the seed torus is locally
   path connected. Compactness alone does not make a maximum on a
   component's closure an ambient local maximum.
2. The gradient test for the deltoid boundary vanishes at its cusps.
   The cusps are nevertheless boundary points: their trace modulus is 3,
   and arbitrarily nearby points of modulus greater than 3 cannot be
   traces of three unit numbers.

Both details have elementary proofs. They are not counterexamples to the
route, but omitting their hypotheses would leave an overly general
topological lemma or an incomplete boundary argument.

The audit reviewed `INTERIOR_NOTES.md`, `BOUNDARY_NOTES.md`, the relevant
reference deltoid and two-boundary arguments, and the root
`coordinate_bridges.json` and its generator. The coordinate bridge file
passes the independent Fraction checker, including its new double-angle
identity: **11 exact claims**. This audit does not assert that the remaining
analysis/topology has been compiled in Lean, and it does not audit Steps
2–4 of the no-four-MUBs argument.

## 1. The self-inversive cubic, including multiplicities

For \(Z\in\mathbb C\), let
\[
p_Z(T)=T^3-ZT^2+\bar ZT-1.
\]
Its constant term excludes zero roots. The identity
\[
p_Z(T)=-T^3\overline{p_Z(1/\bar T)}
\tag{1.1}
\]
shows that reciprocal conjugation
\(\lambda\mapsto1/\bar\lambda\) preserves the root multiset, **with
multiplicities**. The multiplicity qualification is important.

If a nonunit root \(\lambda\) were repeated, its distinct reciprocal
conjugate would have the same multiplicity. The cubic would then have at
least four roots counted with multiplicity. Therefore a cubic of this
form cannot have a repeated nonunit root. If the roots are not all unit,
there is exactly one simple nonunit pair and one remaining simple root.

Writing the pair as
\[
rz,\quad r^{-1}z,\qquad r>0,\quad r\ne1,\quad |z|=1,
\]
and using the product of the roots, which is 1, identifies the third root
as \(z^{-2}\). No further root pattern is possible.

This conclusion genuinely uses the self-inversive coefficient relation.
Product one alone would not suffice: the multiset
\(\{2,2,1/4\}\) has product one and zero discriminant, but its cubic is
\(T^3-(17/4)T^2+5T-1\), not a polynomial \(p_Z\). The audited proof
retains the needed coefficient relation.

## 2. The sign of the discriminant is decisive

The discriminant of \(p_Z\) is
\[
\Delta(Z)=|Z|^4+18|Z|^2-8\operatorname{Re}(Z^3)-27.
\]
For three unit roots with product one, let
\[
V=(\lambda_1-\lambda_2)(\lambda_1-\lambda_3)
  (\lambda_2-\lambda_3).
\]
Conjugating each factor gives
\[
\bar V=-\frac{V}{(\lambda_1\lambda_2\lambda_3)^2}=-V.
\]
Thus \(V\) is purely imaginary and its square, the discriminant, is
nonpositive. This includes repeated roots, for which it is zero.

For the nonunit pattern from Section 1, direct multiplication gives
\[
\Delta=(r-r^{-1})^2
\bigl(z^3+z^{-3}-r-r^{-1}\bigr)^2.
\tag{2.1}
\]
Both factors are real. The first is strictly positive. Also
\[
r+r^{-1}>2\ge2\operatorname{Re}(z^3)=z^3+z^{-3},
\]
so the second is strictly positive. Consequently \(\Delta>0\) in
every nonunit case. The squared second factor cannot vanish at any
nonunit root configuration.

The exact certificates already supply a denominator-free version of
(2.1), with explicit cofactors of \(a^2+b^2-1\) and \(rs-1\). The sign
proof uses those identities together with
\[
r(r+s-2)=(r-1)^2+(rs-1),
\]
and the sum-of-squares expression for
\(2-2\operatorname{Re}(z^3)\). There is no hidden choice of a radical
branch or an unproved real-root count.

It follows that
\[
\boxed{\Delta(Z)\le0
\quad\Longleftrightarrow\quad
\text{every root of }p_Z\text{ is unit}.}
\tag{2.2}
\]
Since Vieta's formulas then give trace \(Z\) and product one, this is
equivalent to membership in the trace image \(\mathcal D\).

## 3. Interior, boundary, and the cusp issue

The trace image \(\mathcal D\) is compact, being a continuous image of
the compact space of unit product-one triples. Equation (2.2) gives
\(\mathcal D=\{\Delta\le0\}\), so \(\{\Delta<0\}\) is an open
subset of \(\mathcal D\).

At \(\Delta=0\), the roots are unit and repeated. Therefore
\[
Z=2z+z^{-2},\qquad |z|=1.
\tag{3.1}
\]
The certified boundary gradient identity can be written
\[
Q=|z^3-1|^2,\qquad
\nabla\Delta(Z)=8QN,\qquad |N|^2=Q.
\tag{3.2}
\]
If \(z^3\ne1\), this gradient is nonzero. A small displacement in the
positive gradient direction has \(\Delta>0\), so the point is not an
interior point of \(\mathcal D\).

If \(z^3=1\), then \(Z=3z\) and the gradient vanishes. Here use the
triangle inequality: every point of \(\mathcal D\) has modulus at most
3, whereas \((3+\varepsilon)z\) is outside \(\mathcal D\) for every
\(\varepsilon>0\). These exterior points converge to \(3z\), so each
cusp is also a boundary point.

This proves the two exact set equalities needed later:
\[
\mathcal D^\circ=\{\Delta<0\},\qquad
\partial\mathcal D=\{\Delta=0\}.
\tag{3.3}
\]
No convexity of the deltoid is used. No regular-value hypothesis is imposed
at a cusp.

## 4. Why the trace quotient is open even at repeated roots

Let
\[
X_1=\{(e_1,e_2,e_3)\in(S^1)^3:e_1e_2e_3=1\}.
\]
For a point of this space, the pairwise symmetric sum is the conjugate
of its trace:
\[
e_1e_2+e_1e_3+e_2e_3
=(e_1e_2e_3)(e_1^{-1}+e_2^{-1}+e_3^{-1})
=\overline{e_1+e_2+e_3}.
\]
The monic polynomial whose roots are the ordered triple is therefore
determined by its trace. Two points of \(X_1\) have the same trace if
and only if they are permutations of one another. This statement includes
all double and triple roots; repeated entries reduce the orbit size but
do not create an extra fiber.

The trace map factors through \(X_1/S_3\). The induced map to
\(\mathcal D\) is a continuous bijection from a compact space to a
Hausdorff space, hence a homeomorphism. The quotient projection is open,
because for every open \(N\subset X_1\),
\[
\pi^{-1}(\pi(N))=\bigcup_{\sigma\in S_3}\sigma N
\]
is open. Therefore the trace map is open. Its product on
\(X_1\times X_1\) is open as well.

There is no freeness requirement on the action. In particular, applying
an open-quotient theorem only to free group actions would be an
unnecessary restriction that misses precisely the repeated-root strata.
The saturation proof above works at those strata without modification.

## 5. Continuous normalized lifts are enough

For two ordered unit product-one triples define
\[
\Psi(e,o)=
\left(\frac{e_1}{o_2},\frac{o_1}{e_3},
\frac{o_1}{e_2},\frac{e_1}{o_3}\right)
=(a,b,c,d).
\tag{5.1}
\]
Every denominator is nonzero. Thus \(\Psi\) is a globally continuous
map to the seed torus. Put \(\rho=e_1o_1\). Direct calculation gives
\[
(ad,b,c)=\rho(e_1,e_2,e_3),\qquad
(bc,d,a)=\rho(o_1,o_2,o_3),\qquad abcd=\rho^3.
\tag{5.2}
\]
Conversely, for an arbitrary unit seed choose any cube root
\(\rho^3=abcd\), and define the triples by the two normalized product
lists in (5.2). They are unit product-one triples and map back to the seed.
Therefore \(\Psi\) is surjective.

A **global continuous selection of a cube root is neither asserted nor
needed**. Only a lift of the one seed under consideration is chosen.
Continuity is used in the forward map \(\Psi\), where there is no branch
selection.

If the seed is a local maximum, composition with \(\Psi\) makes every
chosen preimage a local maximum of the pulled-back invariant. This uses
only the preimage of a witnessing open neighborhood. Since the invariant
factors through the two traces, openness of the product trace map then
descends that local maximum to \(\mathcal D^2\): the image of its
witnessing open neighborhood is an open neighborhood on which the same
inequality holds.

Thus no local inverse, nonzero Jacobian, covering-map theorem, or smooth
lifting theorem for \(\Psi\) is required. In particular the argument is
valid at a cusp or repeated-root seed.

## 6. Audit of the algebraic cusp-product bridge

Let the two repeated boundary roots be
\[
u=zw,\qquad v=zw^{-1},\qquad |z|=|w|=1,
\]
and set
\[
c=\operatorname{Re}w,\qquad
h=\operatorname{Re}z^3,
\qquad Z=z^3,\quad W=w^3.
\]
On the extra stationary branch, \(h=4c^3-3c\). The certified triple-angle
identity gives
\[
Z+Z^{-1}=W+W^{-1}.
\]
The `equal_cosines_force_cusp_product` identity consequently gives
\[
(Z-W)(ZW-1)=0.
\tag{6.1}
\]
There is no division by either factor. The use of the integral-domain
property of \(\mathbb C\) produces exactly two exhaustive alternatives:

- If \(Z=W\), then \(v^3=ZW^{-1}=1\). The second trace is a cusp.
- If \(ZW=1\), then \(u^3=1\). The first trace is a cusp.

These alternatives may overlap in other parameter regimes; overlap would
not invalidate the conclusion that at least one trace is a cusp. On the
stationary branch at issue, no such overlap has to be ruled out for the
argument to work.

After swapping the traces if necessary and rotating both by the inverse
of the cusp's unit root, the cusp trace becomes 3. The other repeated root
becomes \(w^2\) or \(w^{-2}\). Its real part is therefore
\[
y=2c^2-1.
\tag{6.2}
\]
The added double-angle identity checks this step under
\(ww^{-1}=1\). The substitution from the stationary quartic gives
\[
4y^2+6y+1=16c^4-4c^2-1=0.
\tag{6.3}
\]
Thus the geometric cusp normalization and the polynomial branch relation
agree. No classification of solutions of a cosine equation modulo angles
is required.

### Physical-root capture and curvature sign

Because \(y\) is the real part of a unit number, \(y\ge-1\). For
\(f(y)=4y^2+6y+1\), the two secant arguments in
`coordinate_bridges.json` prove
\[
-\frac{49}{256}<y<-\frac3{16}.
\]
Specifically,
\[
f(-49/256)=-31/16384<0,\qquad f(-3/16)=1/64>0,
\]
and the secant slopes are bounded below, respectively, by
\(79/64\) and \(5/4\) for all \(y\ge-1\).

This captures **every admissible physical root**, rather than merely
isolating one root while leaving another unchecked. It excludes the other
quadratic root automatically through \(y\ge-1\).

The resulting curvature inequality is strict:
\[
660(46y+9)>660\cdot\frac{25}{128}=\frac{4125}{32}>0.
\]
The splitting curve uses the genuine unit triple
\((e^{it+i\varepsilon},e^{it-i\varepsilon},e^{-2it})\), so it lies in
the actual trace domain. Its positive curvature contradicts a trace-domain
local maximum, without any differential lift to seed coordinates.

## 7. Other degeneracies in the maxima classification

The cases used in the reduction exhaust the trace domain:

- **Both traces interior.** The new Cartesian ambient proof handles
  \(A=0\) within its nonpositive-\(x\) obstruction, handles \(C=0\)
  before the phase reduction, and excludes \(B=0\) from positivity.
  Normalizing \(B\) may leave the deltoid domain, but this is legitimate
  after an interior local maximum has become an unconstrained ambient
  local maximum.
- **One smooth boundary trace and one interior trace.** A nonzero first
  derivative of \(\Delta\) gives an inward side of the invariant orbit.
  If it vanishes, the certified second derivative is strictly negative
  except at \(r=-2\); that exception makes the second trace boundary,
  contrary to the case hypothesis. Only a small segment of the orbit is
  used. No claim that the entire orbit stays in the deltoid is needed.
- **One cusp and one interior trace.** Positive value excludes the zero
  factors \(F=0\) and \(G=0\). The remaining real-axis interval is
  strict, and the derivative is nonzero throughout it. Endpoints are
  boundary points and are not inadvertently treated as interior.
- **Both boundary.** The vertical edges \(c=\pm1\) have no positive
  value. The point \(c=0\) is handled separately before cancellation.
  All other cancelled factors are nonzero under \(R>0\). The open-square
  cusp branch has the actual increasing splitting curve from Section 6.
  The horizontal edges retain only the two stated endpoint coordinates.

When using \((c,h)\) as local coordinates on the open square, it is enough
that \((m,n)\mapsto(\cos n,\cos3m)\) has nonzero derivative determinant.
The boundary trace parameterization itself need not be an immersion there;
pulling a local maximum back along it is valid even when one trace is a
cusp.

For the endpoint reduction, the apparent second solution
\((c,h)=(-1/4,-1)\) can be replaced by \((1/4,1)\) using
\((z,w)\mapsto(-z,-w)\), which leaves both boundary roots \(zw\) and
\(zw^{-1}\) unchanged. At \(h=1\), common cubic rotation reduces
\(z\) to 1. The remaining unit number has real part \(1/4\), hence is
one of the two exactly certified conjugate points. The ordered-root
enumeration then gives the stated 18 seed points. Common cube-root
rotation of the two triples cancels from every ratio in \(\Psi\), so it
does not create another seed family.

## 8. Complete proof of positive-maxima classification implies (W)

Let \(T=(S^1)^4\), let \(R:T\to\mathbb R\) be continuous, and write
\(S=\{R>0\}\). Assume every positive ambient local maximum of \(R\)
belongs to the finite set \(O\). For any connected component \(C\) of
\(S\), the following argument proves \(C\cap O\ne\varnothing\).

1. The torus is compact and locally path connected. The set \(S\) is
   open, so it is locally path connected as well. Consequently its
   connected components are open. Thus \(C\) is open in the torus.
2. A connected component is closed in its ambient space, here \(S\).
   Therefore
   \[
   \overline C^{\,T}\cap S=C.
   \tag{8.1}
   \]
3. By continuity, \(R\ge0\) on \(\overline C^{\,T}\). If a point of
   this closure is outside \(C\), (8.1) says it is outside \(S\), hence
   \(R\le0\) there. Thus it has \(R=0\). Since \(C\) is open, this is
   precisely the assertion \(R=0\) on its ambient boundary.
4. The closure is a nonempty compact set. Fix \(x\in C\). The extreme
   value theorem produces \(p\in\overline C^{\,T}\) with
   \(R(p)\ge R(x)>0\). Equation (8.1) places \(p\) in \(C\).
5. Since \(C\) is an open neighborhood of \(p\), maximizing on the
   closure implies that \(p\) is an ambient local maximum on the torus.
   Its value is positive, so \(p\in O\). Hence \(C\cap O\ne\varnothing\).

This proves (W). It requires neither finitely many components nor a regular
zero level, a nonvanishing gradient at boundary points, a uniform positive
barrier, or a global gradient flow. Highly degenerate zero points such as
the F3 seed do not affect the argument.

The openness in Step 1 is a real hypothesis, not a redundant phrase:
on a compact totally disconnected space a component may be a nonopen
singleton, and its closure maximizer need not be an ambient local maximum.
For example, on the Cantor set with the coordinate function, the positive
component \(C=\{2/9\}\) maximizes on its own closure but is not an ambient
local maximum: the Cantor points \(2/9+2/3^n\), \(n\ge3\), approach it
from above. The actual seed torus has the required local path connectedness.

## 9. Remaining formalization obligations

The finite exact identities do not by themselves prove the following
analytic statements. The final Lean theorem needs these statements proved,
not introduced as unstated assumptions:

- complex cubic factorization and multiplicity preservation under the
  reciprocal-conjugation identity;
- compactness of the unit product-one triple space, and the finite
  quotient/open-map argument;
- continuity and surjectivity of \(\Psi\), with no global cube-root
  selection;
- the real first/second derivative conditions and the chain rule for the
  explicit invariant orbit and splitting curve;
- local path connectedness of the seed torus and the compact-closure
  argument in Section 8.

These are ordinary, fully specified mathematical lemmas. The audit found
no additional elimination, root-counting, or numerical-coverage obligation
hidden in them. Their compilation status must remain separate from the
successful exact certificate replay.
