# Refining a certified strong-coordinate enclosure

This note concerns only a local bound inside the existing exhaustive fiber
cover. It does not reduce the original H parameter cell or source phase ball.

Write the orthonormal phase coordinates as `(t,y)`, with `t` in a closed
two-dimensional slab `T` and `y` in three strong directions. Let

\[
g_H(t,y)=L F_H(O(t,y)),
\]

where `L` is the fixed exact preconditioner used by the cover. Choose any exact
numerical reference `y0` and rigorously bound

\[
b\geq \sup_{H,\,t\in T}\|g_H(t,y_0)\|_2.
\]

Suppose the current source-domain derivative bound gives

\[
\|I-D_y g_H(t,y)\|_2\leq q_0<1
\]

on every segment joining `y0` to a possible source zero. The existing fiber
argument then proves that every such zero satisfies

\[
\|y-y_0\|_2\leq\rho_0:=b/(1-q_0).
\]

This first enclosure is a proved necessary condition. Consequently, every
segment from `y0` to a surviving zero lies in the closed ball
`B(y0,rho0)`. Recompute a rigorous derivative bound `q1` on this smaller
convex set (uniformly over the same `T` and the same H cell). If `q1<1`, the
identical mean-value argument proves

\[
\|y-y_0\|_2\leq\rho_1:=\min\{\rho_0,b/(1-q_1)\}.
\]

The refinement can be repeated any finite number of times. Existence is not
assumed or proved; each implication holds for every source zero that may
exist. For a radial derivative majorant centered at zero, it is enough to use
the strong-coordinate radius

\[
Y_k=\|y_0\|_2+\rho_k.
\]

If the original source-ball constraint gives an independent strong-coordinate
bound `||y|| <= Ysrc` for the slab, the segment is also contained in the
origin-centered ball of radius `max(||y0||,Ysrc)`. Thus one may use the minimum
of that valid radius and `||y0||+rho_k` when evaluating a radial majorant.
All minimum operations must retain outward-rounded upper bounds.

The enclosure is useful even when the original derivative constant is close
to one. A small first certified `rho` can place all possible zeros in a region
where a substantially sharper derivative bound is available. If the original
proof never obtains any `q<1`, this bootstrap alone supplies no initial
enclosure and cannot justify contraction.

## Proof

For a zero `y*`, integrate the derivative on the segment from `y0` to `y*`:

\[
y_*-y_0
=-g_H(t,y_0)
  +\int_0^1[I-D_y g_H(t,y_0+s(y_*-y_0))](y_*-y_0)\,ds.
\]

Taking norms gives `(1-q)||y*-y0|| <= b`. The first valid derivative domain
establishes `rho0`; each proved enclosure then supplies a smaller domain for
the next application. The source-domain and model quantifiers are unchanged
throughout.

## A sharper initial enclosure from an averaged derivative bound

The current slab majorant has the form

\[
\|I-D_y g_H(t,y)\|_2\leq
P(\|y\|_2),\qquad
P(Y)=c_0+c_1Y+c_2Y^2+c_3Y^3,
\]

where all coefficients are nonnegative, uniform in the same full H cell and
weak slab, and independent of `Y`. Let `a` bound `||y0||` and let `b>=a` bound
the norm of every possible source endpoint. For the segment to any source
zero,

\[
\|y_0+s(y_*-y_0)\|\leq(1-s)a+sb.
\]

The averaged **Jacobian defect** consequently satisfies

\[
\left\|\int_0^1
  [I-D_y g_H(t,y_0+s(y_*-y_0))]\,ds\right\|_2\leq\bar q,
\]

where

\[
\bar q=c_0+c_1\frac{a+b}{2}
+c_2\frac{a^2+ab+b^2}{3}
+c_3\frac{a^3+a^2b+ab^2+b^3}{4}.
\]

Whenever `qbar<1`, the proof above gives the necessary enclosure
`rho=b_residual/(1-qbar)`. Here `b_residual` denotes the forcing bound called
`b` in the first section. This conclusion only needs a bound on the averaged
defect `I - D_y g` along the relevant segments. It does not assert a pointwise
contraction on the entire source ball, and it can succeed when the pointwise
bound at the largest strong radius exceeds one.

There is no need to duplicate the coefficient calculation. Positive two-point
Gauss–Legendre quadrature integrates the cubic exactly:

\[
Y_\pm=\frac{a+b}{2}\pm\frac{b-a}{2\sqrt3},
\qquad \bar q=\frac{P(Y_-)+P(Y_+)}2.
\]

The prototype `fiber_secant.py` calls the unchanged production derivative
majorant at these two outward-rounded strong radii, with
`min_t_squared=0` in each derivative-only problem. Nonnegative coefficients
ensure that rounding the radii upward is safe. The exact same segment argument
permits refinement after a necessary `rho` has already been established.
The original source radius remains in every radial and capture test.
