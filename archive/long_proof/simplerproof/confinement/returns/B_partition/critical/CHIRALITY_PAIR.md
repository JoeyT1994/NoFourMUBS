# A common descent direction for a tied complementary pair at zero chirality

## The theorem

Let \(E\) be a physical corner and let

\[
R_+=R(X,Y,Z,J),\qquad R_-=R(X,Y,Z,-J)
\]

be its invariant and the same-row complementary invariant. Suppose

\[
4XYZ-J^2=0,\qquad 0<R_+=R_-\le26.
\]

Then zero does not belong to the convex hull of the two four-seed
gradients:

\[
\boxed{\quad
0\notin\operatorname{conv}\{
\nabla_{\rm seed}R_+,\nabla_{\rm seed}R_-\}.
\quad}\tag{1}
\]

Equivalently, there is a seed direction in which **both** tied corner
invariants strictly decrease. Under the target-region reconstruction
assumptions of `CHART_REGULARITY.md`, this direction is realized by an
actual local Hadamard deformation. The same-row/column complementary
copies of these two invariants decrease as well.

This deals with a specific nonsmooth maximum, rather than only a
stationary point of one invariant. It does not establish a common descent
direction for an arbitrary larger set of active corner invariants.

## 1. Reduction to a constrained convex combination

Since \(R_->0\), the square identity gives \(\Im q(E)\ne0\). The full
Gram Jacobian identity in `CHIRALITY_CRITICAL.md` therefore proves that
the four-seed invariant differential has rank exactly three and image
the tangent space of the regular hypersurface

\[
\mathcal D=4XYZ-J^2=0.
\]

If (1) failed, some \(0\le\lambda\le1\) and real \(\mu\) would obey

\[
\lambda\nabla R_++(1-\lambda)\nabla R_-
+\mu\nabla\mathcal D=0.
\tag{2}
\]

The following exact algebra excludes (2). In several steps it even
excludes the larger set with arbitrary real \(\lambda\).

## 2. The case J=0

Here \(XYZ=0\). Two zero invariants force \(R_+\le0\), so exactly one
vanishes. Set \(X=0\), \(Y,Z>0\). The \(Y,Z\) components of the
constraint gradient vanish. Subtracting the corresponding stationary
equations forces either \(Y=Z\) or \(\chi=0\). The latter would give
the impossible derivative \(-4g(6\eta+g)<0\).

Thus \(Y=Z=y>0\), and

\[
R_+=R_-=9y^3(4-y),\qquad
\frac d{dy}R_+=36y^2(3-y).
\]

The only positive stationary value is \(y=3\), \(R_+=243\), outside
the stated interval.

## 3. For nonzero J, at least two Gram invariants coincide

Now \(X,Y,Z>0\). Let
\(\chi_{\rm eff}=\lambda\chi_++(1-\lambda)\chi_-\). Subtracting
the \(X,Y\) components of (2), and cycling, gives

\[
(Y-X)[-2\chi_{\rm eff}+(2\chi_{\rm eff}+4\mu)Z]=0.
\]

If all three invariants were distinct, then
\(\chi_{\rm eff}=\mu=0\). The convex combination would be stationary
in the full invariant space. Such a tied stationary point with nonzero
\(J\) is impossible, as the following short calculation shows.

Put

\[
h=9-p,\qquad B=W-h(h+9),\qquad
C=-h^2+16h-36,\qquad \alpha=2\lambda-1.
\]

The mean and half-difference of the pair are

\[
S=36h^3-B^2+CJ^2,\qquad
\frac{R_+-R_-}{2}=2JT,
\quad T=30h^2+B(h+6)+2J^2.
\]

At a tie with \(J\ne0\), \(T=0\). Full stationarity of
\(S+\alpha(2JT)\) in \(B,J\) gives

\[
B=-\frac{C(h+6)}4,\qquad
\alpha J=-\frac C4,\qquad
J^2=\frac{C(h+6)^2-120h^2}{8}.
\]

The remaining \(h\) equation factors as

\[
0=\frac18(h-6)(h^2-4h+36)(3h^2-20h+60).
\]

The two quadratics have no real roots. At \(h=6\), the displayed
formula for \(J^2\) gives \(-108\), also impossible. Therefore at
least two of \(X,Y,Z\) coincide.

## 4. Complete polynomial elimination for the two-equal case

After permutation write

\[
X=Y=x>0,\quad Z=v=t^2>0,\quad J=2xt.
\]

Positive definiteness of the physical Gram matrix gives \(v<9\).
Both signs of \(t\), hence both signs of \(J\), are included. Let
\(S=(R_++R_-)/2\). Direct expansion gives

\[
R_+-R_-=8xtL(x,v),
\]

where

\[
L=v^3+v^2x^2+4v^2x-12v^2+2vx^3-18vx+27v
  +6x^3-33x^2+54x,
\]

and

\[
\begin{aligned}
S={}&-v^4-6v^3x^2-4v^3x+18v^3-v^2x^4-20v^2x^3
 +52v^2x^2-81v^2\\
&-22vx^4+112vx^3-270vx^2+324vx-9x^4+36x^3.
\end{aligned}
\]

At a tied stationary pair,

\[
L=0,\qquad W=S_xL_v-S_vL_x=0.
\tag{3}
\]

This is necessary even if \(\nabla L=0\); no division by that gradient
has been made. The exact resultant is

\[
\operatorname{Res}_x(L,W)
=256v(v-9)^3(v+3)^4 A(v)B(v)P(v),
\tag{4}
\]

with

\[
\begin{aligned}
A(v)&=v^3-3v^2-5v-9,\\
B(v)&=3v^3+11v^2-63v+81,\\
P(v)&=16v^{11}-671v^{10}+9938v^9-55199v^8+18456v^7
 +572130v^6+487116v^5\\
&\quad-5938326v^4-6365304v^3+15470109v^2+23702706v+9585621.
\end{aligned}
\]

The factors \(v,v-9,v+3\) cannot vanish in \(0<v<9\). The remaining
three branches have the following exact eliminations, where \(r=S\)
is the common corner value:

* On \(A(v)=0\), equations (3) force \(r=0\).
* On \(B(v)=0\), they force

  \[
  729r^3-903276800r^2+1127734493184r-406239826673664=0.
  \]

* On \(P(v)=0\), they force \(Q(r)=0\), with

  \[
  \begin{aligned}
  Q(r)={}&16384r^{11}-1299106809r^{10}+30774073636619r^9
  -23327218740105472r^8\\
  &+105521919632049192960r^7-21320078876075504959488r^6
  +88428776035175751173013504r^5\\
  &+25439661530693188947749634048r^4
  -18123923046054001130629691867136r^3\\
  &+4304489948135647968174930281889792r^2
  +3445853318497197487557240057445220352r\\
  &+249880348505486480647134076982865690624.
  \end{aligned}
  \]

These are exact ideal eliminations, reproduced by the verifier. They
retain every solution of (3), including possible rank drops and
extraneous nonphysical solutions.

The cubic is strictly negative on \([0,26]\): keeping only its positive
terms at their maxima gives the upper bound
\(-376918717037976<0\). The polynomial \(Q\) is strictly positive on
that interval: keep its constant term, drop all other positive terms,
and evaluate every negative term at 26. The resulting lower bound is

\[
249561795843048787133836027549064428544>0.
\]

Thus none of the branches admits \(0<r\le26\). This excludes (2) and
proves (1).

## Verification and remaining gap

`verify_chirality_pair.py` regenerates every polynomial identity and
resultant, checks the exact ideal reductions, and proves both uniform
interval signs using integer arithmetic. It requires SymPy. No sampled
roots or floating-point values decide the result.

Together with `CHIRALITY_CRITICAL.md`, this excludes both single-active
stationarity (when the complementary invariant is positive) and a tied
complementary pair on the entire zero-chirality stratum. An arbitrary
full maximum may still have additional active corner gradients. Proving
that they share a descent direction remains necessary for global
confinement.
