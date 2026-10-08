# Local lifting of the side-discriminant halfspace

This lemma supplies the missing geometric step for the \(\widehat R=0\), \(Q>0\) branch. It uses the rational identities in `reference/reconstruction/Proofs_SIDE_FIBER.md`, including their specialization argument; it does not assume an abstract fold normal form or infer local surjectivity merely from the determinant identity.

## Statement

Let \(E_0\) be a strict seed: \(R(E_0)>0\). Let \(v_0=(X_0,Y_0,Z_0,J_0)\), and suppose

\[
Q(v_0)>0,\qquad \widehat R(v_0)=0.
\]

Here \(Q=4XYZ-J^2\), \(\widehat R=F(p,-J,W)\), and \(F,p,W\) have their handoff definitions. Apply the side-constructor notation to the **raw row Gram** \(K_0=E_0E_0^*\), rather than to \(6I-K_0\). Denote its three side numerators by \(\widehat P_0,\widehat P_1,\widehat P_2\), and assume

\[
\widehat P_0\widehat P_1\widehat P_2\ne0.
\tag{1}
\]

There is a neighborhood \(V\) of \(v_0\) in \(\mathbb R^4\) and a continuous map

\[
v\longmapsto\theta(v),\qquad
v\in V\cap\{\widehat R\ge0\},
\tag{2}
\]

such that \(\theta(v_0)=\theta_0\) and \(\Psi(\theta(v))=v\). The neighborhood may be chosen with \(Q>0\) and \(R>0\). Thus the image near this particular seed contains an entire relative neighborhood on the admissible side of the discriminant.

In particular, any local maximum in seed space is a local maximum of the invariant function on \(\{\widehat R\ge0\}\). If \(\nabla\widehat R(v_0)\ne0\) and

\[
\nabla R(v_0)=\lambda\nabla\widehat R(v_0),
\]

then a necessary condition for a maximum is \(\lambda\le0\). A positive \(\lambda\) is an exact exclusion.

## Proof

### 1. A continuous raw Gram representative

Since \(Q(v_0)>0\), all of \(X_0,Y_0,Z_0\) are positive. Row phases allow the two raw Gram entries \(s_K,t_K\) to be positive real numbers. Choose the sign \(\epsilon\in\{1,-1\}\) matching the imaginary part of the resulting third entry at the center, and for nearby invariants put

\[
s_K=\sqrt X,\qquad t_K=\sqrt Y,\qquad
r_K=\frac{-J+i\epsilon\sqrt Q}{2\sqrt{XY}}.
\tag{3}
\]

The matrix \(K(v)\) has diagonal 3 and off-diagonal entries \((s_K,t_K,r_K)\) in the convention of `RECONSTRUCTION.md`. Its raw invariants are \((X,Y,Z,-J)\), so

\[
\widehat g=\det K=27-3p-J,\quad
\widehat\eta=9-p-J,\quad
\widehat\chi=W-(p-9)(p-18)-(p-15)J.
\]

The sign change in (3) is essential: the handoff's \(J\) belongs to \(6I-K\).

At a strict seed, \(E_0\) is invertible and \(X_0,Y_0,Z_0<9\), by `Proofs_STRICT_DOMAIN.md`. Therefore \(\widehat g>0\) and \(n=1-X/9>0\) in a sufficiently small neighborhood. The Gram remains positive definite there. The three numerators remain nonzero by (1).

### 2. Match the boundary side without extra orientation restrictions

Row-gauge \(E_0\) to the center of (3). It still has first row \((1,1,1)\). Write its other two rows as

\[
x_j=\mu+A\omega^j+B\omega^{-j},\qquad
y_j=\nu+C\omega^j+D\omega^{-j}.
\]

Since \(n=|A|^2+|B|^2>0\), a fixed column reflection if necessary gives \(A\ne0\). The actual side then has

\[
\delta_0=AD-BC\ne0,\qquad
\rho_0=|A|^2>0.
\]

The intrinsic phase \(z=\Theta(E_0)\) is the repeated root of the side quadratic, hence

\[
z_0=\frac{\widehat\chi}{2\widehat g}.
\]

Section 1 of `Proofs_SIDE_FIBER.md` reconstructs an existing phase side by choosing precisely this \(z_0\), the square root \(\delta_0\), and the cube root matching \(A/\overline A\). Its identities do not require a positive discriminant. They require the displayed denominators to be nonzero, which has just been arranged.

For this local lift it is unnecessary to enforce the global sign convention \(d_F\ge0\) at nearby points. Keep the square-root branch matching \(\delta_0\). The weaker condition actually required by the algebra is \(\rho>0\), and it persists by continuity. This avoids a sign-rule discontinuity at \(|A|=|B|\).

### 3. Continue over the whole admissible side

For every sufficiently nearby \(v\) with \(\widehat R(v)\ge0\), choose

\[
z(v)=\frac{\widehat\chi(v)+i\sqrt{\widehat R(v)}}{2\widehat g(v)}.
\tag{4}
\]

This is continuous at the center, regardless of which sign would be used away from the boundary, because the two roots coincide there. It satisfies

\[
z+\overline z=\widehat\chi/\widehat g,
\qquad |z|^2=\widehat\eta.
\]

Use the side formula with \(K(v)\) and (4). The identities

\[
|\widehat P_j|^2
=\widehat g^2+\widehat c_j\widehat\chi
 +\widehat c_j^2\widehat\eta
\]

ensure that its \(\lambda_j\) are unit phases. Continue the square root \(\delta\) from \(\delta_0\); its argument stays nonzero. The universal side identities give real \(d_F\), and hence real \(\rho\), while continuity gives \(\rho>0\). They then give

\[
|\sigma|^2=\rho,\qquad |\xi|=1,\qquad 3MM^*=K.
\]

Continue a cube root of \(\xi\) from the one reproducing \(E_0\). All nonconstant Fourier coefficients of the squared entry moduli vanish by the same side identities, so the constructed matrix \(S(v)\) is flat and has Gram \(K(v)\).

The cited identities hold here for **arbitrary nearby Hermitian Grams**, not only Grams previously known to possess phase sides. Section 3 of `Proofs_SIDE_FIBER.md` proves them in the rational function field of six algebraically independent Gram coordinates, then in the explicitly localized algebraic ring. They consequently specialize whenever \(g,n,P_j,\rho\), their conjugates and the square-root argument are nonzero. All these conditions hold in the present neighborhood. The discriminant itself is not inverted in that argument, so its vanishing is permitted.

Every operation is continuous in \(v\) and \(\sqrt{\widehat R(v)}\), and the choices at the center reproduce the original side. Undo the fixed column permutation, and dephase the first column by row phases. This gives a normalized seed matrix tending to exactly \(E_0\), with the desired invariants. Choose local arguments of its four nontrivial entries. The resulting angles give (2).

### 4. Inward exclusion

When \(\nabla\widehat R(v_0)\ne0\), the implicit function theorem supplies a smooth curve entering \(\{\widehat R>0\}\), with \(\widehat R(v(t))=t\). If \(\nabla R=\lambda\nabla\widehat R\) at the center, then

\[
R(v(t))=R(v_0)+\lambda t+o(t).
\]

For \(\lambda>0\), every sufficiently small positive \(t\) raises \(R\). The lift (2) produces actual seeds converging to \(\theta_0\), contradicting local maximality. The same lifting argument allows every tangential curve or constrained-Hessian test conducted on the invariant boundary.

## Verification and scope

`verify_fold_lift.py` checks the Gram and numerator identities in (3) using exact rational polynomial reductions. The full Fourier side identities and their specialization are the proved identities in the supplied `Proofs_SIDE_FIBER.md`; the analytic argument above makes explicit why they remain applicable at zero discriminant.

This lemma applies only when all three raw side numerators are nonzero. Their zero sets require the separate pole analysis in the main proof. It makes no claim that the invariant map has a differentiable right inverse at the boundary.
