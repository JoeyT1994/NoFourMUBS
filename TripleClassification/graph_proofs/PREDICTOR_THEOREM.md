# Correlated predictor capture for MUB columns

## Status and exact scope

**PROVED.** The theorem below is a sufficient condition for capturing every
unbiased vector in a supplied coarse cap, uniformly over the **entire supplied
normal-form model**. The implementation is `code/predictor_tubes.py`, using Arb
arithmetic for every acceptance inequality.

**NOT CLAIMED HERE.** These local captures do not show that the source caps cover
all unbiased roots in a wide column region. An exhaustive exclusion cover, or
another separately proved completeness theorem, must establish that fact.
Candidate search and a stable apparent root count cannot supply this obligation.

The root proposals, inverses, and predictors are arbitrary floating-point
choices interpreted as exact binary numbers. Their numerical accuracy affects
success but is not a premise of an accepted certificate. No assertion of root
existence or differentiable root continuation is used.

## Coordinates and residuals

Let E be the 6 by 5 orthonormal Helmert frame, so E^T E=I and E^T 1=0. A column
has phases v=v0+Ex. Write the supplied H model as

Q=Q0+Uw+(1/2)H2(w tensor w)+X xi, ||w||_2 <= r, ||xi||_2 <= tau.

All coefficients may be real interval enclosures. For each output column j of H,
put

F_j(x,w,xi)=(1/3) sum_(a<b) cos(v_a-v_b-Q_aj+Q_bj).

This equals (|sum_a exp(i(v_a-Q_aj))|^2-6)/6. Thus a column unbiased to H satisfies
F=0. We only use this implication; the checker need not prove any redundancy
among these six equations on non-Hadamard points in the enclosing model.

Choose any exact center c in R^5, real P of size 5 by 6, and real S of size 5 by 4.
Define the predictor p(w)=c+Sw and z=x-p(w). In practice P approximately
pseudoinverts F_x(c,0,0), and S approximately solves

P F_x(c,0,0) S + P F_w(c,0,0)=0.

The latter removes first-order parameter forcing **after the equations have been
preconditioned**. Applying independent phase intervals before this cancellation
would lose its main benefit.

For each pair a<b and H column j, write

phi=v0_a-v0_b+(E_a-E_b)c-Q0_aj+Q0_bj,
ell=E_a-E_b,
g0=U_bj-U_aj,
g=g0+ell S,
h=H2_bj-H2_aj,
n=X_bj-X_aj.

Then its trigonometric argument is

phi + ell z + g w + (1/2) h(w tensor w)+n xi.

The nonlinear parameter term delta=(1/2)h(w tensor w)+n xi has the rigorous bound

e=(r^2/2)||h||_2+tau||n||_2.

The code uses Frobenius norm for h, regarded as its 16-vector. Since
||w tensor w||_2=||w||_2^2, this is valid on the Euclidean parameter ball.

## A second-order correlated forcing bound

Set A(w,xi)=P F(p(w),w,xi). For output i, Taylor expansion in the above argument
gives

A_i=A_i(0,0)+D_i w+(1/2)w^T C_i w+N_i xi+R_i.

The code assembles all terms into D, C_i, and N **before** taking their norms.
For y=P[:,j], the contributions of one trigonometric term are

D_i += -(y_i sin(phi)/3) g,
C_i += -(y_i sin(phi)/3) sym(h) -(y_i cos(phi)/3) g^T g,
N_i += -(y_i sin(phi)/3) n.

Here sym(h) is the symmetric 4 by 4 matrix associated with the 16-vector h; its
quadratic form is exactly h(w tensor w). Put L=r||g||_2 and W=L+e. Since the third
derivative of cosine is bounded in absolute value by one, a rigorous residual
bound for the contribution to R_i is

|y_i| [ |cos(phi)| (L e+e^2/2)/3 + W^3/18 ].

Therefore the checker validates

||A(w,xi)||_2 <= a

with

a = ||A(0,0)||_2 + r||D||_op
    + (r^2/2) sqrt(sum_i ||C_i||_op^2)
    + tau||N||_op + sqrt(sum_i bound(R_i)^2).

No second-order term is omitted. In particular, H2 contributes directly to C_i,
and the common normal variable xi is retained in N before its norm is taken.

## Strong monotonicity on the source region

The symmetric part of P F_x is what is needed; an operator contraction bound on
I-P F_x would be unnecessarily restrictive.

For each trigonometric term set

Aterm=sym((-y sin(phi)/3) ell),
Bterm=sym((-y cos(phi)/3) ell).

For any vectors u,v and any exact positive scalar alpha,

D=(alpha uu^T+vv^T/alpha)/2

satisfies D >= sym(uv^T) and D >= -sym(uv^T), because these two differences are
rank-one squares. The implementation constructs such D_A and D_B for Aterm and
Bterm. The arbitrary positive alpha only changes sharpness.

For an argument increment t=ell z+g w+delta with |t|<=W<pi, its symmetric Jacobian
contribution is Aterm cos(t)+Bterm sin(t). Separate the linear expression
Bterm(ell z+g w), and use

0 <= 1-cos(t) <= 1-cos(W),
|sin(t)-t| <= W-sin(W),
|delta| <= e.

The matrix lower bound is consequently

Aterm + Bterm(ell z+g w)
 -(1-cos(W))(D_A+Aterm)/2 -(W-sin(W)+e)D_B.

The first signed-tail inequality follows because for 0<=d<=dmax,

-d Aterm >= -dmax(D_A+Aterm)/2.

After summing terms, let L_k be the coefficient matrices of z_k, M_l the
coefficient matrices of w_l, and T the total positive-semidefinite tail. The
following elementary Cauchy-Schwarz bound retains cancellation in those
coefficient matrices:

||sum_k z_k L_k||_op
 <= ||z||_2 sqrt(lambda_max(sum_k L_k^T L_k)).

The analogous inequality applies to w and M. Thus on ||z||_2<=Z the code proves

sym(P F_x) >= mu I,

where

mu = lambda_min(sym(P F_x(c,0,0))-T)
      - Z sqrt(lambda_max(sum_k L_k^T L_k))
      - r sqrt(lambda_max(sum_l M_l^T M_l)).

All eigenvalue inequalities are certified by interval LDL decomposition with a
Gershgorin fallback. Floating eigenvalues only propose candidate rational
bounds. No floating eigentest is accepted as a proof.

## Capture theorem and fixed-coordinate initialization

Suppose every relevant root lies in a cap ||x-c||_2<=R. Put s=r||S||_op. The
segment between any such root x and its predictor c+Sw lies in the fixed cap

||x'-c||_2<=max(R,s).

For this first step the checker may apply the monotonicity estimate in fixed
coordinates delta_x=x'-c, using g0 instead of g. This is usually sharper than
enlarging the predictor tube to radius R+s. Both options are computed and the
better positive lower bound may be used. This is legitimate because the forcing
bound a still evaluates the residual at the actual predictor c+Sw.

If mu>0 throughout that segment and F(x,w,xi)=0, the fundamental theorem of
calculus gives

z^T(PF(x,w,xi)-PF(p(w),w,xi)) >= mu ||z||_2^2.

Since PF(x,w,xi)=0, Cauchy-Schwarz gives

||x-c-Sw||_2 <= a/mu.

This proves capture. It does not require the predictor itself to be a root, or P
to be an exact inverse. The conclusion can be iterated: after the first step,
all relevant roots lie in a smaller predictor tube. Recompute mu on that tube
and replace its radius by a/mu whenever this makes it smaller. Each iteration
is a necessary-condition deduction for the same original roots, so it never
shrinks the original H domain or silently discards a root.

## Role in this return

This is an optional local strengthening. The final exclusion receipts in this
package use complete coarse static-cap covers and static-cap graph bounds. They
do not depend on an asserted constant root count or on the optional affine
predictor implementation. Before using an affine capture in production, its
original coarse region must be included in a complete column cover.
