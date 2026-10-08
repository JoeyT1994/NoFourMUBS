# Exact exclusion of stationary seed corners on the q-zero stratum with nonreal Gram product

## 1. The result

Let

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},\qquad |a|=|b|=|c|=|d|=1,
\]

and use the handoff invariants `X,Y,Z,J` and defining polynomial `F(X,Y,Z,J)=R(E)`. Put

\[
\tau=s r\overline t,\qquad
D=4XYZ-J^2=4(\operatorname{Im}\tau)^2,
\]

\[
f(E)=2\operatorname{Im}q(E),\qquad
Q(X,Y,Z,J)=F(X,Y,Z,-J).
\]

**Theorem.** If `D>0`, `f(E)=0`, and `R(E)>0`, every stationary point of `R(E)` on the four-dimensional dephased seed torus satisfies

\[
\boxed{\quad R(E)>30.\quad}
\]

In particular there is no seed critical point with `0<R<26` anywhere on this q-zero stratum, including all rank drops of the seed-to-invariant map.

This is a theorem about stationary **seed-corner** values. Applied to a valid smooth Hadamard corner chart, it rules out a local minimum of `M` with a uniquely active corner class whose maximal seed lies here. It does not exclude nonsmooth minima with several active corner classes. The intersection `D=0=f` is not covered by this theorem and is treated separately by the parent analysis.

The proof uses exact finite polynomial certificates and elementary differential and linear algebra. No numerical sampling is used.

## 2. Two exact identities and a rank lower bound

Let `Phi(theta)=(X,Y,Z,J)` be the invariant map of the four seed angles and `A=D Phi`. The independently certified identities in `../global/verify_critical_invariants.py` are

\[
Q\circ\Phi=f^2,
\qquad
\det A=2(\operatorname{Im}\tau)f. \tag{1}
\]

Write `C=2 Im(tau)`, so `C!=0` precisely when `D>0`.

### Rank is at least two whenever D is positive

For three unit phases `v0,v1,v2`, the gradient of `|v0+v1+v2|^2` with respect to their two relative phases can vanish only if their sum is zero, or the three phases lie on the same real line in the complex plane. Indeed, when the sum is nonzero, stationarity says that each summand is parallel to that sum.

Under `D>0`, all three row inner products are nonzero. If two different pairwise row-inner-product norms were stationary under independent changes of the row-ratio phases, both row ratios could be rephased to signs. All three rows of `E` could then be rephased to a real matrix, forcing `Im(tau)=0`, a contradiction.

Thus at least two pairwise row norms have nonzero phase gradients. They share a row. Rephase that common row to the first row and dephase the first column. The two norms then depend on disjoint pairs of seed angles, so their nonzero gradients are independent. Therefore

\[
\operatorname{rank} A\geq2\qquad(D>0). \tag{2}
\]

### Smooth Q points have rank exactly three

Differentiate the first identity in (1), multiply by the adjugate of `A^T`, and cancel `f` where it is nonzero. The resulting analytic identity extends across its zero set:

\[
C\nabla Q=2\operatorname{adj}(A^{\mathsf T})\nabla f. \tag{3}
\]

At `D>0`, rank at most two would make the adjugate zero and force `grad Q=0`. Consequently,

\[
f=0,\quad D>0,\quad\nabla Q\ne0
\quad\Longrightarrow\quad\operatorname{rank}A=3. \tag{4}
\]

Its image is then exactly the tangent hyperplane to `Q=0`. Seed stationarity of `F` therefore implies ordinary constrained stationarity of `F` on `Q=0`.

The analytic extension in (3) is legitimate because `f` is a nonzero trigonometric polynomial on the connected seed torus; its nonzero set is dense. Equivalently, (3) is an identity of Laurent polynomials after multiplying by the fixed unit-phase factors.

## 3. A global coordinate chart on the reduced q-zero surface

Set

\[
p=X+Y+Z,\qquad W=XY+XZ+YZ-XYZ,
\qquad h=9-p,\quad B=W-h(h+9).
\]

Then

\[
F=4(3h+J)^2(h+J)-[B-(h+6)J]^2, \tag{5}
\]

\[
Q=4(3h-J)^2(h-J)-[B+(h+6)J]^2. \tag{6}
\]

For a unimodular `E`, `3h-J=det(E E*)>=0`. This determinant cannot vanish under `Q=0,F>0`: if it did, `J=3h` and (6) would force `B=-(h+6)J`, after which

\[
F=-36h^2\bigl((h-2)^2+32\bigr)\leq0. \tag{7}
\]

Hence `3h-J>0`. Equation (6) implies `h-J>=0` and admits the signed coordinate

\[
z=\frac{B+(h+6)J}{2(3h-J)},\qquad h=J+z^2,
\]

\[
B=-(h+6)J+2(3h-J)z. \tag{8}
\]

These formulas give a smooth chart with coordinates `(J,z)` on the reduced surface `Q(h,B,J)=0`. The sign of `z` includes both branches, and `z=0` is regular because `3h-J>0`.

On this surface, exact substitution gives

\[
F_q(J,z)=4J(-J+6z+18)
\bigl(J^2+2Jz^2+2Jz-2J+z^4+2z^3\bigr). \tag{9}
\]

## 4. Generic reduced rank: the sextic certificate

The map `(X,Y,Z)->(p,W)` has rank two except when all three variables are equal or two of them equal one. This follows from

\[
W_X-W_Y=(X-Y)(Z-1)
\]

and its permutations.

At a smooth `Q` point with this rank equal to two, (4) implies that the actual seed derivatives cover both tangent directions of the reduced surface. Thus seed stationarity forces

\[
\partial_JF_q=0,\qquad\partial_zF_q=0. \tag{10}
\]

Because `F>0`, `J!=0`. Put

\[
A_q=\tfrac18\partial_JF_q,\qquad
B_q=\tfrac1{8J}\partial_zF_q.
\]

Their exact resultant in `J` is

\[
6z^2(z^2+6z+12)(z^2+8z+24)\,S(z),
\]

\[
S(z)=9z^6+135z^5+854z^4+2838z^3+5070z^2+4392z+1296. \tag{11}
\]

The two quadratic factors are strictly positive on the real line. At `z=0`, the two equations have only `J=0`, which gives `F=0`. On the sextic branch the equations imply

\[
114J=45z^5+567z^4+2875z^3+6891z^2+7512z+2700. \tag{12}
\]

Reduction modulo `S` gives the critical-value readout

\[
F=-\frac{1605z^5+22028z^4+116076z^3+308289z^2+385956z+162648}{171}. \tag{13}
\]

Exact Sturm counting proves that `S` has exactly two real roots. Rational root intervals, followed by rational interval evaluation of (13), put their possible critical values respectively in

\[
(35,36),\qquad(-141,-140).
\]

Thus every positive critical value in this case exceeds 35.

## 5. Smooth Q points where the reduced rank drops

There are two patterns, up to permutation.

### All three variables equal

Set `X=Y=Z=x`. Exact factorization gives

\[
F=-(x^2-3x-J)^2(x^2+18x-27-4J),
\]

\[
Q=-(x^2-3x+J)^2(x^2+18x-27+4J). \tag{14}
\]

On the smooth `Q=0` branch,

\[
J=-\frac{x^2+18x-27}{4},
\]

\[
F=-\frac{(x+3)^2(5x-9)^2(x^2+18x-27)}8. \tag{15}
\]

The tangent to this curve belongs to the actual rank-three image in (4), so its derivative must vanish at a seed critical point. Excluding zero-value factors, the derivative condition is

\[
5x^3+79x^2-45x-135=0. \tag{16}
\]

Sturm counting gives exactly one nonnegative root. Rational interval evaluation puts its `F` value in `(-14,-13)`. Therefore this case has no positive stationary value.

### Two variables equal one

Set `X=Y=1,Z=x`. On the smooth `Q=0` branch,

\[
J=-\frac{x^2-6x-3}{4},\qquad
F=-\frac{(x-5)^2(x+3)^2(x^2-6x-3)}8. \tag{17}
\]

The nonzero-value derivative condition is

\[
3x^3-19x^2-3x+51=0. \tag{18}
\]

It has exactly two nonnegative roots. Their exact interval-certified critical values lie in `(311,312)` and `(30,31)`. Both exceed 30.

## 6. Singular Q points, including rank-two seed maps

### Complete classification of the singular image curves

At `Q=0`, `grad Q=0`, and `F>0`, the `Q` analogue of `chi` cannot vanish. Otherwise (6), together with `3h-J>0`, would give `h-J=0`, but then `Q_J=-4(3h-J)^2` would be nonzero.

The derivative-difference identities consequently force all three invariant variables equal or two equal one. From (14) and its two-one analogue, the singular curves are precisely

\[
(X,Y,Z,J)=(x,x,x,3x-x^2), \tag{19}
\]

or, up to permutation,

\[
(X,Y,Z,J)=(1,1,x,3-x). \tag{20}
\]

### The curve tangent is always in the actual differential image

Let `H_Q` denote the Hessian of `Q` in the four invariant variables and `U=im A`. Since `grad Q=0`, differentiating `Q o Phi=f^2` twice gives

\[
A^{\mathsf T}H_Q A=2\,df\otimes df. \tag{21}
\]

On either singular curve, in the range `D>0,F>0`, `H_Q` has rank three and signature `(2 positive,1 negative,1 zero)`. Its nullspace is the one-dimensional tangent to that curve. The verifier proves explicit rational congruences for these Hessians.

By (2), `dim U` is two or three. If it is three and did not contain the Hessian nullspace, projection to the nondegenerate three-dimensional quotient would be an isomorphism. The Hessian restricted to `U` would have rank three, contradicting the rank-at-most-one right side of (21). Thus `U` contains the curve tangent.

If `dim U=2`, differentiating `det A=Cf` at a rank-two matrix gives `df=0`, because its adjugate is zero and `C!=0`. Equation (21) therefore makes `U` totally isotropic for `H_Q`. A nondegenerate form of signature `(2,1)` has no two-dimensional totally isotropic subspace. Hence `U` must again contain the one-dimensional Hessian nullspace.

This argument proves the needed tangent inclusion for **both** possible ranks. It does not assume that an arbitrary invariant-space path lifts through the singular seed.

Seed stationarity of `F` must therefore imply stationarity of `F` along the singular curve itself.

### Critical values on the singular curves

For (19),

\[
D=x^2(x-1)(9-x),\qquad
F=-4x^2(x-3)^2(x+3)(5x-9),
\]

\[
\frac{dF}{dx}=-24x(x-3)(x-1)(5x^2-27). \tag{22}
\]

The conditions `D>0,F>0,X>=0` imply `1<x<9/5`. None of the derivative factors vanish in that interval. There is no positive stationary value.

For (20),

\[
D=(x-1)(9-x),\qquad
F=-4(x-5)(x-3)^2(x+3),
\]

\[
\frac{dF}{dx}=-16(x-3)(x^2-3x-6). \tag{23}
\]

Here positivity requires `1<x<5`, with `x!=3`. The only stationary possibility is

\[
x=\frac{3+\sqrt{33}}2,\qquad F=414-66\sqrt{33}>30. \tag{24}
\]

The final inequality follows by the exact integer comparison
`66^2*33 < (414-30)^2`.

Equations (11)-(24) exhaust the smooth and singular cases under `D>0`, completing the theorem.

## 7. Verification and inputs

Run:

```sh
python3 verify_qzero.py
```

The script requires SymPy. It verifies all displayed polynomial factorizations and eliminations, the singular-curve gradients, the Hessian congruences, exact Sturm root counts, and rational interval readouts. It never makes a floating-point comparison. Its final line is:

```text
QZERO POSITIVE-CHIRALITY CRITICAL CERTIFICATE PASS
```

Additional inputs are:

1. The defining corner invariants and equivalences in the supplied handoff.
2. The two Laurent identities (1), independently certified by `../global/verify_critical_invariants.py` in this return package.
3. Positive semidefiniteness of the Gram matrix `E E*`.
4. Elementary rank, adjugate, and real quadratic-form facts, proved or explained above.

The relation to local minima of the full Hadamard maximum additionally requires the valid chart and active-corner hypotheses stated in §1. No claim is made here that all nonsmooth minimax critical points are excluded.
