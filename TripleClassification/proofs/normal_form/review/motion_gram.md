# Independent audit: P1.3 and P1.4

Source: `TC_antigravity_review_20261102`, reviewed 2 November 2026.

## Verdict

**P1.3 fails as submitted.** Its combined quadratic H-motion matrix has a sign error in both the statement and executable code. The repair is to **add**, rather than subtract, the symmetric `C_j Lambda` coefficient. The remaining numerical constants are valid; several displayed proof identities require correction, detailed below.

**P1.4's final inequalities and their implementation pass.** Its explanatory proof of the combined Gram formulas must be replaced with the correctly scaled direct-sum and tensor constructions given below. The code does not require a change for these Gram formulas.

The bounds below are global in the phase variables. They apply to every represented H and every K in the specified enclosure, without assuming the proposed reference solves the equations.

## 1. Decisive quadratic sign error

Write

\[
\zeta=z+\Lambda u,\qquad d=Uu,\qquad k=ET\zeta,
\qquad C_j=B F_{HK}(q_*,y_*)[Ue_j,ET\,\cdot].
\]

Then the mixed quadratic term is exactly

\[
B F_{HK}[d,k]
=\sum_j u_j C_jz+\sum_{j,k}u_ju_k C_j\Lambda e_k.
\]

Thus the coefficient in the H-motion floor must be

\[
\boxed{
M_{\mathrm{comb}}[:,4j+k]
=\tfrac12\left(BJ_HH_2[:,4j+k]
+B F_{HH}[Ue_j,Ue_k]
+C_j\Lambda e_k+C_k\Lambda e_j\right).
}
\]

The original `witness.py` line 344 instead has

```python
M_comb[r_idx, col] = (jh_h2[r_idx, 0] + bfhh[r_idx, 0]) / 2 - c_ul
```

The last sign must be `+`. This is a substantive certification defect: an Arb upper bound for the norm of the wrong matrix is not an upper bound for the required quadratic coefficient. A successful replay of the original implementation does not repair this defect.

A direct residual regression is provided in `tests/test_h_motion_quadratic.py`. At arbitrary permitted reference phases `q*=y*=0`, change only `H[0,0]` and use its mean-zero phase copy in `K[:,0]`. Then

\[
F_{00}(td,tk)-F_{00}(0,tk)=\frac53(1-\cos t),
\]

so its quadratic coefficient is `+5/6`. The original matrix gives `-5/2`; the repaired implementation must give `+5/6`. This test uses the actual residual definition and an independent exact trigonometric identity. A sharper variant takes `k=-d_center/2`; then

\[
F_{00}(td,tk)-F_{00}(0,tk)=\frac53\left(\cos(3t/2)-\cos(t/2)\right),
\]

whose quadratic coefficient is `-5/3`, while the old matrix gives zero. This explicitly demonstrates that the original sign can underbound the norm, rather than merely choosing a different conservative upper bound.

The regression was run successfully against the repaired production `curved_expansion` using a generic nearby reference to avoid special zero cancellations in python-flint 0.9. Its independent complex-overlap derivative gives `+0.8322185008787635...`; reinstating only the original minus sign in process memory gives `-2.4966555026362905...` and the regression fails at that coefficient assertion. The zero-phase scalar identities are checked separately.

## 2. A complete H-motion decomposition

The proposed displayed definition of `R_HH` additionally subtracts `J_H H2(u tensor u)/2`. That subtraction is erroneous. Further, placing all its remainders at `y*` and then bounding only a `d^2 k` change does not explain the omitted `h`-dependent mixed terms. The following decomposition resolves both problems with exactly the constants already used by the code.

Let

\[
y=y_*+k,\quad d=Uu,\quad
h=\tfrac12H_2(u\otimes u)+\widetilde h,
\quad \|d\|\le d_u,\ \|h\|\le e_H,
\quad \|\widetilde h\|\le\widetilde e_H.
\]

Define at the **moving K phase y**

\[
R_h=F(q_*+d+h,y)-F(q_*+d,y)-F_H(q_*,y)h,
\]

\[
R_3=F(q_*+d,y)-F(q_*,y)-F_H(q_*,y)d
-\tfrac12F_{HH}(q_*,y)[d,d],
\]

and

\[
R_{HHK}=\tfrac12\{F_{HH}(q_*,y)-F_{HH}(q_*,y_*)\}[d,d].
\]

Then

\[
\begin{aligned}
F(q_*+d+h,y)=F(q_*,y)
&+J_H(d+h)+\tfrac12 F_{HH}(q_*,y_*)[d,d]\\
&+\{F_H(q_*,y)-J_H\}(d+h)
+R_h+R_3+R_{HHK}.
\end{aligned}
\]

This is an exact algebraic identity. The global derivative estimates give

\[
\|R_h\|\le2\sqrt6\,d_u e_H+\sqrt6\,e_H^2,
\quad
\|R_3\|\le\frac2{\sqrt3}d_u^3,
\quad
\|R_{HHK}\|\le\sqrt2\,d_u^2\|k\|.
\]

For the h-dependent first-derivative difference,

\[
\|\{F_H(q_*,y)-J_H\}h\|\le2e_H\|k\|.
\]

For the d-dependent part, expand in k, retaining `F_HK[d,k]` and bounding the remaining quadratic and higher K terms by the 90-ridge expressions. Splitting `J_H h` and substituting `z+Lambda u` yields the repaired matrix above. Hence the correct block floor is exactly

\[
\eta_g=r\|(K_u)_g\|+
\widetilde e_H\|(BJ_H)_g\|+
 r^2\|(M_{\mathrm{comb}})_g\|
+b_g(2\sqrt6 d_u e_H+\sqrt6 e_H^2)
+\frac2{\sqrt3}b_g d_u^3.
\]

This justifies `eta`, `gamma_hhk`, and the h-dependent part of `gamma` once the sign is repaired.

## 3. Uniform derivative constants

Only mixed residuals depend on H. For any real six-vector x, set `z=x-mean(x)`; then

\[
\sum_{s<t}(x_s-x_t)^2=6\|z\|^2,
\quad\max_{s,t}|x_s-x_t|\le\sqrt2\|z\|\le\sqrt2\|x\|.
\]

Consequently

\[
\sum_{s<t}|x_s-x_t|^3\le6\sqrt2\|x\|^3.
\]

Each mixed residual's third H derivative in direction d is a sum with coefficient `1/3`, so its absolute value is at most `2 sqrt(2) ||d_a||^3`. Summing squared bounds over the six K columns and all H columns gives

\[
\frac16\|F_{HHH}[d,d,d]\|
\le\frac16\sqrt{48\sum_a\|d_a\|^6}
\le\frac2{\sqrt3}\|d\|^3.
\]

This validates the cubic H tail without any small-angle or solution hypothesis.

The Cauchy-Schwarz bounds for mixed derivatives give

\[
\|F_{HK}[d,k]\|\le2\|d\|\|k\|,
\quad
\|F_{HHK}[d,d',k]\|\le2\sqrt2\|d\|\|d'\|\|k\|.
\]

For `F_HKKK`, bounding the H difference by `sqrt(2)||d_a||` and using the cubic difference bound gives

\[
\|F_{HKKK}[d,k,k,k]\|\le4\|d\|\|k\|^3.
\]

For `F_HKKKK`, the proposal's displayed bound `sum differences^4 <=12||k_b||^4` would only imply `4 sqrt(2)`, not the claimed `3 sqrt(2)`. The required stronger estimate is nevertheless elementary and valid:

\[
\sum_{s<t}(x_s-x_t)^4
=6\sum_s z_s^4+3\left(\sum_s z_s^2\right)^2
\le9\|z\|^4\le9\|x\|^4.
\]

It implies

\[
\|F_{HKKKK}[d,k,k,k,k]\|\le3\sqrt2\|d\|\|k\|^4.
\]

Thus the `2/3` and `sqrt(2)/8` Taylor coefficients in `curved_slack` are correct. General mixed-direction variants follow by Holder, though only repeated K inputs are needed for the Lagrange remainder used here.

## 4. Split C_j flattenings

For either coordinate block d, let `H=[C_1 ... C_4]` and `V=[C_1; ...; C_4]`, with the relevant output and input rows/columns retained. Then

\[
\left\|\sum_j u_j C_jz_d\right\|
\le\|H\|\,\|u\|\,\|z_d\|
\]

by the Kronecker product representation, while

\[
\left\|\sum_j u_j C_jz_d\right\|
\le\|u\|\left(\sum_j\|C_jz_d\|^2\right)^{1/2}
\le\|V\|\,\|u\|\,\|z_d\|.
\]

The minimum is valid, and the code's separate `beta_s` and `beta_w` formulas match.

## 5. The 90-ridge constants

For the phase convention in the code,

\[
\phi=-q_{sa}+y_{sb}+q_{ta}-y_{tb},
\quad \delta_j=U_{ta,j}-U_{sa,j},
\]

and the mixed ridge's H derivative is

\[
-\frac{\delta_j}{3}\sin(\phi+a_l^T\zeta)
=-\frac{\delta_j\sin\phi}{3}\cos(a_l^T\zeta)
-\frac{\delta_j\cos\phi}{3}\sin(a_l^T\zeta).
\]

The original `raw_s_j` cosine coefficient at line 286 has the opposite sign. Its sine coefficient and `C_j` are correct. This sign does **not** invalidate the original numerical Gram bounds: changing all cosine coefficients by a global minus sign leaves `VC.T*VC` and every squared amplitude unchanged. Correcting it makes the claimed exact ridge identity true.

With the corrected exact identity, the vertical stack over j is legitimate because

\[
\left\|\sum_j u_j R_j(\zeta)\right\|
\le\|u\|\left(\sum_j\|R_j(\zeta)\|^2\right)^{1/2}.
\]

The degree-two Gram matrices in original lines 304-306 are the appropriate strong/weak input flattenings. Their Taylor factors `1/2,1,1/2` are correct. The cubic matrices in lines 310-319 have factors `1/((3-k)! k!)` and match the mixed Taylor expansion.

For the fourth-order tail, for each output component i and ridge l,

\[
\sqrt{(\sum_j u_j BC_{j,il})^2+(\sum_j u_j BS_{j,il})^2}
\le\|u\|\sqrt{\sum_j(BC_{j,il}^2+BS_{j,il}^2)}.
\]

Summing the ridge Lagrange bounds in each output component and taking the Euclidean output norm yields exactly `gamma_u4_ridge`. The minimum with the global fourth-derivative bound is valid. Likewise, the third-order Gram-plus-fourth-tail bound and global cubic Lagrange bound are two bounds on the same residual, so taking their minimum is sound.

## 6. P1.4: rigorous combined Gram proofs

Let `s` denote a strong coordinate and `w` a weak coordinate. Set

\[
v=(s,\sqrt\alpha\,w),\quad \|v\|^2=\|s\|^2+\alpha\|w\|^2,
\quad \alpha>0.
\]

### Degree two

Use the feature

\[
b_l=(a_{l,s}/2,\ a_{l,w}/\sqrt\alpha).
\]

Then `b_l dot v=(a_s dot s)/2+(a_w dot w)`, and

\[
b_l^T b_m=(K_S)_{lm}/4+(K_W)_{lm}/\alpha.
\]

Flatten the tensor

\[
\sum_l c_l\otimes a_{l,s}\otimes b_l
\]

along its strong input. Its Gram matrix is

\[
G^{(2)}_{g,\alpha}=A_s^T\bigl((C_g^TC_g)\circ(K_S/4+K_W/\alpha)\bigr)A_s.
\]

Duality against a unit output test vector gives

\[
\left\|\tfrac12D^2_{ss}G_g[s,s]+D^2_{sw}G_g[s,w]\right\|
\le\sqrt{\|G^{(2)}_{g,\alpha}\|}\,\|s\|\sqrt{\|s\|^2+\alpha\|w\|^2}.
\]

This is valid for every positive alpha. The proposal's alternative explanatory vector and its alpha<=4 justification are unnecessary and incorrectly scaled.

### Degree three

In the symmetric tensor space of the same direct sum, use the feature matrix

\[
D_l=\begin{pmatrix}
 a_{l,s}a_{l,s}^T/6 & a_{l,s}a_{l,w}^T/(4\sqrt\alpha)\\
 a_{l,w}a_{l,s}^T/(4\sqrt\alpha)&a_{l,w}a_{l,w}^T/(2\alpha)
\end{pmatrix}.
\]

Then

\[
v^TD_lv=\tfrac16(a_s^Ts)^2+\tfrac12(a_s^Ts)(a_w^Tw)
+\tfrac12(a_w^Tw)^2,
\]

and its Frobenius feature Gram is exactly

\[
\langle D_l,D_m\rangle_F
=(K_S)_{lm}^2/36+(K_S)_{lm}(K_W)_{lm}/(8\alpha)
+(K_W)_{lm}^2/(4\alpha^2).
\]

Flattening `sum_l s_l tensor a_{l,s} tensor D_l` along the strong input therefore gives the code's `G^(3)`. Since `||v tensor v||=||v||^2`,

\[
\left\|\tfrac16D^3_{sss}G_g[s^3]
+\tfrac12D^3_{ssw}G_g[s^2,w]
+\tfrac12D^3_{sww}G_g[s,w^2]\right\|
\le\sqrt{\|G^{(3)}_{g,\alpha}\|}\,\|s\|(\|s\|^2+\alpha\|w\|^2).
\]

This proves the intended code bound without the proposal's unsupported statement about a quadratic expression's tensor norm.

## 7. P1.4: 16-angle bound

For `M(theta)=cos(theta)M_1+sin(theta)M_2`, let adjacent ray angles differ by `Delta=pi/16`. A unit vector at angle `theta_j+t`, `0<=t<=Delta`, is

\[
\frac{\sin(\Delta-t)}{\sin\Delta}n_j+
\frac{\sin t}{\sin\Delta}n_{j+1}.
\]

The coefficients are nonnegative and their sum is

\[
\frac{\cos(t-\Delta/2)}{\cos(\Delta/2)}\le\sec(\pi/32).
\]

The spectral norm is convex and homogeneous, and `M(theta+pi)=-M(theta)`. Thus 16 rays modulo pi suffice, with the wrap ray at pi being the negative of the ray at zero. The implemented `fmax(sample norms)/cos(pi/32)` is a valid global bound.

Strictly, the proposal should say that the true bilinear norm is bounded by this expression, or define the replacement upper bound as the minimum of its existing bound and this expression. An arbitrary previously selected upper bound `c_(g,2,1)` need not itself be below the new expression. The code correctly takes the minimum.

## 8. Endpoint and arithmetic checks relevant to these lemmas

The local `fmax` and `fmin` first replace each candidate with its outward upper endpoint before comparing. Consequently the maximum does not suffer the overlapping-Arb-ball error found in the earlier review. Each constituent spectral norm uses the inherited verified positive-definite Gram shift. Floating-point SVD values propose shifts, but all acceptance of a norm bound requires strict Arb positivity.

The stronger literal claim that replay performs no floating-point computations is false for the inherited `wholeball.spectral`; it still proposes spectral shifts using NumPy. Its acceptance is nevertheless rigorously checked. Other replay decision paths are reviewed separately.
