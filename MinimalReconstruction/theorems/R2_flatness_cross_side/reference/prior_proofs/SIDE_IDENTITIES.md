# Exact structural identities for Handoff R

These identities are proved independently of the matched-flatness certificate. They simplify the algebra of an individual phase side. They **do not yet prove** third-moment transport through the corner or flatness of the forced block.

## 1. A universal cofactor phase identity

Let \(A\) be an invertible \(3\times3\) matrix with every entry of modulus one. Put

\[
R_r=\prod_j A_{rj},\qquad C_j=\prod_r A_{rj},\qquad
P=\prod_{r,j} A_{rj},\qquad \delta=\det A,
\]

and define

\[
\lambda_r=-\frac{P\bar\delta}{R_r\delta}.
\]

Each \(\lambda_r\) has modulus one. If \(L_{rj}\) is the cofactor of \(A_{rj}\), then

\[
\boxed{\quad
\overline{L_{rj}}
=-\frac{R_r C_j}{P A_{rj}}L_{rj}.
\quad}
\tag{1}
\]

Indeed, for any four unit phases \(u,v,w,x\),
\(\overline{ux-vw}=-(ux-vw)/(uvwx)\). The product of the four entries in the complementary minor is \(P A_{rj}/(R_r C_j)\). This proves (1) without expansion of a larger polynomial.

Writing \(G=AA^*\), let \(b\) be column \(j\) of \(A\) and \(c=G^{-1}b\). Since \(c=A^{-*}e_j\), equation (1) gives

\[
\boxed{\quad
\bar c_r=\lambda_r\frac{b_r}{\prod_s b_s}c_r,
\qquad
\bar c=\frac{1}{\prod_s b_s}\,
\operatorname{diag}(\lambda_r)\operatorname{diag}(b)c.
\quad}
\tag{2}
\]

This identity is valid even if some cofactors vanish; its proof does not divide by individual cofactors.

For the normalized side \(A=(1;x;y)\), put \(U=\prod_jx_j\) and \(V_0=\prod_jy_j\). Then the phases in (1) are precisely the handoff phases
\(\lambda_0=-UV_0\bar\delta/\delta\),
\(\lambda_1=\lambda_0/U\), and \(\lambda_2=\lambda_0/V_0\).

## 2. The side's pointwise multiplication has a Möbius form

For an invertible normalized side \(A=(1;x;y)\), there is a unique \(\mu\in\mathbb C\) such that

\[
\boxed{\quad
x_jy_j=\lambda_0+\mu x_j-\lambda_0\bar\mu y_j
\qquad(j=0,1,2).
\quad}
\tag{3}
\]

To prove this, interpolate the vector \((x_jy_j)_j\) in the row basis \(1,x,y\), writing its coefficients as \((\alpha,\mu,\nu)\). Cramer's rule and columnwise multiplication give

\[
\alpha\delta=\det(xy;x;y)=-UV_0\bar\delta,
\]

so \(\alpha=\lambda_0\). Conjugating the determinant for \(\mu\), multiplying its columns successively by \(y_j\) and \(x_j\), and cyclically permuting rows gives

\[
UV_0\bar\mu\bar\delta=\nu\delta.
\]

Hence \(\nu=-\lambda_0\bar\mu\). This proof permits repeated entries in a row; it makes no unproved distinctness or Möbius-denominator assumption.

Use the handoff convention

\[
s=\sum_jx_j,\quad t=\sum_jy_j,\quad
r=\sum_jy_j\bar x_j,\quad
S=\bar s,\quad T=\bar t,\quad Q=\bar r,
\]

and \(c_0=9-rQ\). Dividing (3) pointwise by \(x_j\) or by \(y_j\), then summing, gives

\[
t=\lambda_0S+3\mu-\lambda_0\bar\mu r,
\qquad
s=\lambda_0T+\mu Q-3\lambda_0\bar\mu.
\]

Thus, whenever \(c_0\ne0\),

\[
\boxed{\quad
\mu=\frac{3t-rs-\lambda_0(3S-rT)}{c_0}.
\quad}
\tag{4}
\]

The strict domain has \(c_0>0\), so this adds no excluded locus.

## 3. A short derivation of the first lambda identity

Let \(\pi=\operatorname{perm}A\). Directly from its six terms,
\(\pi=st-\sum_jx_jy_j\). Sum (3) and use (4). Collecting only the displayed scalar expressions gives

\[
\boxed{\quad c_0\pi=P_0-g\lambda_0.\quad}
\tag{5}
\]

Here

\[
P_0=rs^2+Qt^2+(3-rQ)st,
\quad g=27-3(sS+tT+rQ)+srT+SQt.
\]

For example, the coefficient independent of \(\lambda_0\) is

\[
c_0st-s(3t-rs)-t(3s-Qt)=P_0,
\]

and the coefficient of \(\lambda_0\) is

\[
-3c_0+s(3S-rT)+t(3T-QS)=-g.
\]

Since \(\pi=z\lambda_0\), (5) is

\[
P_0=\lambda_0(g+c_0z).
\]

Conjugation and \(|\lambda_0|=1\) now yield exactly

\[
\lambda_0\overline{P_0}=g+c_0\bar z.
\]

The identities for \(\lambda_1\) and \(\lambda_2\) follow from the same argument after taking the normalized row bases \((1;1/x;y/x)\) and \((1;x/y;1/y)\), respectively. The generalized phases \(\lambda_r=-P\bar\delta/(R_r\delta)\) are invariant under arbitrary column phasing: if the product of the column phases is \(q\), then \(P,R_r,\delta,\bar\delta\) acquire factors \(q^3,q,q,q^{-1}\), which cancel in \(\lambda_r\). A row permutation permutes the lambda indices. For the combined normalization and row permutation producing \((1;1/x;y/x)\), the permanent becomes \(\pi/U\) and the new \(\lambda_0\) is the old \(\lambda_1=\lambda_0/U\); for \((1;x/y;1/y)\), these become \(\pi/V_0\) and \(\lambda_2=\lambda_0/V_0\). Thus the normalized ratio \(\pi/\lambda_0=z\) is unchanged in each case. The transformed \((P_0,c_0)\) are exactly \((P_1,c_1)\) and \((P_2,c_2)\).

This removes the need for a large universal Laurent expansion in a proof of the individual-side lambda identities; it does not supply the cross-corner cancellation needed in R.

## 4. The strict corner is itself invertible

For the corner \(E\), its row Gram is \(6I-G_h\). Its off-diagonal entries are the negatives of those of \(G_h\), so its phase-side invariants have the same \(p\) and opposite \(J\). Consequently

\[
\boxed{\quad
|\operatorname{perm}E|^2=g-2\eta,
\qquad
|\det E|^2=2g-3\eta.
\quad}
\tag{6}
\]

The first equality gives \(g\ge2\eta\). On the strict domain \(\eta>0\), hence
\(|\det E|^2\ge\eta>0\). Thus cofactor and Möbius arguments for \(E\) itself require no additional nonvanishing guard.

## 5. A valid alternative scalar target

The forced block construction gives \(\sum_j|D_{ij}|^2=3\) for every row. If one could prove

\[
\left|\prod_jD_{ij}\right|=1
\]

for every row, then the arithmetic–geometric mean inequality applied to the three nonnegative numbers \(|D_{ij}|^2\) would have equality. Every entry in that row would have modulus one. This is an alternative cubic-product target, but no matching-dependent product identity is established here.

## What remains missing

Identities (1)–(6) are individual-side or corner identities and hold independently of how the two side labels are paired. They do not imply the matched third-moment transport. A proof of R still needs an identity coupling the two sets of lambda phases through \(K=-E^*G_h^{-1}\), using \(\Theta(V)=\overline{\Theta(B)}\).

## 6. Compact coupling of a corner and either adjacent side

For an invertible phase matrix \(A\), let \(A^{\circ2}\) denote its entrywise square and let

\[
L_A=A^{\circ2}\operatorname{diag}(C_j^{-1})\bar A^{-1},
\qquad C_j=\prod_r A_{rj}.
\]

Define

\[
Z(G)=\begin{pmatrix}
0&G_{02}&G_{01}\\
G_{12}&0&G_{10}\\
G_{21}&G_{20}&0
\end{pmatrix},
\qquad
(t_A)_r=\sum_j\frac{A_{rj}^3}{C_j}.
\]

Then the exact identity is

\[
\boxed{L_A G^{\mathsf T}=\operatorname{diag}(t_A)+Z(G).}
\tag{7}
\]

Indeed \(G^{\mathsf T}=\bar A A^{\mathsf T}\), so the left side is
\(A^{\circ2}\operatorname{diag}(C_j^{-1})A^{\mathsf T}\). Its \((r,s)\) entry for \(r\ne s\) is \(\sum_j A_{rj}/A_{kj}=G_{rk}\), where \(k\) is the third index. The diagonal is exactly \(t_A\).

Because the off-diagonal parts of the corner Gram and its complement have opposite signs, equation (7) gives the small matrix coupling

\[
\boxed{
L_B G_h^{\mathsf T}+L_E(EE^*)^{\mathsf T}
=\operatorname{diag}(t_B+t_E).
}
\tag{8}
\]

Equivalently,

\[
6L_B+(L_E-L_B)\bar E E^{\mathsf T}
=\operatorname{diag}(t_B+t_E).
\]

There is an identical vertical statement with \(E^{\mathsf T}\) and \(V\). Equation (8) is a genuine corner/side coupling and has only three uncontrolled diagonal quantities. It holds for either side label, however, and no identity connecting its horizontal and vertical diagonal quantities has been proved here.

The intrinsic transpose relation

\[
\boxed{
\Lambda_A L_A\bar A
=\bar A L_{A^{\mathsf T}}^{\mathsf T}\Lambda_{A^{\mathsf T}},
\quad \Lambda_A=\operatorname{diag}(\lambda_r)
}
\tag{9}
\]

also follows directly from the definitions: both sides equal
\(\kappa\operatorname{diag}(R_r^{-1})A^{\circ2}
\operatorname{diag}(C_j^{-1})\), where
\(\kappa=-P\bar\delta/\delta\).

Neither (8) nor (9) is claimed to settle the missing matched-label transport.
