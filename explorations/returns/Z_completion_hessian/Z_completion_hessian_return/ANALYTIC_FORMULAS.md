# Analytic notes for Handoff Z

All formulae below are **PROVED** by differentiation or the stated elementary inequalities, conditional only on the supplied matched-completion existence theorem where existence is used. No MUB atlas or exclusion computation is used. Numerical experiments are not needed for these formulae.

## 1. Side equations have no mixed seed/side derivatives

Let `ReIm(z)` concatenate the real and imaginary parts of a complex three-vector, in the convention of `context/seedball.py`. Write the horizontal side angles as `phi=(x,y)` with `x,y in R^3` and put

\[
f(x,y)=\left(\sum_j e^{-ix_j},\ \sum_j e^{-iy_j},\ \sum_j e^{i(x_j-y_j)}\right).
\]

The horizontal seed contribution is

\[
c_h(\theta)=\begin{pmatrix}
1+e^{-i\theta_1}+e^{-i\theta_2}\\
1+e^{-i\theta_3}+e^{-i\theta_4}\\
1+e^{i(\theta_1-\theta_3)}+e^{i(\theta_2-\theta_4)}
\end{pmatrix}.
\]

The vertical contribution is `c_v(theta)=c_h(theta_1,theta_3,theta_2,theta_4)`. Each side solves

\[
F_s(\phi,\theta)=\operatorname{ReIm}(f(\phi)+c_s(\theta))=0.
\]

In particular, `F_phi,theta=0` exactly, not merely at the centre. Set `J=ReIm Df`, `K=ReIm Dc_s`. For directions `u,v`, the exact derivatives are

\[
a_u=D\phi[u]=-J^{-1}Ku,
\qquad
b_{uv}=D^2\phi[u,v]=-J^{-1}\operatorname{ReIm}\{D^2f[a_u,a_v]+D^2c_s[u,v]\}.
\tag{1}
\]

For `a=(a_x,a_y)`, `b=(b_x,b_y)`,

\[
Df[a]=\begin{pmatrix}
-i\sum e^{-ix_j}a_{xj}\\
-i\sum e^{-iy_j}a_{yj}\\
i\sum e^{i(x_j-y_j)}(a_{xj}-a_{yj})
\end{pmatrix},
\]

\[
D^2f[a,b]=-\begin{pmatrix}
\sum e^{-ix_j}a_{xj}b_{xj}\\
\sum e^{-iy_j}a_{yj}b_{yj}\\
\sum e^{i(x_j-y_j)}(a_{xj}-a_{yj})(b_{xj}-b_{yj})
\end{pmatrix}.
\tag{2}
\]

`Dc_s,D²c_s` have the same formulas with two terms. More generally each exponential `exp(i ell·z)` has mth derivative `i^m exp(i ell·z) product_k(ell·u_k)`, so the whole derivative tensor can be assembled without finite differences.

The third derivative, if needed for a Lipschitz extension of the Hessian, is

\[
\begin{split}
D^3\phi[u,v,w]=-J^{-1}\operatorname{ReIm}\{&D^3c_s[u,v,w]+D^3f[a_u,a_v,a_w]\\
&+D^2f[b_{uv},a_w]+D^2f[b_{uw},a_v]+D^2f[b_{vw},a_u]\}.
\end{split}\tag{3}
\]

### Universal derivative constants

For the Euclidean norms and real multilinear operator norms,

\[
\|D^2f\|=\frac3{\sqrt2},\quad
\|D^3f\|=\frac{\sqrt{33}}2,\quad
\|Dc_s\|\le\sqrt6,\quad
\|D^2c_s\|=\frac3{\sqrt2},\quad
\|D^3c_s\|=\frac{\sqrt{33}}2.
\tag{4}
\]

The equalities for second and third derivatives hold uniformly in the phases: a unit direction concentrated in one matched x/y coordinate with opposite signs attains the bounds. For a proof of the upper bounds, write `A=||a_x||`, `B=||a_y||`, `A²+B²=1`. The squared diagonal second-derivative norm is at most `A^4+B^4+(A+B)^4 <= 9/2`; the squared third-derivative norm is at most `A^6+B^6+(A+B)^6 <= 33/4`. For distinct directions, Cauchy–Schwarz (order 2) or generalized Hölder (order 3) gives the same bound. The argument uses only sums of absolute products of coordinates, so applies to realification and either two or three summands. The bound on `Dc_s` follows from the two-term Cauchy–Schwarz inequality and `||u_x-u_y||²<=2||u||²`.

Consequently `||J(phi)-J(phi0)|| <= (3/sqrt(2)) ||phi-phi0||`. Bounds (4) are useful for rigorous extension, but inverse-norm products built from them need not satisfy the requested factor-3 sharpness.

## 2. Forced-block derivatives preserving cancellations

Put `A=(B*)^{-1}`. Differentiate the identity `DB*+CE*=0`, rather than treating a long product/inverse expression as unrelated factors:

\[
D_u=-(C_uE^*+CE_u^*+DB_u^*)A,
\tag{5}
\]

\[
D_{uv}=-(C_{uv}E^*+C_uE_v^*+C_vE_u^*+CE_{uv}^*
+D_uB_v^*+D_vB_u^*+DB_{uv}^*)A.
\tag{6}
\]

For a side `S` with phase matrix `p` (its constant first row has zero derivatives),

\[
S_u=iS\odot p_u,
\qquad S_{uv}=S\odot(ip_{uv}-p_u\odot p_v).
\tag{7}
\]

The seed block uses the same rule, but its phase second derivatives vanish. Set `C=V^T` after applying (7) to the vertical side.

For any nonzero scalar entry `z`,

\[
(\arg z)_u=\operatorname{Im}(z_u/z),\quad
(\arg z)_{uv}=\operatorname{Im}(z_{uv}/z-z_uz_v/z^2).
\]

On the exact unimodular matched family, `z_u/z` is purely imaginary. Therefore the product term is real and drops out:

\[
\boxed{(\arg z)_{uv}=\operatorname{Im}(\overline z\,z_{uv}).}
\tag{8}
\]

Thus one should not add an avoidable `||DQ||²` term when bounding the exact phase Hessian. Assemble the full dephased phase Hessian from: zero in the seed block, `b_h` in the horizontal side, the transpose of `b_v` in the vertical side, and `Im(conj(D) odot D_uv)` in the fourth block. Finally apply the orthogonal projection `h(Q)=P6 Q P6`, where `P6=I-11^T/6`. Projection is linear and contractive.

For third derivatives the corresponding unimodular identity is

\[
(\arg z)_{uvw}=\operatorname{Im}(\overline z z_{uvw})
+(\arg z)_u(\arg z)_v(\arg z)_w.
\tag{9}
\]

`D_uvw` follows by one further derivative of (6), or the Leibniz rule on `DB*+CE*=0`; retaining this residual identity minimizes separately bounded terms.

## 3. Coordinate metric and Taylor remainder

On a strict convex seed ball with a fixed analytic lift, let `T=D(hQ)(theta0)` and `H=D²(hQ)`. The exact enclosure is

\[
\|hQ(\theta_0+Mw)-hQ(\theta_0)-TMw\|
\le\frac{r^2}2\sup_{\|w\|\le r}\|H(\theta_0+Mw)[M\cdot,M\cdot]\|.
\tag{10}
\]

Bounding the tensor after the two input contractions by `M` preserves anisotropy. Replacing it by `||H|| ||M||²` is valid but can lose sharpness by a large factor. Because `H` is symmetric and takes values in a real Hilbert space, its bilinear operator norm equals `sup_{||u||=1}||H[u,u]||`: dualize the output, use the scalar symmetric-matrix norm, and interchange the suprema. This identity applies to both raw and metric-contracted Hessians.

If a certified centre tensor has norm at most `C0` and a certified bound `L3` for `D³(hQ)` holds on `||theta-theta0||<=rho`, then `C<=C0+L3 rho` is immediate. This is a theorem, not evidence that an easily obtained `L3` is sharp.

## 4. Corner transfers and orientation

For an ordered 3×3 corner with anchors `i0,j0`, define

\[
\theta'_{ab}=q_{i_a j_b}-q_{i_a j_0}-q_{i_0 j_b}+q_{i_0j_0},
\qquad a,b\in\{1,2\}.
\tag{11}
\]

This is the claimed linear map `L_g`. It annihilates row and column phase directions. Thus `D²theta'=L_g D²(hQ)`. Each of the four rows of `L_g` has squared norm 4; their Gram matrix is `[[2,1],[1,2]] tensor [[2,1],[1,2]]`, with largest eigenvalue 9. Therefore

\[
\|L_g\|_2=3,
\qquad \|D^2\theta'\|\le3\|D^2(hQ)\|.
\tag{12}
\]

Direct contraction of the tensor by `L_g` is usually sharper than (12).

### A small global constant for the two new side-sign tests

For a phase matrix `q in R^(3×3)`, set

\[
\psi(q)=\operatorname{Im}\left(
\operatorname{perm}(e^{iq})\det(e^{iq})^2
/\prod_{ab}e^{iq_{ab}}\right).
\]

The raw 216-term Laurent expansion combines into a 55-term Laurent polynomial. Its imaginary part has exactly 24 sine terms, each coefficient +1 or −1: 18 integer frequencies have squared norm 10 and 6 have squared norm 18. Every frequency is horizontal. Their exact second-moment identity is

\[
\sum_{k=1}^{24}\nu_k\nu_k^T=72(P_3\otimes P_3).
\tag{13}
\]

Consequently, for every real phase matrix,

\[
\boxed{\|\nabla\psi\|\le24\sqrt3,\qquad \|D^2\psi\|\le72.}
\tag{14}
\]

Indeed the frequency matrix has norm `sqrt(72)`, the cosine vector has norm at most `sqrt(24)`, and the Hessian is `V diag(±sin) V^T`. Let `delta=h3(q-q0)` and `epsilon>=||delta||`. Then the particularly useful centre-based bound is

\[
|\psi(q)-\psi(q_0)|
\le\|\nabla\psi(q_0)\|\epsilon+36\epsilon^2.
\tag{15}
\]

It suffices for sign preservation that the right side is smaller than `|psi(q0)|`, with every computed quantity enclosed outwards. Apply this separately to each new side, taking its 3×3 phase submatrix from the same analytic lift; row/column dephasing does not change `psi`. A signed linear predictor plus a 36 epsilon² remainder is often sharper still.

Here is an exact integer replay for (13), including the sine-term census; it uses no floating point and proves the asserted finite algebraic identity:

```python
from collections import Counter
from itertools import permutations, product

perms = list(permutations(range(3)))
sgn = [(-1)**sum(p[i] > p[j] for i in range(3) for j in range(i+1,3))
       for p in perms]
c = Counter()
for a, b, d in product(range(6), repeat=3):
    nu = [-1]*9
    for p in (perms[a], perms[b], perms[d]):
        for i, j in enumerate(p):
            nu[3*i+j] += 1
    c[tuple(nu)] += sgn[b]*sgn[d]
c = {nu: z for nu, z in c.items() if z}
assert len(c) == 55
seen, terms = set(), []
for nu in sorted(set(c) | {tuple(-x for x in v) for v in c}):
    if nu in seen: continue
    neg = tuple(-x for x in nu)
    seen.update((nu, neg))
    z = c.get(nu, 0)-c.get(neg, 0)
    if z:
        assert abs(z) == 1
        terms.append((z, nu))
assert len(terms) == 24
assert Counter(sum(x*x for x in nu) for _, nu in terms) == {10:18, 18:6}
for a in range(9):
    for b in range(9):
        value = sum(nu[a]*nu[b] for _, nu in terms)
        expected = 8*(3*(a//3 == b//3)-1)*(3*(a%3 == b%3)-1)
        assert value == expected
print('PASS: exact 24-sine identity and second moment')
```

## 5. Degeneration: the generic exponent is R^(-3/2)

On an actual side, the supplied identities imply

\[
|\det J|=|\operatorname{Im}\Psi|/4=\sqrt R/8.
\tag{16}
\]

At a regular fold, one singular value is of order `sqrt(R)` and the other five stay bounded away from zero. The inverse Jacobian and first phase derivative are then generically of order `R^(-1/2)`, and (1) gives a second derivative of order `R^(-3/2)`. The simple normal form makes necessity transparent: if `R=t`, a nontrivial phase coordinate has `q=q0+v sqrt(t)+O(t)`, hence

\[
q_{tt}=-\frac{v}{4t^{3/2}}+O(t^{-1/2}).
\tag{17}
\]

The third derivative is generically of order `R^(-5/2)`. These are conditional regular-fold asymptotics, not a universal statement at every boundary stratum. At higher degeneracies more hypotheses are needed. In particular a universal `c/sqrt(R)` or `c/R` Hessian estimate cannot hold near a regular fold with nonzero transverse phase derivative and bounded nonzero `dR`.

**NOT ESTABLISHED:** a universal asymptotic valid at every `R=0` point, or a universal bound controlled only by a chosen scalar `R` without other conditioning information. One can derive very coarse such inverse bounds from (16) and `||J||<=3`, but these need not be sharp.

## 6. Two scope corrections

### Analytic lifts

**PROVED locally / on a contractible strict ball:** after an ordered side pair at the centre is fixed, the implicit-function theorem gives analytic sides; continuation remains nonsingular while `R>0`. Compactness of the side torus makes the resulting local-diffeomorphism pullback proper on compact seed subsets, hence a covering; on a contractible strict ball the chosen local branch extends throughout. The nonzero unimodular entries have continuous, indeed real-analytic, phase lifts there. This suffices for (10).

**NOT ESTABLISHED globally on Omega:** a single ordered analytic completion and a single real-valued phase lift on all of Omega. The supplied matched uniqueness is modulo permutations/equivalence and does not by itself remove label monodromy or phase winding.

For a pointwise principal phase array, changing a lift by `2pi K`, `K integer`, changes its horizontal projection by `2pi h(K)`. The horizontal winding lattice is therefore `2pi h(Z^36)`, not generally `2pi Z^36`. Choosing one continuous lift from the centre makes the Taylor estimate unambiguous and requires no winding term.

### R=0 is a corner degeneration, not a test for the F6 class

Let `F3` be the unnormalised 3×3 Fourier matrix and `D(t)=diag(1,e^{it},1)`. The Hadamard family

\[
K(t)=\begin{pmatrix}F_3&F_3\\F_3D(t)&-F_3D(t)\end{pmatrix}
\]

has leading corner `E=F3` for every t. That corner has `G=3I`, `g=27`, `eta=9`, `chi=-162`, hence `R=0`. Yet `K(t)` has the phase-invariant 2×2 cross ratio `e^{it}`; Fourier-6 cross ratios are sixth roots of unity. Thus generic `K(t)` is not equivalent to F6. The statement that reconstruction degenerates *only* at F6 must refer to the simultaneous all-corner degeneracy or a specially proved corner-selection rule, not to the scalar R of an arbitrary fixed corner.

**NOT ESTABLISHED from these inputs:** excluding an F6 neighbourhood implies a positive lower bound for the R of the chosen corner. A separate quantitative corner-selection/conditioning theorem would be needed for that inference.

## 7. Full 6×6 Gram residual: global second and third derivative bounds

Let `Phi(q)` concatenate the real and imaginary parts of the fifteen upper off-diagonal entries of `H(q)H(q)*`, where `H(q)_rj=exp(i q_rj)`. For arbitrary phase arrays `A,B,C`,

\[
D^2\Phi(q)[A,B]_{rs}
=-\sum_j e^{i(q_{rj}-q_{sj})}(A_{rj}-A_{sj})(B_{rj}-B_{sj}),
\tag{18}
\]

\[
D^3\Phi(q)[A,B,C]_{rs}
=-i\sum_j e^{i(q_{rj}-q_{sj})}(A_{rj}-A_{sj})(B_{rj}-B_{sj})(C_{rj}-C_{sj}).
\tag{19}
\]

With Frobenius input norms and the Euclidean norm on the 30 real outputs, the global bounds requested for the alternative full-phase implicit chart are

\[
\boxed{\|D^2\Phi\|\le2\sqrt3,\qquad \|D^3\Phi\|\le2\sqrt6.}
\tag{20}
\]

Proof: write `d_A(rs)=||A_r-A_s||`. Then

\[
\max_{r<s}d_A(rs)^2\le2\|A\|^2,
\qquad
\sum_{r<s}d_A(rs)^2=6\|A\|^2-\|\sum_r A_r\|^2\le6\|A\|^2.
\]

Therefore `sum d_A^4 <=12||A||^4` and `sum d_A^6 <=24||A||^6`. Cauchy–Schwarz bounds each component of (18) by `d_A d_B`, and Hölder bounds the squared output sum by the geometric mean of the fourth-moment sums. For (19), the sum of absolute coordinate triple products is at most `d_A d_B d_C`, and generalized Hölder uses the sixth-moment sums. This proves (20), with no Hadamard assumption and hence throughout every phase neighbourhood. Restricting to the horizontal gauge or projecting the output onto any fixed orthonormal residual subspace preserves these bounds.

These estimates have the specified normalization: each unordered row pair appears once, with its real and imaginary parts. Counting both off-diagonal halves instead would introduce an extra factor `sqrt(2)`.

## 8. Audit of the whole-ball quadratic-predictor certificate

The following verifies the formulas proposed by the parent for the alternative full-phase chart. It does not assert numerical success for any particular ball.

Assume `q0` is an exact matched horizontal phase centre. Let `L` be the four-seed restriction; choose an exact full-column-rank `X:R^21 -> ker(L) intersect horizontal`, and a preconditioner `W:R^30 -> R^21` such that `W J X=I`, where `J=DPhi(q0)`. Choose `U` so `LU=M`, `WJU=0`. Set

\[
h_2=-W D^2\Phi(q_0)[U,U],\quad H_2=Xh_2,\quad
q_p(w)=q_0+Uw+\tfrac12H_2[w,w].
\]

The exact matched germ establishes `JU=0` and identifies `H2` with its actual phase Hessian. For the projected equation use

\[
G(w,z)=W\Phi(q_p(w)+Xz)=0.
\]

Let bounds for `||X||,||U||,||h2||,||H2||` be `x,u,gamma,beta`. Let

\[
c\ge\|WD^2\Phi(q_0)[U,X]\|,\quad
d\ge\|WD^2\Phi(q_0)[X,X]\|,
\]

and `L2>=2sqrt(3)||W||`, `L3>=2sqrt(6)||W||`. If `||w||<=r`, `||z||<=tau`, write `delta=u r+beta r²/2+x tau`. The following are valid bounds:

\[
\|G_z-I\|\le q:=cr+d(\gamma r^2/2+\tau)+\tfrac12L_3x\delta^2,
\]

\[
\|G_{wz}\|\le m_1:=c+d\gamma r+L_3x\delta(u+\beta r),
\]

\[
\|G_{wwz}\|\le m_2:=L_3x(u+\beta r)^2+L_2x\beta,
\quad
\|G_{zz}\|\le m_{zz}:=d+L_3x^2\delta.
\]

Proof: expand `DPhi(q0+eta)` through its quadratic remainder for the first line; expand `D²Phi` through its first-order bound for the other lines, keeping the centre tensors `c,d` separate. The polynomial `q_p` has first derivative at most `u+beta r` and constant second derivative `H2`.

Let `p(w)=G(w,0)` and obtain certified `b0,b1,b2` bounding `||p||,||Dp||,||D²p||` on the ball. If `q<1` and `b0+q tau<tau`, the contraction `z -> z-G(w,z)` has a unique solution in the tube. Moreover

\[
z_1=\frac{b_1+m_1\tau}{1-q},\quad
z_2=\frac{b_2+m_2\tau+2m_1z_1+m_{zz}z_1^2}{1-q}
\]

bound the first and second derivatives of the solution. This follows by differentiating `G(w,z(w))=0`, using
`G_w(w,z)=Dp(w)+integral_0^1 G_wz(w,tz)[z]dt` and the analogous second-w derivative.

Thus the metric Hessian and direct Taylor enclosure obey

\[
C_w\le\beta+xz_2,\qquad
n_{\rm direct}\le\tfrac12\beta r^2+x\tau.
\]

The exact residual has `p(0)=Dp(0)=D²p(0)=0`. If exact centre third/fourth derivative bounds are `t3,t4` and its fifth derivative has bound `L5` on the ball, then

\[
\begin{aligned}
b_0&=t_3r^3/6+t_4r^4/24+L_5r^5/120,\\
b_1&=t_3r^2/2+t_4r^3/6+L_5r^4/24,\\
b_2&=t_3r+t_4r^2/2+L_5r^3/6.
\end{aligned}
\]

For each exponential `exp(i(s·w+w^T T w/2))`, the fifth derivative bound uses coefficients `1,10,15`: with `a=||s||+r||T||`, it is at most `a^5+10||T||a³+15||T||²a`. The prototype's signs in the third and fourth derivatives are correct. Flattening derivative tensors into output-by-input-product matrices gives valid upper bounds on their multilinear operator norms.

### Why the omitted residual equations vanish

Strict contraction with `G_z` invertible gives a real-analytic projected solution on an open connected neighbourhood of the parameter ball. Near the centre it agrees with the already-known matched germ, by projected uniqueness. Every component of the full residual `Phi` is therefore an analytic function of `w` vanishing on a nonempty open set, and hence vanishes on the whole connected neighbourhood. This is a legitimate application of the real-analytic identity theorem. It requires the exact matched germ at the centre, not merely a small numerical full residual there.

Separate side-sign or strictness checks identify the entire resulting family with the requested strict matched branch. Approximate stored centre and frame data require their usual added centre/frame rounding errors in C1.

### Direction-sensitive orientation check for this predictor

For either 3×3 side selection `S`, let `A=h3 S` and `g=gradient psi(Aq0)`. Put

\[
\epsilon=\|AU\|r+\tfrac12\|AH_2\|r^2+\|AX\|\tau.
\]

Then a useful whole-ball bound is

\[
|\psi(Aq(w))-\psi(Aq_0)|
\le\|gAU\|r+\tfrac12\|gAH_2\|r^2+\|gAX\|\tau+36\epsilon^2.
\]

Here `gAH2` is a scalar symmetric 4×4 matrix, so its spectral norm bounds the quadratic term. If this is strictly smaller than the certified `|psi(Aq0)|=sqrt(R0)/2`, the side retains its centre orientation throughout the ball. Apply separately to the two sides.

### Audited refinement used by the final interval implementation

Let `A(w)=W DPhi(q_p(w))X`, so `A(0)=I`. Bound its second derivative at zero by `a2` and its third derivative throughout the parameter ball by `L3a`. An individual exponential with linear phase coefficient `s`, quadratic coefficient `T`, and normal phase coefficient `dx` contributes
`(-T_ij - i s_i s_j) dx` to `A''(0)`. Its third derivative is bounded by
`||dx|| (a³+3||T||a)`, where `a=||s||+r||T||`, times the norm of the corresponding real output coefficient map. The implementation sums those bounds to obtain `L3a`, retaining cancellation in the exact centre tensor used for `a2`.

The sharper valid formulas are then

\[
q_{\rm base}=cr+\tfrac12a_2r^2+\tfrac16L_{3a}r^3,
\]

\[
q=q_{\rm base}+(d+L_3x^2\,\mathrm{base})\tau
+\tfrac12L_3x^3\tau^2,
\quad \mathrm{base}=ur+\tfrac12\beta r^2,
\]

\[
m_1=c+a_2r+\tfrac12L_{3a}r^2+L_3x^2(u+\beta r)\tau.
\]

The previously stated `m2,mzz,z1,z2` formulas remain valid. These refined formulas, including tensor signs and all factors of `x`, were independently audited against `fullphase/certify.py`.

The implementation audit found and corrected a Python `max` applied directly to Arb balls in the centre Krawczyk test: overlapping interval comparisons do not compute a rigorous maximum enclosure. The final version takes the maximum of certified scalar upper endpoints. It also rounds the reported lower R margin outwards. The interval LDL spectral-norm test, exact normalization of `W`, rational construction of the horizontal normal basis, predictor residual formulas, and orientation checks passed this independent review.
