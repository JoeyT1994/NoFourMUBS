# Step 1 route: remove the sextic, retain only small exact certificates

## Decision

The primary formalization target should be **(W): every connected component
of the positive seed set contains an orbit point**. Prove it by classifying
the possible positive local maxima and then using compactness. A monotone
flow is unnecessary and is not assumed.

Use the deltoid route in the handoff, with three changes:

1. Replace the entire double-interior resultant, sextic, Gröbner basis,
   Sturm census, and algebraic interval calculation by the new sign argument
   proved below.
2. Replace every needed edge/cusp root exclusion by a positive Bernstein
   expansion. The one relevant quadratic root is captured directly by a
   secant identity and rational endpoint signs.
3. Transfer local maxima through a **continuous map followed by an open
   finite quotient**. No differentiable inverse of the normalized seed map,
   branch of a cube root, or inverse function theorem for that map is needed.

The only nontrivial elimination retained in the primary route is one
two-boundary polynomial identity with explicit **11-term and 22-term
cofactors**. Every branch consequence also has explicit small cofactors.

The endpoint certificates additionally verify the full 18-point orbit,
its exact values and Hessians, so the stronger Theorem 1 remains a paper
corollary. Its Hessian layer is not a prerequisite for (W).

The source claims being converted are those in the supplied handoff. This
return addresses Step 1 only; it does not certify the later no-four-MUBs
steps or discharge `NoFourMUBs.Inputs`.

## Parametrization

Use `Circle` (unit complex numbers) and finite products for topology. Use
real and imaginary parts, with rational polynomial expressions, for
calculus and certificates. Avoid global angle coordinates.

Let

\[
X_1=\{(e_1,e_2,e_3)\in\mathbb T^3:e_1e_2e_3=1\},\qquad X=X_1\times X_1.
\]

The map \((e_2,e_3)\mapsto((e_2e_3)^{-1},e_2,e_3)\) identifies
\(X_1\) with \(\mathbb T^2\). Thus \(X\) is compact and locally path
connected, as is the seed torus \(Y=\mathbb T^4\).

For \((e,o)\in X\), set

\[
U=e_1+e_2+e_3,\quad V=o_1+o_2+o_3,
\]

\[
\Psi(e,o)=\left(e_1/o_2,\ o_1/e_3,\ o_1/e_2,\ e_1/o_3\right).
\tag{1}
\]

This is continuous and surjective. In fact, with \(\rho=e_1o_1\), the
resulting seed satisfies \(abcd=\rho^3\), and its normalized permutation
products are exactly \(e,o\). Conversely, normalize any seed using any
unit cube root of \(abcd\). The fibers of \(\Psi\) consist of common
cubic rotations of the two triples. Those rotations leave the compact
formula for \(R\) invariant.

These observations can also define \(R\) continuously on \(Y\): the
continuous surjection \(\Psi\) from compact \(X\) to Hausdorff \(Y\)
is a quotient map, and the polynomial trace expression is constant on its
fibers. The optional Laurent checks in `endpoints.json` independently
identify this expression with the handoff's original structural circuit.

### Why continuity is enough

If \(p\in Y\) is a local maximum and \(x\in\Psi^{-1}(p)\), then
\(R\circ\Psi\) has a local maximum at \(x\), simply by taking the
preimage of a maximum neighborhood.

The trace map \(X_1\to\mathcal D\) is open. Its fibers are precisely
the \(S_3\)-orbits: the unordered roots are recovered from

\[
t^3-Ut^2+\bar U t-1.
\]

The induced bijection \(X_1/S_3\to\mathcal D\) is a homeomorphism
by compactness and the Hausdorff property. A group quotient map is open
because the saturation of an open set is a union of its translates.
Consequently a maximum of the pullback descends to a maximum relative to
\(\mathcal D^2\), including at repeated roots and cusps.

The same pattern can remove angle-coordinate inverse-function arguments
on the double boundary. Parametrize the repeated roots by \(zw,z/w\)
with \(z,w\in\mathbb T\). The map
\((z,w)\mapsto(\operatorname{Re}w,\operatorname{Re}z^3)=(c,h)\)
is open onto \([-1,1]^2\): the cube map is an open quotient of the
circle, and real part is the open quotient by conjugation. Thus the
polynomial square-coordinate problem is obtained without discarding any
boundary lifts.

## New theorem: every positive ambient critical point is unstable

For arbitrary \(A,B\in\mathbb C\), put

\[
u=|A|^2,\quad v=|B|^2,\quad
C=\frac{(3u-v)(v-u+12)}2-2\operatorname{Re}(AB^2),
\]

\[
\mathcal R(A,B)=4(2v-3u)^2(v-2u)-C^2.
\]

**Theorem.** Every critical point of \(\mathcal R\) having positive
value has a real direction of strictly positive second derivative.
In particular, there is no positive local maximum on \(\mathbb C^2\).

**Proof.** Positivity implies \(d=v-2u>0\),
\(g=2v-3u=u+2d>0\), and \(v>0\). The circle action

\[
(A,B)\longmapsto(\bar\zeta^2 A,\zeta B),\quad |\zeta|=1,
\]

preserves \(u,v,AB^2\) and is an invertible real linear map. Choose
\(\zeta=\bar B/|B|\), so \(B=\sqrt v>0\), and write \(A=x+iy\).
Define

\[
u=x^2+y^2,\qquad
H(x,y,v)=4(2v-3u)^2(v-2u)-C(x,y,v)^2,
\]

\[
C(x,y,v)=\frac{(3u-v)(v-u+12)}2-2vx.
\]

An ambient critical point has \(H_x=H_y=H_v=0\); the last equality
uses \(\partial_{\operatorname{Re}B}H=2\sqrt v\,H_v\).

First,

\[
H_v=4g(6v-11u)-2CC_v,
\qquad 6v-11u=u+6d>0.
\]

Therefore \(C\ne0\). The certified identity

\[
\boxed{yH_x-xH_y=4vyC}
\tag{2}
\]

forces \(y=0\). Write \(c=C(x,0,v)\) and \(f=H(x,0,v)\).

Suppose \(x=-h\le0\), with \(h\ge0\), and write
\(v=2h^2+d\), \(d>0\). The decisive identity is

\[
\boxed{
\left.(c_xf_v-c_vf_x)\right|_{x=-h,\,v=2h^2+d}
=-8(h^2+2d)W(h,d),
}
\tag{3}
\]

where

\[
W=(2h+6)d^2+(6h^3+33h^2+48h)d+h^5+6h^4+6h^3.
\]

All coefficients are nonnegative, and \(W\ge6d^2>0\). At a critical
point the left side of (3) is zero and the right side is negative. Hence
\(x>0\); this includes the exclusion of \(x=0\) without a separate
argument-function case.

Now the remaining equation is

\[
0=f_v=4(x^2+2d)(x^2+6d)+2c(d+2x+6).
\tag{4}
\]

Both the first term and the coefficient of \(c\) are positive, so
\(c<0\). Finally,

\[
\boxed{xH_{yy}(x,0,v)=f_x-4vc=-4vc>0.}
\tag{5}
\]

Thus \(H_{yy}>0\). Varying the imaginary part of \(A\), with \(B\)
fixed, gives the promised unstable direction. ∎

The source-linked derivatives, substitutions and identities (2)–(5) are
in `interior_core.json`. Its largest expanded definition has degree 8
and 40 terms. The exact checker also verifies the nonnegative coefficients
used in the sign argument. Full details and the single-boundary/cusp
arguments are in `INTERIOR_NOTES.md`.

## Completing the maximum classification

The deltoid geometry is certified by its discriminant and unit-circle
identities. For one smooth boundary trace and one interior trace, the
invariant circle orbit either enters the interior to first order or has

\[
\frac{d^2}{d\tau^2}\Delta(U_\tau)\bigg|_0
=-\frac92(r+2)^2|z^3-1|^4<0.
\]

The zero cases are precisely a cusp or a second boundary trace. The cusp
with the other trace interior is excluded by the explicit factorization
\(R=-4FG^2\) and a positive cubic Bernstein certificate. Hence both
traces must be on the boundary.

There the invariant is

\[
R(c,h)=-256L^2M^2N,
\]

\[
L=2c^2+1,\quad M=8c^4+4c^3h-4c^2+1,
\]

\[
N=16c^4+16c^3h+4c^2h^2-4c^2-4ch-1.
\]

The explicit normalized eliminant and three branch memberships in
`boundary_core.json` leave one positive interior stationary branch.
It has one cusp trace. Splitting the repeated roots in the other trace
is an actual curve in \(\mathcal D^2\), and its curvature is

\[
660(46y+9),\qquad 4y^2+6y+1=0,\qquad y\ge-1.
\]

The secant identity

\[
f(y)-f(a)=(y-a)(4(y+a)+6),\quad f(y)=4y^2+6y+1,
\]

with exact signs at \(a=-49/256\) and \(a=-3/16\), captures **every**
such physical root in

\[
-49/256<y<-3/16.
\]

It follows that the curvature is \(>4125/32>0\). This is stronger than
merely recording that one root exists in the isolating interval.

On \(h=1\), positivity forces \(-1/2<c<1/2\). The derivative factors
into nonzero factors and \(4c-1\). Nonvanishing of the cubic and
quintic factors follows from four positive Bernstein expansions, whose
intervals are also checked to cover the whole required interval. The sole
survivor is \((c,h)=(1/4,1)\), together with the equivalent
\((-1/4,-1)\) parametrization.

Its normalized root multisets are, up to common cubic rotation and exchange,

\[
\{q,q,q^{-2}\},\quad\{q^{-1},q^{-1},q^2\},
\qquad q=(1+i\sqrt{15})/4.
\]

All three placements of each distinct root, and both exchanges, give
exactly the 18 seed vectors in `endpoints.json`. The integer orbit/lift
identities are also emitted in `lean/Step1/FiniteOrbit.lean`. The exact
Python checker additionally verifies distinctness of the actual algebraic
phase tuples, not merely of their integer exponent vectors.

## From the census to (W)

Here is the topology in full. Let \(Y\) be compact, Hausdorff and locally
connected, and let \(R:Y\to\mathbb R\) be continuous. Put
\(S=\{R>0\}\). Let \(C\) be a nonempty connected component of \(S\).
Because \(S\) is open and \(Y\) is locally connected, \(C\) is open in
\(Y\). A component is closed relative to \(S\), so

\[
\overline C\cap S=C.
\]

Continuity gives \(R\ge0\) on \(\overline C\), and therefore
\(R=0\) on \(\overline C\setminus C\). The closure is compact, so
\(R\) attains its maximum there. That maximum is strictly positive,
because \(C\ne\varnothing\). Its maximizer lies in \(C\), which is
open, so it is an ambient positive local maximum. The classification
places it in the orbit \(O\). Hence \(C\cap O\ne\varnothing\). ∎

Local connectedness is essential in this general lemma; it is not being
silently inferred from compactness. It holds for the seed torus.

## Certificate and Lean scope

`verify_certificates.py` checks the emitted JSON with integer and rational
arithmetic only, including its timing data. It never imports a generator,
SymPy, flint, or any supplied reference verifier. It uses explicit checks
that remain enabled under `python -O`.

`STEP1_BLUEPRINT.md` separates every analysis/topology lemma from every
finite certificate. `STATUS.md` separates paper proofs, exact computation,
compiled Lean, and exploratory material. The Lean source is supplied with
ordinary proof tactics and kernel `decide`; its actual compilation status
must be taken from that status file, not inferred from file existence.
