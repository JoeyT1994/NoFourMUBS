# Exact exclusion of the single Gram-phase branch

## Theorem

Use the handoff's invariant coordinates \(\Psi=(X,Y,Z,J)\), and write

\[
\begin{aligned}
p&=X+Y+Z,&W&=XY+XZ+YZ-XYZ,\\
F(p,J,W)&=4(27-3p+J)^2(9-p+J)\\
&\quad-[W-(p-9)(p-18)+(p-15)J]^2,\\
R&=F(p,J,W),&\widehat R&=F(p,-J,W),\\
Q&=4XYZ-J^2.
\end{aligned}
\]

Assume the exact invariant-Jacobian identity proved in the accompanying `exact_maxima` contribution:

\[
(\det D_\theta\Psi)^2=Q\widehat R.
\tag{1}
\]

**No local maximum of \(R\) with \(R>0\) can satisfy \(Q=0\) and \(\widehat R>0\).** The statement includes seeds for which an overlap \(s,t,r\) vanishes. No numerical or interval cover is required for this branch.

## 1. Local coordinates at the fold

If two of \(X,Y,Z\) vanish, then \(J=0\), and direct substitution gives

\[
R=-Z^2(Z-9)^2\le0
\]

after a permutation of \(X,Y,Z\). Thus at \(R>0\) at least two overlaps are nonzero. Relabel so that \(X,Y>0\), and define

\[
h+ik=\frac{s r\overline t}{\sqrt{XY}},
\qquad \Gamma(\theta)=(X,Y,h,k).
\]

Then

\[
Z=h^2+k^2,\qquad J=2\sqrt{XY}\,h,\qquad Q=4XYk^2.
\]

The coordinate substitution from \(\Gamma\) to \(\Psi\) has determinant \(-4\sqrt{XY}\,k\). Combining this with (1), and extending the identity across \(k=0\) by real analyticity, gives

\[
4(\det D_\theta\Gamma)^2=\widehat R.
\tag{2}
\]

The extension is legitimate because \(\operatorname{Im}(sr\overline t)\) is a nonzero real-analytic trigonometric polynomial; for example, at \((a,b,c,d)=(1,-1,1,i)\), its value is 4. Its zero set has empty interior. Therefore \(\widehat R>0\) makes \(\Gamma\) a local coordinate system, even when the third overlap vanishes.

At \(Q=0\), we have \(k=0\). The map \((X,Y,h)\mapsto(X,Y,h^2,2\sqrt{XY}h)\) is a local parametrization of the smooth hypersurface \(Q=0\); its image contains a relative neighborhood of the seed in that hypersurface. Consequently a seed local maximum must satisfy the constrained stationary equations

\[
\nabla_{X,Y,Z,J}R=\lambda\nabla Q.
\tag{3}
\]

Here \(\nabla Q\ne0\), since \(X,Y>0\).

We will also use \(g=27-3p+J>0\) and \(\eta=9-p+J>0\) at strict seeds. This is proved in `reference/reconstruction/Proofs_STRICT_DOMAIN.md`. Alternatively, the stated existence of a physical completion makes \(G=BB^*\) positive semidefinite, hence \(g\ge0\); \(R>0\) forces \(g\ne0\), and then forces \(\eta>0\).

## 2. A stationary point has two equal overlap moduli

Distinguish \(F_p,F_W\), where \(p,J,W\) are treated as independent variables, from the derivatives of their composition with \(X,Y,Z,J\). Equation (3) gives, on subtracting its \(X\) and \(Y\) components,

\[
(Y-X)\bigl[F_W(1-Z)-4\lambda Z\bigr]=0,
\tag{4}
\]

and the two analogous equations. If \(X,Y,Z\) were all distinct, the affine expression \(F_W-(F_W+4\lambda)Z\) would vanish at three distinct arguments. Thus \(F_W=\lambda=0\), and (3) would also give \(F_p=0\).

But \(F_W=-2\chi\). At \(F_W=0\),

\[
F_p=-4g(6\eta+g)<0.
\]

This is a contradiction. Hence, after a permutation, \(X=Y=u>0\). The possibility \(u=0\) was excluded above.

## 3. Exact two-variable elimination

On \(Q=0\), put \(Z=v^2\) and \(J=2uv\), with signed real \(v\). This also covers \(Z=J=0\), and is a smooth parametrization for \(u>0\). The restricted function factors as

\[
f(u,v)=-(v-3)^2
(u^2-2uv-4u+v^2)
(uv-u-v^2-3v)^2.
\tag{5}
\]

Write \(B=uv-u-v^2-3v\). On \(f>0\), both \(v-3\) and \(B\) are nonzero, so \(f_u=f_v=0\) is equivalent to \(P=T=0\), where

\[
\begin{aligned}
P={}&u^2v-u^2-2uv^2-3uv+3u+v^3+2v^2+3v,\\
T={}&u^3v-2u^3-4u^2v^2+2u^2v+11u^2\\
 &\quad+5uv^3+2uv^2-12uv-18u-2v^4+9v^2.
\end{aligned}
\]

The exact derivative identities are \(f_u=-4(v-3)^2BP\) and \(f_v=-4(v-3)BT\). Their resultant is

\[
\operatorname{Res}_u(P,T)
=-2v(v-3)^2(v+1)(v^2-v-1)(9v^2-14v+9).
\tag{6}
\]

The final quadratic has negative discriminant, \(-128\). At \(v=0,-1,3\), the only common roots are respectively \(u=0,1,9\), and all give \(f=0\). On \(v^2-v-1=0\), polynomial reduction gives \(u=v+1=v^2\). Thus the only remaining positive critical candidates are

\[
v_\pm=\frac{1\pm\sqrt5}{2},\qquad
X=Y=Z=v_\pm^2,\qquad J=2v_\pm^3.
\tag{7}
\]

All of these computations are exact polynomial identities. The verifier checks (5), both derivative identities, the resultant and all common-root eliminations using rational arithmetic.

## 4. Both candidates fail the maximum test

At either root of \(v^2-v-1=0\), exact reduction gives

\[
\begin{aligned}
R&=\frac{625\pm275\sqrt5}{2},\\
\widehat R&=-1541v-905,\\
F_J&=210v+150.
\end{aligned}
\tag{8}
\]

For \(v=v_+>0\), \(\widehat R<0\), contradicting the branch hypothesis.

For \(v=v_-<0\), \(J<0\) and

\[
F_J=255-105\sqrt5>0,
\]

because \(17^2>5\cdot7^2\). Keep \(X,Y,Z\) fixed and vary the Gram phase \(\tau\), so that \(J(\tau)=2\sqrt{XYZ}\cos\tau\). The seed in (7) has \(\tau=\pi\). The nonsingular coordinates (2) make this an actual local seed variation. Along it,

\[
\left.\frac{d^2R}{d\tau^2}\right|_{\tau=\pi}
=-J F_J>0.
\]

Therefore this candidate is also not a local maximum. This proves the theorem.

## 5. Corollary needed on the double-zero intersection

The constrained stationary classification in §§2–3 does not use \(\widehat R>0\). That inequality was used only to obtain (3) from seed stationarity, and later to justify the normal variation. Therefore:

**At a strict seed with \(Q=\widehat R=0\), the constrained stationary equations (3) cannot hold.** Indeed, their only positive candidates are (7), and neither satisfies \(\widehat R=0\), since

\[
\gcd(v^2-v-1,1541v+905)=1.
\]

This also removes the all-zero weighted-triangle case in the intersection argument. To express that precisely, take real signed correlations \(a_0,b_0,c_0\) with

\[
X=a_0^2,\quad Y=b_0^2,\quad Z=c_0^2,\quad J=-2a_0b_0c_0,
\]

and define

\[
k_a=a_0R_X-b_0c_0R_J,\quad
k_b=b_0R_Y-a_0c_0R_J,\quad
k_c=c_0R_Z-a_0b_0R_J.
\]

These are half the three derivatives of the pulled-back \(R\). At a positive seed at least two of \(a_0,b_0,c_0\) are nonzero. The signed-correlation parametrization then has rank three and parametrizes the smooth hypersurface \(Q=0\) locally. Thus \(k_a=k_b=k_c=0\) is equivalent to (3), and is impossible when \(Q=\widehat R=0\). This includes the case of one vanishing correlation.

## Scope and remaining dependence

The theorem closes the entire \(Q=0,\widehat R>0\) branch, including vanishing-overlap strata. It depends on the independently checked invariant identity (1) and strict-domain positivity. It does not classify the intersection \(Q=\widehat R=0\), or the other single-zero branch \(Q>0,\widehat R=0\).

Run `python3 output/conditioning_audit/verify_q_branch.py` for the exact algebra in this proof.
