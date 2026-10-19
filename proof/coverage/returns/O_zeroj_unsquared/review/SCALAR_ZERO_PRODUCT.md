# The zero-product boundary of the inserted-column proof

## Status

**PROVED / CERTIFIED scalar deduction.** The following argument handles the boundary \(K=XYZ=0\), assuming the inserted-column mixed-corner identity described in §2. The nine scalar identities in this note are reconstructed from their displayed definitions and independently replayed by `verify_scalar_boundary.py`; their integer DAGs occupy 5,105 bytes in `scalar_boundary_certificates.json`.

The mixed-corner identity is checked by the primary and independent source verifiers in this return. The present scalar certificates do not purport to establish that identity from the corner definition.

## 1. Scalar hypotheses and notation

Suppose \(z\in\mathbb R\setminus\{0,-2,-3\}\), the moduli are nonnegative, and

\[
X+Y+Z=9-z^2,\qquad XY+XZ+YZ-XYZ=z^2(z+3)^2,\qquad XYZ=0.
\]

The right side of the second equation is positive. Hence exactly one modulus vanishes and the other two are positive. Relabel the rows so that

\[
Z=0,\quad X,Y>0,\quad X+Y=p:=9-z^2,\quad XY=W:=z^2(z+3)^2.
\tag{B1}
\]

Put

\[
\tau=z+3,\quad
f(T)=T^2-pT+W,\quad
A=z\tau(z^2+3z+1),\quad B=3z+8,
\]
\[
q(T)=A-BT,\qquad u=z^2+2z-2.
\]

Both \(X\) and \(Y\) are roots of \(f\). The exact relation is

\[
f(X)=X(X+Y-p)-(XY-W).
\tag{B2}
\]

We may additionally arrange \(X\ne1\). If both positive moduli were one, (B1) would give \(z^2=7\) and \(W=1\), contradicting the ordinary polynomial identity

\[
\boxed{
9=(14z-37)(W-1)
 -(14z^3+47z^2+2z-4)(z^2-7),
\qquad W=z^2(z+3)^2.}
\tag{B3}
\]

If necessary, exchange the two noninitial rows to interchange \(X,Y\).

## 2. The mixed-corner input and its scalar reduction

Let \(e_T=3\tau-T\), and let \(\mathcal T_x\) denote the normalized mixed-corner sum weighted by the inserted column's \(x\)-coordinate. All-criticality makes \(\mathcal T_x=0\) term by term. The separately derived identity on the present \(Z=0\) boundary is

\[
(X-1)e_Xe_Y^2e_Z^2\,\mathcal T_x
=18z(z+2)\tau^2(\tau-X)Y P,
\tag{B4}
\]

where

\[
\begin{aligned}
P={}&z^4+3z^3X+3z^3+19z^2X-9z^2\\
 &+3zX^2+24zX-27z+10X^2-18X.
\end{aligned}
\]

The generic identity before restriction contains a factor \(X\) on both sides; canceling it here is legitimate because \(X>0\). The choice \(X\ne1\) is used only for the eventual contradiction \(X=1\); no factor \(X-1\) is canceled. The physical lambda denominators are nonzero by the existing zero-J pole argument.

The following small identity is checked independently:

\[
\boxed{P+3\tau q(X)=(3z+10)f(X).}\tag{B5}
\]

Using \(f(X)=0\), (B4) becomes

\[
(X-1)e_Xe_Y^2e_Z^2\,\mathcal T_x
=-54z(z+2)\tau^3(\tau-X)Y q(X).
\tag{B6}
\]

Every factor outside \((\tau-X)q(X)\) on the right is nonzero. Consequently all-criticality gives

\[
(\tau-X)q(X)=0.
\tag{B7}
\]

The scalar certificate `cleared_mixed_boundary_reduction` checks the conversion of the right side of (B4) into (B6), with an explicit \(f(X)\) cofactor. Overall sign conventions or multiplication of \(\mathcal T_x\) by a nonzero row-gauge factor do not affect (B7); the exact convention for (B4) must agree with the separately supplied mixed-corner verifier.

## 3. The branch \(q(X)=0\) is impossible

Direct expansion gives the norm identity

\[
\boxed{
q(X)q(Y)
=z(z+2)^2\tau^3u
-AB(X+Y-p)+B^2(XY-W).}
\tag{B8}
\]

Under (B1), \(q(X)=0\) therefore forces \(u=0\), since \(z(z+2)^2\tau^3\ne0\). Two more integer polynomial identities give

\[
q(1)=(z+2)^2u,\qquad
9u=(3z+8)(3z-2)-2.
\tag{B9}
\]

The first says \(q(1)=0\). The second says \(B=3z+8\ne0\): when \(u=0\), the product \((3z+8)(3z-2)\) equals two. But

\[
q(X)-q(1)=-B(X-1),
\]

so \(q(X)=q(1)=0\) and \(B\ne0\) imply \(X=1\), contradicting the chosen orientation.

This argument uses no root isolation, approximation, division by a potentially vanishing polynomial, or ordering of the roots of \(f\).

## 4. The remaining branch gives the target

By (B7), we must have \(X=\tau\). Since \(f(X)=0\), use the exact factorization

\[
\boxed{f(z+3)=(z-1)(z+2)(z+3)^2.}\tag{B10}
\]

The standing exclusions give \(z=1\). Therefore

\[
K=0=(1-z)(z+3)^3,
\]

which is the required scalar conclusion on the entire zero-product boundary.

## 5. Replay

```sh
python3 verify_scalar_boundary.py --self-test
```

This reconstructs all nine DAGs from the formulas in the script, requires exact agreement with the supplied JSON, and evaluates each DAG independently as a sparse integer polynomial. The self-test changes one target by one and requires rejection. To rebuild the JSON deliberately, add `--regenerate`.

The format is precisely `integer_polynomial_dag_v1` from return K: integer constants, variable nodes, addition, multiplication, and nonnegative integral powers only. Every reference points backward. No floats, divisions, external computer algebra library, or numerical checks appear in replay.
