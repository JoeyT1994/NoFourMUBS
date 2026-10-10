# Double-boundary certificates and the remaining analytic bridges

## Result

The complete algebraic classification on the double-deltoid-boundary stratum
has been converted into **58 explicit exact checks**. No resultant, Gröbner
basis, Sturm count, numerical root finder, or symbolic differentiation oracle
is used by the acceptance checker. The generator may use SymPy; the checker
expands rational polynomials, differentiates coefficient arrays, performs
substitutions, evaluates rational points, and verifies Bernstein expansions.

The certificates imply the following conditional classification:

> If a positive local maximum of the seed invariant is known to have both
> deltoid traces on the boundary, then its boundary coordinates are
> \((c,h)=(1/4,1)\) or \((-1/4,-1)\). The apparent positive stationary
> branch in the open \((c,h)\)-square has strictly positive curvature along
> an explicitly described curve of actual unit-product root triples.

The conclusion uses ordinary calculus, the continuous map from ordered
unit-product triples to corner seeds, and openness of the finite trace
quotient. Those analytic facts are not replaced
by a claim that checking polynomial identities proves local maximality.
They are set out below for inclusion in the main blueprint.

No error was found in the reference two-boundary classification. Its
resultant and Gröbner computations admit small explicit witnesses, and its
two Sturm exclusions admit substantially simpler positivity witnesses.

## Files and exact checks

| Certificate | Checks | Content |
|---|---:|---|
| `certificates/boundary_trace.json` | 3 | Explicit ideal-membership witnesses connecting the boundary traces with \(u,v,w\). |
| `certificates/boundary_core.json` | 36 | Structural factorization, derivatives, vertical edges, origin curvature, normalized eliminant, all branch relations, branch values, and the optional restricted Hessian calculation. |
| `certificates/boundary_curvature.json` | 8 | Cusp factorization, actual splitting curve, its derivative, and the positive-curvature remainder. |
| `certificates/boundary_edges.json` | 11 | Edge factorization and derivative, symmetry, surviving value, four rational Bernstein positivity certificates, and two exact interval-coverage checks. |

The four JSON files occupy about 96 KB before any later integration changes.
The largest expanded definition has 54 terms. The largest total degree is
24, arising in optional restricted-value/Hessian formulas and in the
reference-sized eliminant. The normalized elimination identity is smaller.
An exact Python replay of these files took about 0.04 seconds in this
environment; this is a measured implementation observation, not a Lean
compilation claim.

`generation/generate_boundary.py` regenerates these four files. It is
generation machinery, not part of the trusted acceptance layer.

### Schema

Each file has kind `polynomial_bundle`, a list of variable names, and named
polynomial `definitions`. Expressions are rational strings, variable or
definition names, or the documented `add`, `mul`, `neg`, and nonnegative
integer `pow` arrays. Every numerical JSON value is a string.

In addition to polynomial `identities`, the files use these sections:

* `derivatives`: `{name, of, variable, order, equals}`. The checker
  differentiates the expanded source exactly and checks coefficient
  equality.
* `substitutions`: `{name, source, replacements, result}`. Replacements are
  simultaneous polynomial substitutions.
* `evaluations`: `{name, polynomial, at, equals}`. Every variable has a
  rational value; irrelevant variables are set to zero.
* `positivity`: `{name, polynomial, variable, lower, upper, coefficients,
  lower_bound}`. The checker verifies the affine Bernstein expansion and
  that every Bernstein coefficient is at least the strictly positive
  claimed lower bound.
* `interval_covers`: `{name, lower, upper, positivity_names}`. The checker
  verifies that the named positivity intervals cover the claimed closed
  interval, refer to the same polynomial and variable, and have no gaps.

## 1. Boundary trace expansion

Put \(z=e^{im}\), \(z_i=e^{-im}\), \(s_2=\sin^2n\), \(c=\cos n\),
and \(h=\cos3m\). For the two boundary traces, their sum and difference
have the forms

\[
A=4cz+2(2c^2-1)z_i^2,\qquad
B=4i\sin n\,(z-cz_i^2).
\]

Write

\[
\bar A=4cz_i+2(2c^2-1)z^2,\quad
D=z-cz_i^2,\quad \bar D=z_i-cz^2.
\]

Consequently the direct expressions are

\[
u=A\bar A,\quad v=16s_2D\bar D,\quad
w=-16s_2(A D^2+\bar A\bar D^2).
\]

For each one, the certificate supplies explicit cofactors for its
difference from the reference formula, using precisely the three
generators

\[
zz_i-1,\qquad s_2+c^2-1,\qquad 2h-z^3-z_i^3.
\]

Thus the trace expansion does not depend on trusting a Laurent reduction.
These rational polynomial identities can be specialized over the complex
numbers. The elementary exponential identities identifying the displayed
formal conjugates with actual conjugates remain part of the analytic
coordinate setup.

## 2. The reduced polynomial and stationarity

Define

\[
L=2c^2+1,\quad M=8c^4+4c^3h-4c^2+1,
\]

\[
N=16c^4+16c^3h+4c^2h^2-4c^2-4ch-1.
\]

The first core identity is

\[
R=-256L^2M^2N=4g^2\eta-\chi^2.
\]

At \(R>0\), therefore, \(L>0\), \(M\ne0\), and \(N<0\).
The derivative certificates verify

\[
R_c=-1024LMP,\qquad R_h=-1024cL^2MQ,
\]

where `P` and `Q` are exactly the reference polynomials, explicitly
present in the file.

At \(c=\pm1\), the certified substitutions give \(v=0\) and
\(\eta=-8(5\pm4h)<0\) for \(|h|\le1\). Hence \(R\le0\), excluding
both vertical edges at positive points.

For \(|c|,|h|<1\), the coordinate map
\((m,n)\mapsto(\cos n,\cos3m)\) has nonzero Jacobian. Once local
maximality has descended to the trace domain by the open-quotient argument
below, restriction to the boundary surface makes it a local maximum of
\(R(c,h)\). It must therefore satisfy \(R_c=R_h=0\).

At \(c=0\), the substitutions give \(R=256\) and \(R_c=1024h\).
Stationarity forces \(h=0\), and the certified Hessian entries there are

\[
H_{cc}=H_{hh}=0,\qquad H_{ch}=1024.
\]

The direction \((1,1)\) has second derivative \(2048>0\). This is a
particularly simple calculus contradiction to local maximality; a
determinant criterion is unnecessary.

## 3. Small elimination and ideal-membership witnesses

For \(c\ne0\), stationarity implies \(P=Q=0\). The certificate proves
the identity

\[
S P+T Q=
2c(4c^2-1)(2c^2-1)(2c^2+1)^2
(6c^2-4c+1)(6c^2+4c+1)(16c^4-4c^2-1).
\tag{E}
\]

The cofactor `eliminant_P_cofactor` has 11 terms and
`eliminant_Q_cofactor` has 22 terms. This identity is the reference
resultant identity with the common factor \(128c^7\) cancelled. It is
valid as an unconditional polynomial identity, including at \(c=0\);
division by \(c\) is needed only when drawing the stationary-point
consequence.

Both additional quadratics are positive by the certified identities

\[
3(6c^2\pm4c+1)=2(3c\pm1)^2+1.
\]

Thus only three branches can remain. Write

\[
f_1=4c^2-1,\quad r_1=h+2c,
\qquad f_2=2c^2-1,\quad r_2=h+c,
\]

\[
f_3=16c^4-4c^2-1,\quad r_3=h-4c^3+3c.
\]

The explicit membership certificates have the small forms

\[
3r_1=4P-2(4c+7h)Q+A_1f_1,
\]

\[
4r_2=P-(9c+5h)Q+A_2f_2,
\]

\[
11r_3=4(6c^2-1)P-(72c^3+60c^2h+10c+h)Q+A_3f_3.
\]

Here \(A_1,A_2,A_3\) are the explicit 12-, 11-, and 12-term
polynomials named `half_factor_cofactor`,
`sqrt_half_factor_cofactor`, and `golden_factor_cofactor` in the JSON.
The leading constants are nonzero rational integers, so these identities
give each claimed relation with no exceptional denominator locus.

Two especially small identities dispose of the first two branches:

\[
N=f_1+4cr_1(ch+2c^2-1),
\tag{N1}
\]

\[
N=f_2(L+4cr_2)+4c^2r_2^2.
\tag{N2}
\]

They force \(N=0\), contradicting positive \(R\). Expanding the full
invariant into a large ideal-membership witness is unnecessary.

For the third branch, the certificate substitutes \(h=4c^3-3c\)
and gives an explicit multiple of \(f_3\) for

\[
R(c,4c^3-3c)-(450-1100c^2).
\]

The file also verifies the optional reference Hessian reductions

\[
H_{cc}=6480-23040c^2,\quad H_{ch}=2240c^2-480,\quad
H_{hh}=80-2240c^2
\]

modulo \(f_3\), with determinant
\(3200000-2560000c^2\). These establish that the positive stationary
branch is a maximum within the boundary surface. They are not needed for
the exclusion proof, whose required argument is transverse.

## 4. Actual transverse instability

On the third branch,

\[
\cos3m=4\cos^3n-3\cos n=\cos3n.
\]

The elementary cosine classification gives
\(m=\pm n+2\pi k/3\). Swapping the two traces and using their common
cubic-rotation freedom reduces the configuration to

\[
V=3,\quad U=2e^{it}+e^{-2it},\quad y=\cos t=2c^2-1.
\]

The polynomial relation becomes

\[
4y^2+6y+1=0.
\]

Since \(y\) is a cosine, \(y\ge-1\). The central algebraic-number
certificates use the interval

\[
-\frac{49}{256}<y<-\frac3{16}.
\tag{I}
\]

It is essential to prove that the physical root lies in this interval,
not merely that there is exactly one root inside it. Let
\(f(y)=4y^2+6y+1\), \(a=-49/256\), \(b=-3/16\). The identity

\[
f(y)-f(a)=(y-a)(4(y+a)+6)
\]

has positive second factor for every \(y\ge-1\): it is at least
\(79/64\). Since \(f(y)=0\) and \(f(a)<0\), this forces \(y>a\).
Using \(b\) in the same identity gives a second factor at least \(5/4\).
Since \(f(b)>0\), it forces \(y<b\). These exact secant identities
capture every admissible physical root in (I), without choosing a square
root branch. The optional radical description is
\(y=(-3+\sqrt5)/4\).

Split the repeated pair in the noncusp trace:

\[
U(\varepsilon)=2e^{it}\cos\varepsilon+e^{-2it},\qquad V(\varepsilon)=3.
\]

Every point on this curve is a pair of unit-product triples, hence a point
of the actual trace domain. Since a seed local maximum descends to a trace
local maximum, positive curvature on this curve directly gives the required
contradiction. No differential lifting theorem for the seed cover is
required, and the curve is not an arbitrary ambient displacement outside
the trace domain.

Here is a smaller calculation than the reference ambient-gradient
expansion. With \(U=x+ib\), \(b_2=b^2\), the certificate first verifies

\[
R(x+ib,3)=-4(b_2+2x^2+24x+18)(b_2+5x^2+18x+9)^2.
\tag{C}
\]

Set \(q=\cos\varepsilon\). The curve has

\[
x=2yq+2y^2-1,\qquad b_2=4(1-y^2)(q-y)^2.
\]

After this substitution, let the resulting polynomial be \(R_s(y,q)\).
The certificate stores its short factored expression and checks its
derivative with respect to \(q\). Because \(q'(0)=0\) and
\(q''(0)=-1\), the desired second derivative is
\(-\partial_qR_s(y,1)\). Its exact factorization is

\[
1536y^2(y+2)^2(2y+1)^2
(8y^5+24y^4+35y^3+21y^2+8y+3).
\]

The explicitly certified reduction modulo \(4y^2+6y+1\) is

\[
\frac{d^2R}{d\varepsilon^2}(0)=660(46y+9).
\]

The lower endpoint in (I) gives the exact inequalities

\[
46y+9>\frac{25}{128},\qquad
\frac{d^2R}{d\varepsilon^2}(0)>\frac{4125}{32}>0.
\]

The curvature calculation itself does not require arithmetic in a
quadratic extension. An isolated real root and a rational lower bound
suffice. The first derivative along the split is zero because
\(q'(0)=0\). The usual second derivative condition therefore excludes
local maximality on this entire stationary branch.

## 5. Horizontal edges without Sturm sequences

By the certified simultaneous-sign symmetry, it is enough to consider
\(h=1\). The edge factorization can be written

\[
R(c,1)=-256(4c^2-1)(2c+1)^4(2c^2+1)^2T(c)^2,
\]

where

\[
T(c)=4c^3-2c+1.
\]

Positivity forces \(-1/2<c<1/2\). Differentiation gives

\[
\frac{d}{dc}R(c,1)=
-1024(2c+1)^4(4c-1)(2c^2+1)T(c)F(c),
\]

\[
F(c)=32c^5+4c^4-4c^3+4c^2-4c+1.
\]

The following Bernstein coefficients are supplied exactly:

| Polynomial | Interval | Bernstein coefficients | Positive lower bound |
|---|---|---|---:|
| \(T\) | \([-1/2,1/2]\) | \(3/2,11/6,1/6,1/2\) | \(1/6\) |
| \(F\) | \([-1/2,0]\) | \(15/4,69/20,51/20,19/10,7/5,1\) | \(1\) |
| \(F\) | \([0,1/4]\) | \(1,4/5,5/8,15/32,21/64,15/64\) | \(15/64\) |
| \(F\) | \([1/4,1/2]\) | \(15/64,9/64,3/32,1/8,3/10,3/4\) | \(3/32\) |

For example, on an interval \([a,b]\), the checker verifies exactly

\[
p(a+(b-a)t)=\sum_{i=0}^n \beta_i\binom ni t^i(1-t)^{n-i}.
\]

For \(0\le t\le1\), the Bernstein basis is nonnegative and sums to
one. Therefore every row proves its claimed uniform positive lower
bound, including the interval endpoints. The three intervals for \(F\)
cover the whole required edge interval.

A positive edge local maximum has zero derivative with respect to
\(c\). Every displayed factor except \(4c-1\) is nonzero there, so
\(c=1/4\). The value certificate gives

\[
R(1/4,1)=\frac{1594323}{4096}=\frac{3^{13}}{2^{12}}.
\]

The other edge gives \((-1/4,-1)\). Recovering all ordered-root lifts
and identifying their seed-map orbit belongs to the endpoint/orbit
certificate layer handled elsewhere in the package.

## 6. Why the topology requires no differential seed-cover theorem

Let \(X_1\) be the compact space of ordered triples of unit complex numbers
with product one, and \(X=X_1\times X_1\). Define

\[
\Psi(e,o)=(e_1/o_2,\ o_1/e_3,\ o_1/e_2,\ e_1/o_3).
\]

This map is continuous and surjects onto the seed torus. For an arbitrary
pair of triples, put \(\rho=e_1o_1\). A direct calculation gives
\(abcd=\rho^3\), and the normalized even and odd triples of the resulting
seed are exactly \(e\) and \(o\). Conversely, choosing a cube root of
\(abcd\) constructs such a lift for every seed. These are global
identities; no nonsingular Jacobian assumption is involved.

A local maximum pulls back under any continuous map. Thus a seed local
maximum pulls back to a local maximum of \(R\circ\Psi\) at every chosen
preimage in \(X\).

The trace map \(\tau:X_1\to\mathcal D\),
\(\tau(e)=e_1+e_2+e_3\), has exactly the permutation orbits as its
fibers. Indeed, the unordered triple is determined by the roots of

\[
T^3-U T^2+\overline U T-1.
\]

Consequently the induced continuous bijection
\(X_1/S_3\to\mathcal D\) is a homeomorphism, using compactness of the
domain and the Hausdorff property of the trace domain. The finite-group
quotient is open: for an open set \(N\),

\[
\pi^{-1}(\pi(N))=\bigcup_{\sigma\in S_3}\sigma N
\]

is open. The product trace map is therefore open as well.

Since \(R\circ\Psi\) depends only on the two traces, a local maximum
upstairs descends to a local maximum on \(\mathcal D^2\): the image of
its witnessing open neighborhood is an open neighborhood on which the
same inequality holds. This argument includes repeated-root strata and
cusps. It removes every need to prove that \(\Psi\) is a local
diffeomorphism or to select differential lifts of the splitting curve.

For the weaker component statement, one can also work upstairs throughout:
the continuous image of a connected positive component of \(X\) is
contained in a single positive seed component. If the former contains a
point mapping into the orbit, so does the latter. The direct local-maximum
pullback and open-quotient descent is sufficient for the present boundary
classification.

## Lean boundary of trust

The polynomial identities can each be translated directly into a theorem
over `ℚ`, `ℝ`, or `ℂ` proved by `ring`; explicit consequence lemmas can
use `linear_combination`, `nlinarith`, and nonzero-factor cancellation.
Derivative certificate checks should be accompanied by the ordinary
polynomial differentiation lemmas for the chosen real coordinate chart.

For the Bernstein layer it is enough to prove once that a finite Bernstein
expansion with coefficients at least \(m>0\) takes values at least \(m\)
on \([0,1]\), or to specialize each degree-three/five expansion and use
nonnegativity of powers together with its partition-of-unity identity.
No real-root counting algorithm is required for the two edge factors.

The outstanding analytic bridges for the boundary argument are:

1. Pullback of local maximality by the continuous map \(\Psi\), and
   descent through the open finite trace quotient as proved above.
2. The inverse function/local-coordinate statement for
   \((\cos n,\cos3m)\) when \(|c|,|h|<1\).
3. First and second derivative conditions at a real local maximum.
4. The elementary cosine equality used to identify the cusp branch.
5. The chain rule for the explicit splitting curve inside the trace domain.

None of these is an unverified finite algebraic computation. They must
still be proved in the chosen Lean analysis layer before claiming a
kernel-checked global local-maximum classification. Compilation status is
reported centrally in `STATUS.md`.
