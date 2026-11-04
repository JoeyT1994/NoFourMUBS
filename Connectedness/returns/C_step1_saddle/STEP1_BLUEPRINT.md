# Step 1 blueprint: definitions, proof obligations, and exact certificates

## Scope and conventions

This is a complete paper dependency plan for the primary statement

\[
\mathbf{(W)}\qquad
\forall C\in\pi_0(\{R>0\}),\quad C\cap O\ne\varnothing.
\]

The algebraic route and all new mathematics are proved in `ROUTE.md`,
`INTERIOR_NOTES.md` and `BOUNDARY_NOTES.md`. This file identifies the
remaining Lean analysis/topology work and the exact certificate that
discharges each finite algebraic calculation. **A blueprint entry is not
a claim that the corresponding theorem has been compiled.** The actual
build status is in `STATUS.md` and `LEAN_NOTES.md`.

Categories are **D** (definition), **T** (elementary topology), **A**
(elementary analysis), and **C** (finite algebra with an explicit exact
certificate). Mixed entries deliberately distinguish their computational
content from the theorem applying it.

Use these types in a future integration module:

```lean
abbrev Seed := Fin 4 → Circle
-- An ordered product-one triple; equivalently two independent Circle values.
def ProductOneTriple := { e : Fin 3 → Circle // ∏ j, e j = 1 }
abbrev NormalizedSeed := ProductOneTriple × ProductOneTriple
```

Use `Complex.normSq` for squared moduli, and real/imaginary coordinates
for polynomial calculus. The certificate equality theorems are generic
over a characteristic-zero field, so they apply to both `ℝ` and `ℂ`.
The inequality and derivative theorems are over `ℝ`.

## I. Coordinate spaces and deltoid geometry

### 1. Ordered triples and seed projection — D/T

Define \(X_1\), \(X=X_1^2\), the traces \(U,V\), and

\[
\Psi(e,o)=(e_1/o_2,o_1/e_3,o_1/e_2,e_1/o_3).
\]

Prove \(X_1\cong\mathbb T^2\) by the mutually inverse maps
\(e\mapsto(e_2,e_3)\) and
\((r,s)\mapsto((rs)^{-1},r,s)\). This proves compactness and local
path connectedness. Prove continuity of \(\Psi\) by continuity of
unit-circle multiplication and inversion.

No certificate is needed for a group cancellation law. The specific
finite exponent matrix is additionally checked in `endpoints.json`, but
its determinant and local-diffeomorphism interpretation are not used here.

### 2. Surjectivity and normalization fibers — T/elementary algebra

Given a seed \((a,b,c,d)\), choose a complex cube root \(\rho\) of
\(abcd\). It is nonzero and has modulus one. Set

\[
e=(ad,b,c)/\rho,\quad o=(bc,d,a)/\rho.
\]

Check their products and apply \(\Psi\). Conversely, for normalized
triples, \(\rho=e_1o_1\) has \(\rho^3=abcd\), and these formulas
recover precisely \(e,o\). Thus two normalized lifts of the same seed
differ by common multiplication by \(\lambda\), \(\lambda^3=1\).

Mathlib supplies `IsAlgClosed.exists_pow_nat_eq`, with the algebraically
closed complex instance. No continuous global root selection is asserted.

### 3. The continuous seed invariant — D/T/C

For arbitrary \(U,V\in\mathbb C\), define

\[
A=U+V,\ B=U-V,\ u=|A|^2,\ v=|B|^2,
\]

\[
C=\frac{(3u-v)(v-u+12)}2-2\operatorname{Re}(AB^2),\qquad
\mathcal R=4(2v-3u)^2(v-2u)-C^2.
\]

A common cubic rotation preserves this expression: squared norms are
unchanged and \(AB^2\) is multiplied by \(\lambda^3=1\). Therefore
\(\mathcal R\) on \(X\) descends to a well-defined seed function
\(R\), equal to the invariant in the prompt. Continuity follows from
the compact-to-Hausdorff quotient property of \(\Psi\).

`interior_geometry.json` checks the circle-action norm/cubic-moment
identities. The original Laurent definition is independently linked by
the three exact `g`, `eta`, `chi` checks in `endpoints.json`; the identity
for \(R\) then follows from the displayed circuit. This Laurent bridge
is optional if the compact expression in the task statement is the
formal definition.

### 4. Trace fibers are permutation orbits — T/elementary algebra/C

The monic polynomial with roots \(e_1,e_2,e_3\) is

\[
p_U(t)=t^3-Ut^2+\bar U t-1.
\]

Indeed the second elementary symmetric function is \(\bar U\) because
the roots are unit and have product one. Equal traces give the same monic
polynomial and hence the same root multiset, including multiplicities.
Thus the trace fibers are exactly the \(S_3\)-orbits.

`interior_geometry.json` contains the Vieta/cubic-discriminant identities.
The finite multiset equality is an ordinary polynomial factorization
lemma; it must be proved in the Lean geometry layer, not assumed from
numeric root finding.

### 5. Exact deltoid inequality and boundary — A/C

Define

\[
\Delta(Z)=|Z|^4+18|Z|^2-8\operatorname{Re}Z^3-27.
\]

Prove that the trace image is precisely \(\mathcal D=\{\Delta\le0\}\).
The discriminant of \(p_U\) is \(\Delta(U)\). Its nonzero roots are
stable, with multiplicity, under reciprocal conjugation.

If all roots are unit, their Vandermonde \(D\) satisfies
\(\bar D=-D\), so \(D^2=-|D|^2\le0\), with equality exactly at a
repeated root. If a root is nonunit, the three roots must have the form

\[
rz,\ r^{-1}z,\ z^{-2},\qquad |z|=1,\quad r>0,\quad r\ne1.
\]

A repeated nonunit root cannot be an additional case: reciprocal
conjugation preserves multiplicity and would require at least four
roots. The certificate gives

\[
\Delta=(r-r^{-1})^2(2\operatorname{Re}z^3-r-r^{-1})^2>0.
\]

All polynomial identities, including the unit-circle cofactors used for
the strict sign, are in `interior_geometry.json`.

Prove **both** parts of the boundary statement. Strict inequality
\(\Delta<0\) gives an open subset of \(\mathcal D\). At every
repeated-root trace \(U=2z+z^{-2}\), including a cusp, the points

\[
U(r)=(r+r^{-1})z+z^{-2},\qquad r>1,
\]

approach \(U\) and have \(\Delta(U(r))>0\). Thus no zero-discriminant
trace is interior. Consequently

\[
\mathcal D^\circ=\{\Delta<0\},\qquad
\partial\mathcal D=\{2z+z^{-2}:|z|=1\}.
\]

This argument avoids a Jordan-curve theorem and does not infer
`boundary = zero set` from an inequality alone.

### 6. The trace map is open — T

The trace map factors through the finite group quotient \(X_1/S_3\).
The induced map to \(\mathcal D\) is a continuous bijection from a
compact space to a Hausdorff space, hence a homeomorphism. The quotient is
open because the inverse image of the image of any open set is its open
group saturation. The product trace map \(X\to\mathcal D^2\) is open.

Useful verified Mathlib declarations are
`MulAction.isOpenQuotientMap_quotientMk`,
`isOpenMap_quotient_mk'_mul`, and `IsOpenQuotientMap.piMap`.

### 7. Local-maximum transfer — T

A local maximum of \(R\) at a seed pulls back to any normalized lift
through continuity of \(\Psi\). An open quotient then takes this
pullback maximum to a local maximum relative to \(\mathcal D^2\).

Mathlib: `IsLocalMax.comp_continuous` and
`IsOpenQuotientMap.map_nhds_eq`.
The supplied `Step1.localMax_iff_openQuotient` gives the latter step in
filter form. Its compilation is not claimed.

## II. Reduction to the double boundary

### 8. Ordinary local-maximum calculus — A

Establish a reusable real one-variable lemma: if a \(C^2\) function has
a local maximum at zero, its derivative is zero and its second derivative
is nonpositive. Also establish the inward version: if \(f(0)=f'(0)=0\)
and \(f''(0)<0\), then \(f(t)<0\) for all sufficiently small nonzero
\(t\).

Mathlib gives `IsLocalMax.deriv_eq_zero` and
`IsLocalMax.fderiv_eq_zero`. A stock second-derivative inequality was not
located in the pinned source. Implement it from `taylor_isLittleO` or
`taylor_isLittleO_univ`: after the linear term vanishes, the quadratic term
dominates the little-o remainder. This is an explicit remaining Lean
analysis lemma, not an implicit oracle.

### 9. Invariant ambient normalization — A/C

Positivity implies \(v>2u\), \(g>0\), and \(B\ne0\). The invariant
linear action \((A,B)\mapsto(\bar\zeta^2 A,\zeta B)\) puts
\(B=\sqrt v>0\). Local maxima and criticality are preserved under this
invertible real linear change. This statement is ambient; it does not
claim that the action preserves the whole deltoid product.

The polynomial action identities are in `interior_geometry.json`.
The first derivative in the real \(B\) direction is \(2\sqrt v H_v\),
so stationarity implies \(H_v=0\). The derivative-chain lemma is ordinary
calculus; no square-root derivative is required for this inference.

### 10. Positive stationary points have positive curvature — C

Use the core definitions \(H,C,H_x,H_y,H_v,H_{yy}\) and their checked
derivative records. The exact identities prove

\[
H>0,\ H_x=H_y=H_v=0
\quad\Longrightarrow\quad x>0,\ y=0,\ C<0,\ H_{yy}>0.
\]

The proof is given in full in `ROUTE.md`. The essential identities are
`cartesian_phase_stationarity`, `negative_x_derivative_obstruction`,
and `cartesian_transverse_curvature`, with the positive-coordinate
amplitude identity and source-linked chart substitutions.

`interior_core.json` checks every polynomial identity, derivative,
substitution and nonnegative coefficient used here.
`Step1.interior_positive_stationary` and
`Step1.interior_scalar_stationary` in `InteriorConsequences.lean` assemble
these into ordinary ordered-real-algebra proof scripts.

Combining with item 8 excludes positive local maxima in the double interior.

### 11. A smooth single boundary enters the interior — A/C

For \(U=2z+z^{-2}\), \(z^3\ne1\), and \(V\) interior, apply the
invariant circle orbit. Define \(Q=|z^3-1|^2>0\). The certificate verifies
the boundary gradient, tangent norm, and tangency parametrization

\[
V=rz-(r+1)z^{-2}.
\]

If the first derivative of \(\Delta(U_\tau)\) is nonzero, one sign
enters \(\Delta<0\). Otherwise the source-linked real chain-rule
identity in `interior_boundary.json` gives

\[
\Delta''(0)=-\tfrac92(r+2)^2Q^2.
\]

The exceptional \(r=-2\) gives another boundary trace and is therefore
impossible here. Item 8 then gives an actual interior orbit segment.
The other trace remains interior by continuity.

Since the orbit preserves \(R\), a nearby interior point has the same
value as the original local maximum. A smaller neighborhood of that point
lies inside the original maximum neighborhood, so it too is a local
maximum. Item 10 contradicts this. This neighborhood argument must be
included; an invariant curve by itself is not an exclusion.

### 12. A cusp with an interior partner is impossible — A/C

Normalize the cusp to \(U=3\) by common cubic rotation. The certificate
`interior_cusp.json` gives

\[
R=-4FG^2,\quad F=2x^2+24x+y^2+18,\quad G=5x^2+18x+y^2+9,
\]

and the two derivatives. At a positive stationary point, \(F<0\),
\(G\ne0\). The equations imply \(y=0\); the alternative would give
\(x=1\) and \(F=44+y^2>0\).

The real-axis deltoid factorization and a positive shift of \(F\) give
\(-1<x<-4/5\). The derivative factorization has a cubic factor
\(P_3\). Its negative has positive Bernstein coefficients on
\([-1,-4/5]\), giving \(-P_3\ge92/25\). Thus the derivative cannot
vanish. All endpoint, derivative and sign coefficients are checked.

### 13. All positive maxima have two boundary traces — T/A

The previous cases exhaust the two trace positions: double interior,
smooth single boundary, and cusp single boundary. Exchange \(U,V\)
preserves \(R\). Therefore every positive local maximum has both traces
on \(\partial\mathcal D\).

## III. The double-boundary census

### 14. Square coordinates without omitted lifts — T

Lift the two repeated unit roots as \(zw,z/w\), with \(z,w\in\mathbb T\).
Such a lift exists by a unit square root; no continuous choice is needed.
The resulting boundary-trace map is continuous. Define

\[
c=\operatorname{Re}w,\qquad h=\operatorname{Re}z^3.
\]

The map to \([-1,1]^2\) is open. Prove this by composing the open
cube quotient of the circle with the open real-part quotient by
conjugation, and taking products. Fibers of real part are exactly
\(\{z,\bar z\}\), including the two singleton fibers.

Consequently local maxima descend to square coordinates, even at its
edges. An alternative implementation may use local cosine inverses in
the open square, but should not add a seed-cover differential hypothesis.

### 15. Boundary trace expansion and factorization — C

`boundary_trace.json` supplies explicit cofactors for the three direct
trace expressions minus the formulas for \(u,v,w\), modulo

\[
zz_i-1,\quad s_2+c^2-1,\quad 2h-z^3-z_i^3.
\]

`boundary_core.json` then verifies the source-linked factorization
\(R=-256L^2M^2N\), the derivative factors \(P,Q\), and simultaneous
sign symmetry. The complex-coordinate identities are generic field
theorems in the generated Lean files.

### 16. Vertical edges and the zero-coordinate case — A/C

At \(c=\pm1\), the certified substitutions give \(v=0\), hence
\(R\le0\). In the open square, at \(c=0\), stationarity forces
\(h=0\). The Hessian entries there are \(0,1024,0\), so direction
\((1,1)\) has second derivative \(2048>0\). Use item 8.

These facts are direct substitutions/evaluations in `boundary_core.json`;
no eigenvalue routine is required.

### 17. Small elimination witness — C

At a positive interior stationary point with \(c\ne0\), the nonzero
derivative factors give \(P=Q=0\). The certificate supplies the identity

\[
S P+T Q=2c(4c^2-1)(2c^2-1)(2c^2+1)^2
(6c^2-4c+1)(6c^2+4c+1)(16c^4-4c^2-1).
\]

The cofactors have 11 and 22 terms. The two additional quadratics are
positive because \(3(6c^2\pm4c+1)=2(3c\pm1)^2+1\).
The three possible branch factors are thus explicitly exhaustive.

The reference-sized resultant identity is also supplied, but the primary
proof uses only the smaller ideal identity. Its name is not a claim that
the Lean checker runs a resultant algorithm.

### 18. Exact branch consequences — C

Use the three explicit memberships in `boundary_core.json`:

\[
3(h+2c)\in(P,Q,4c^2-1),\quad
4(h+c)\in(P,Q,2c^2-1),
\]

\[
11(h-4c^3+3c)\in(P,Q,16c^4-4c^2-1).
\]

The coefficients 3, 4 and 11 are nonzero. The first two branch relations
force \(N=0\) by their small explicit memberships, contradicting
\(R>0\). Only

\[
16c^4-4c^2-1=0,\qquad h=4c^3-3c
\]

remains. No saturation denominator or exceptional factor is left implicit.

### 19. The remaining branch has one cusp — C/elementary algebra

The triple-angle identity in `coordinate_bridges.json` turns the branch
relation into \(z^3+z^{-3}=w^3+w^{-3}\). The same file gives the
unit-circle ideal identity forcing

\[
(z^3-w^3)(z^3w^3-1)=0.
\]

Hence one repeated root, \(zw\) or \(z/w\), is a cube root of unity.
After exchange and common cubic normalization one trace is 3 and the
other is \(2e^{it}+e^{-2it}\), with

\[
y=\cos t=2c^2-1\ge-1,\qquad 4y^2+6y+1=0.
\]

The double-angle identity and the substitution of the quadratic relation
are both certified. This proves the cusp statement without a
trigonometric branch enumeration.

### 20. Root capture and algebraic-number isolation — C/A

`algebraic_numbers.json` gives exact endpoint signs and monotone intervals
for the relevant linear/quadratic algebraic numbers. For the actual
physical branch, use the stronger capture theorem:

\[
y\ge-1,\quad 4y^2+6y+1=0
\implies -49/256<y<-3/16.
\]

Use the secant identity and the strictly positive slopes at both test
endpoints. `coordinate_bridges.json` checks these identities, endpoint
values and the curvature margin. `Step1.physical_transverse_capture`
implements the ordered-algebra implication.

For optional algebraic-value descriptions the defining minimal
polynomials and intervals are:

| Number | Primitive minimal polynomial | Isolating interval |
|---|---|---|
| \(\cos\alpha=1/4\) | \(4X-1\) | \((63/256,65/256)\) |
| \(\sqrt5\) | \(X^2-5\) | \((143/64,9/4)\) |
| \(\sqrt{15}\) | \(X^2-15\) | \((991/256,31/8)\) |
| \((-3+\sqrt5)/4\) | \(4X^2+6X+1\) | \((-49/256,-3/16)\) |
| \(25(25-11\sqrt5)/2\) | \(X^2-625X+3125\) | \((5,6)\) |

The last polynomial is decreasing on its interval; the checker and Lean
generator handle that sign explicitly. Minimality follows from the
rational-root criterion and the nonsquareness of 5 and 15; affine changes
give the two transformed quadratics. No minimality claim is needed to use
the defining equation plus isolation. The complex number \(q\) has
primitive polynomial \(2X^2-X+2\) and is specified by positive imaginary
part, represented exactly in \(\mathbb Q[T]/(T^2+15)\).

### 21. Actual positive transverse curvature — A/C

Use the actual unit-product repeated-root split

\[
U(\varepsilon)=2e^{it}\cos\varepsilon+e^{-2it},\qquad V=3.
\]

With \(q_0=\cos\varepsilon\), substitute
\(x=2yq_0+2y^2-1\),
\(b^2=4(1-y^2)(q_0-y)^2\) into the certified cusp factorization.
`boundary_curvature.json` differentiates this polynomial and checks

\[
R''(0)=660(46y+9)>4125/32>0.
\]

The chain rule uses \(q_0'(0)=0\), \(q_0''(0)=-1\). The curve is
in \(\mathcal D^2\), so item 8 excludes the branch. A local maximum on
the two-dimensional boundary surface alone would not justify this
exclusion; the explicit split is necessary.

### 22. Horizontal edges and Bernstein certificates — A/C

By sign symmetry, take \(h=1\). Positivity forces
\(-1/2<c<1/2\). The edge derivative is

\[
-1024(2c+1)^4(4c-1)(2c^2+1)T(c)F(c).
\]

`boundary_edges.json` proves \(T\ge1/6>0\) throughout the interval,
and proves \(F>0\) on three rational subintervals whose union is checked.
The exact uniform global bound furnished by these rows is
\(F\ge3/32>0\). First-order stationarity on the edge therefore gives
\(c=1/4\). The value \(R=1594323/4096\) is a checked evaluation.
The other edge is the equivalent \((-1/4,-1)\) parametrization.

Bernstein soundness is elementary: its nonnegative basis functions sum to
one. The checker verifies the full expansion and coefficient lower bounds;
the generated Lean statements prove those bounds by ordinary arithmetic
and positivity, rather than by a real-root-counting oracle.

### 23. Complete lift enumeration — C/elementary algebra

At \((c,h)=(1/4,1)\), \(z^3=1\) and
\(w=(1\pm i\sqrt{15})/4\). Common cubic rotation disappears under
\(\Psi\). The normalized root multisets are

\[
\{q,q,q^{-2}\},\quad\{q^{-1},q^{-1},q^2\},
\]

or their exchange. There are three distinct-root placements in each and
two orientations. Enumerate every placement, then apply (1).

`endpoints.json` regenerates all 144 row/column/transpose/conjugation seed
maps and verifies that these 18 lifts are exactly their orbit of
\((1,2,-1,-2)\). `FiniteOrbit.lean` separately defines both finite
constructions and compares them by kernel `decide`.

The root-multiset uniqueness in item 4 ensures that no additional ordered
lift with the same trace was omitted. For (W), equality of the integer
vector sets is enough. Actual distinctness on the torus, needed only for
the cardinality clause of Theorem 1, is separately verified by exact
quadratic-field coordinates.

## IV. Topological conclusion and optional strengthening

### 24. Necessary local-maximum census — T/A

Compose items 7, 13 and 14–23. Every positive seed local maximum lies in
the 18-entry orbit set \(O\). This conclusion does not require the
Hessians at those entries.

### 25. Every positive component has a positive local maximum — T

For a continuous real function on a compact Hausdorff locally connected
space, components of an open set are open. Let \(C\) be a component of
\(S=\{R>0\}\). It is relatively closed in \(S\), so
\(\overline C\cap S=C\). Continuity gives \(R\ge0\) on the closure
and therefore \(R=0\) on \(\overline C\setminus C\).

The closure is nonempty and compact. Its maximum is positive, attained
inside \(C\), and ambiently local because \(C\) is open.

Mathlib building blocks: `IsOpen.connectedComponentIn`,
`isClosed_connectedComponent`, `IsCompact.exists_isMaxOn`, and compactness
of a closed subset of a compact space. Working first in the subtype
\(S\) makes relative closedness immediate.

### 26. The primary theorem (W) — T

Apply item 25 to each component and item 24 to its positive maximizer.
This proves \(C\cap O\ne\varnothing\) for every component of
\(S\), exactly the statement used by Step 2.

An alternative implementation proves the same result on the normalized
torus \(X\), then maps its components continuously through \(\Psi\).
`IsConnected.image` and `Continuous.image_connectedComponentIn_subset`
show that each such image lies in the corresponding seed component.
No assertion that a continuous image is itself a whole component is needed.

### 27. Optional full Theorem 1 — A/C

`endpoints.json` verifies the value, zero gradient and all leading
principal Hessian minors at all 18 actual algebraic seeds. The checker
regenerates the 2,083-term structural Laurent polynomial; it does not trust
a supplied Fourier table. It evaluates all moments in
\(\mathbb Q[T]/(T^2+15)\).

At the base seed the Hessian is \((59049/2048)M\), with the handoff's
integer matrix \(M\). `endpoint_identities.json` provides an explicit
positive sum of four squares for \(-x^TMx\), avoiding eigenvalue root
isolation. The coordinate change in that sum is invertible.

The standard negative-definite-Hessian sufficient condition, plus the
local-maximum census, yields exactly the claimed 18 strict maxima. A
global maximum exists by compactness; the positive candidate forces it to
be one of these, so the global maximum is \(3^{13}/2^{12}\).

The full Laurent-to-Hessian computation is checked in Python here. Only
the smaller sum-of-squares and finite bookkeeping layers have Lean source
in this return; the optional moment computation has not been ported to a
complete Lean evaluator. This omission does not affect the primary (W)
route, whose compact invariant and necessary census avoid that layer.

## Verified Mathlib API inventory

These names were located in the source pinned by the supplied manifest,
commit `51e6992efd06126df61a496bebf8f49482a4e129`. They are source-verified
API references, **not** evidence that our files compile.

| Need | Declaration(s) | Source module |
|---|---|---|
| Unit circle and compactness | `Circle`, `CompactSpace Circle` | `Mathlib.Analysis.Complex.Circle` |
| Finite product compactness | `Pi.compactSpace`, `Function.compactSpace` | `Mathlib.Topology.Compactness.Compact` |
| Locally connected torus route | `ChartedSpace.locallyConnectedSpace`, `piChartedSpace` | `Mathlib.Geometry.Manifold.ChartedSpace` |
| Circle charts | Circle charted-space instance | `Mathlib.Geometry.Manifold.Instances.Sphere` |
| Alternative circle quotient route | `Circle.exp_surjective`, `Circle.isCoveringMap_exp`, `isLocalHomeomorph_circleExp`, `AddCircle.homeomorphCircle'` | `Mathlib.Analysis.SpecialFunctions.Complex.Circle` |
| Local path connectedness of quotient | `Topology.IsQuotientMap.locallyPathConnectedSpace` | `Mathlib.Topology.Connected.LocallyPathConnected` |
| Open components | `IsOpen.connectedComponentIn`, `IsOpen.locallyConnectedSpace` | `Mathlib.Topology.Connected.LocallyConnected` |
| Components and images | `isClosed_connectedComponent`, `IsConnected.image`, `Continuous.image_connectedComponentIn_subset` | `Mathlib.Topology.Connected.Basic` |
| Extreme value theorem | `IsCompact.exists_isMaxOn` | `Mathlib.Topology.Order.Compact` |
| Pullback of local maxima | `IsLocalMax.comp_continuous` | `Mathlib.Topology.Order.LocalExtr` |
| Compact-to-Hausdorff quotient | `Topology.IsQuotientMap.of_surjective_continuous` | `Mathlib.Topology.Separation.Hausdorff` |
| Group orbit quotient openness | `isOpenMap_quotient_mk'_mul`, `MulAction.isOpenQuotientMap_quotientMk` | `Mathlib.Topology.Algebra.ConstMulAction` |
| Open quotient neighborhood identity | `IsOpenQuotientMap.map_nhds_eq` | `Mathlib.Topology.Maps.OpenQuotient` |
| Product of open quotients | `IsOpenQuotientMap.piMap` | `Mathlib.Topology.Constructions` |
| Complex roots | `IsAlgClosed.exists_pow_nat_eq` | `Mathlib.FieldTheory.IsAlgClosed.Basic` |
| Complex algebraic closure | Complex instance | `Mathlib.Analysis.Complex.Polynomial.Basic` |
| First-order extrema | `IsLocalMax.deriv_eq_zero`, `IsLocalMax.fderiv_eq_zero` | `Mathlib.Analysis.Calculus.LocalExtr.Basic` |
| Quadratic Taylor remainder | `taylor_isLittleO`, `taylor_isLittleO_univ` | `Mathlib.Analysis.Calculus.Taylor` |
| Intermediate value theorem | `intermediate_value_Icc` | `Mathlib.Topology.Order.IntermediateValue` |

## Certificate sizes, splitting, and expected Lean cost

The main reduction uses low-degree factored expressions, not a global
four-variable CAD or interval cover. The interior core has degree at most
8 and at most 40 terms per expanded definition. Smooth-boundary formulas
reach degree 10 and 62 terms; the cubic-geometry bundle reaches 93 terms.
The boundary elimination uses 11- and 22-term cofactors. Some optional
restricted-Hessian and reference-resultant definitions have total degree
24. The edge positivity certificates have degree 3 or 5.

Generate one theorem per identity, derivative, substitution and evaluation,
keeping named definitions factored. Compile modules independently, then
assemble the ordered-algebra consequences. The root layer needs only
quadratic/linear monotonicity and the explicit physical secant argument.
The finite orbit checks are separate from polynomial expansion and can be
split into groups of action indices if kernel `decide` becomes expensive.

Expected costs are qualitative, not measured Lean timings: individual
small `ring`/`norm_num` goals should be modest; the larger unit-circle
cofactors and finite-function enumerations deserve separate module limits.
No successful compilation or Lean runtime estimate is claimed in this
environment. `LEAN_NOTES.md` records the actual startup failure.
