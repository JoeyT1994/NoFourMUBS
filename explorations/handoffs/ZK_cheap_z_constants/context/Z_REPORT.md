# Z — whole-ball completion enclosures and sharp Hessian certificates

## 1. Outcome

**CERTIFIED.** The centre-based method below certifies **291 of the 300 reconstructed canonical seed balls at their full listed radii**, including existence of the matched branch, both orientation signs, a Hessian bound, and a rounded C1 enclosure. It uses no subdivision of the seed ball. All nine remaining rows have a separately certified smaller-radius fallback.

**CERTIFIED.** The sharpness comparisons use independently certified interior witnesses, so the denominators are rigorous lower bounds on the true suprema. They are not unvalidated sampled maxima.

| Quantity | Benchmark subset | Certified statement |
|---|---|---|
| Full-radius strict completion and C1 enclosure | All 300 listed rows | 291 pass; 9 are inconclusive at full radius |
| Rounded C1 bound / true maximum rounded-record residual | All 291 full-radius successes | Less than **1.793** on every ball |
| Contracted Hessian bound / true contracted Hessian supremum | The 265 listed rows with centre R at least 100 | Less than **2.350** on every ball |
| Raw-seed Hessian bound / true raw-seed Hessian supremum, on the same ellipsoid | The 259 listed rows with centre R at least 150 | Less than **2.278** on every ball |
| Contracted Hessian bound within factor 3 | All 291 full-radius successes | 279 balls |
| Raw-seed Hessian bound within factor 3 | All 291 full-radius successes | 270 balls |

**Scope.** These are finite benchmark theorems about the explicitly stored balls. They do not assert a uniform theorem for every seed satisfying R ≥ 100 or R ≥ 150. The general sufficient condition is the scalar radii inequality in §5 and `THEOREM.md`; that theorem applies to any centre and frame for which its tests pass.

**Scope.** The CSV supplies only two singular values of each frame, not its entries or its exact phase/frame anchors. I reconstructed the documented canonical horizontal frames. All 300 largest and smallest singular values agree with the CSV after its stated six-decimal rounding. The new certificates concern the full, exact dyadic frames saved in the output records, together with the exact decimal centres and radii from the CSV. Bitwise identification with the unavailable original records is **NOT ESTABLISHED**.

**PROVED / CERTIFIED.** The brief's proposed scalar conversion

\[
n=\tfrac12 C_\theta\|M_\theta\|^2r^2
\]

cannot meet the requested factor-three enclosure sharpness on all these balls, even if the raw-seed Hessian constant were optimal. At row 235, a certified centre direction forces this expression to be at least 0.5784464003, while the true Taylor remainder is at most 0.0253417427. The loss is greater than **22.8258**. The practical improvement is to preserve the frame in the tensor contractions, and to use the quadratic predictor's direct enclosure rather than integrating an unnecessarily large supremum Hessian.

**Dependency.** The upper-bound proof uses the supplied local matched-completion germ: an exact matched centre, nonsingular side Jacobians, and the matched-flatness theorem from the supplied `PROOF.md` §2. The Hessian-witness identification also uses the supplied uniqueness of a normalized strict side with fixed signature up to a column permutation. No global exclusion, MUB atlas, or Stage C result is used. The interval computations are replayable with Arb; a Lean formalization of this new certificate is **NOT ESTABLISHED**.

## 2. Exact objects, inputs, and norms

**Definitions.** Write

\[
E(\theta)=\begin{pmatrix}1&1&1\\1&e^{i\theta_1}&e^{i\theta_2}\\1&e^{i\theta_3}&e^{i\theta_4}\end{pmatrix},
\qquad H=\begin{pmatrix}E&B\\C&D\end{pmatrix},
\qquad D=-CE^*(B^*)^{-1}.
\]

The horizontal projection is h(q)=P₆qP₆, with P₆=I−11ᵀ/6. Phase-array norms are Frobenius norms; parameter norms are Euclidean. Hessian norms mean the real bilinear operator norm. For a symmetric real Hessian with Hilbert-space output, this equals the supremum of its diagonal directional norm over unit directions.

**PROVED.** The exact Taylor remainder relevant to a seed ellipsoid is

\[
N=\sup_{\|w\|\le r}
\|hQ(\theta_0+Mw)-hQ(\theta_0)-D(hQ)(\theta_0)Mw\|.
\]

Its natural Hessian is

\[
\mathcal H_w(w)=D_\theta^2(hQ)(\theta_0+Mw)[M\cdot,M\cdot].
\]

Thus N ≤ r² sup‖H_w‖/2. Replacing H_w by ‖D²Q‖‖M‖² is valid but discards the association between large frame directions and small curvature directions.

**CERTIFIED input convention.** Decimal centre/radius strings in the CSV denote exact decimal rationals. Every saved frame entry is an exact binary64 dyadic rational, serialized as hexadecimal. The fixed normal basis is similarly specified in `fullphase/basis.json`. Centre side angles are isolated with a 6-dimensional Krawczyk test at 224-bit precision. Floating roots, directions and singular values propose candidates only.

**NUMERICAL input audit.** All 300 centre completions were solved independently; the canonical metric frame is obtained from the SVD of the horizontal derivative, as specified in the handoff. The actual radius range in the CSV is 0.063 to 0.125. The numerical source and diagnostic tables are retained in `numerics/`; the definitive proof outputs are the files named `FINAL_CERTIFICATES`, `lower_witnesses`, `remainder_lower_witnesses`, and `CERTIFIED_COMPARISON`.

## 3. Explicit side, forced-block, and phase derivatives

**PROVED.** With side angles φ=(x,y) in R⁶, define

\[
f(x,y)=\begin{pmatrix}
\sum_j e^{-ix_j}\\\sum_j e^{-iy_j}\\\sum_j e^{i(x_j-y_j)}
\end{pmatrix},
\quad
c_h(\theta)=\begin{pmatrix}
1+e^{-i\theta_1}+e^{-i\theta_2}\\
1+e^{-i\theta_3}+e^{-i\theta_4}\\
1+e^{i(\theta_1-\theta_3)}+e^{i(\theta_2-\theta_4)}
\end{pmatrix}.
\]

The horizontal equations are F_h=ReIm(f+c_h)=0; the vertical equations use c_v(θ)=c_h(θ₁,θ₃,θ₂,θ₄). In particular, **F_{φθ}=0 exactly**. Let J=D_φF and K=D_θF. Then

\[
\phi_u=-J^{-1}Ku,
\qquad
\phi_{uv}=-J^{-1}\operatorname{ReIm}
\{f''[\phi_u,\phi_v]+c''[u,v]\}.
\tag{1}
\]

For directions a=(a_x,a_y), b=(b_x,b_y),

\[
f''[a,b]=-\begin{pmatrix}
\sum e^{-ix_j}a_{xj}b_{xj}\\
\sum e^{-iy_j}a_{yj}b_{yj}\\
\sum e^{i(x_j-y_j)}(a_{xj}-a_{yj})(b_{xj}-b_{yj})
\end{pmatrix}.
\]

The first and higher derivatives are equally explicit: every term e^{iℓ·z} contributes iᵏe^{iℓ·z} times the product of the k directional linear forms. The first three phase jets are implemented in `numerics/core.py`, without finite differences.

**PROVED.** Differentiating the residual identity DB*+CE*=0 preserves its cancellations. With A=(B*)⁻¹,

\[
D_u=-(C_uE^*+CE_u^*+DB_u^*)A,
\tag{2}
\]

\[
D_{uv}=-\big(C_{uv}E^*+C_uE_v^*+C_vE_u^*+CE_{uv}^*
+D_uB_v^*+D_vB_u^*+DB_{uv}^*\big)A.
\tag{3}
\]

For every side entry S=e^{ip}, S_u=iS p_u and S_uv=S(ip_uv−p_up_v). The seed phases have zero second derivative. These rules and (1)–(3) explicitly determine the entire Hessian in terms of the seed, side angles and inverse side Jacobians.

**PROVED.** On the exact unimodular family,

\[
(\arg z)_u=\operatorname{Im}(\overline z z_u),
\qquad
(\arg z)_{uv}=\operatorname{Im}(\overline z z_{uv}).
\tag{4}
\]

The usual product (z_u/z)(z_v/z) is real, so it contributes nothing to the imaginary part. Adding a separate first-derivative-squared penalty would therefore introduce avoidable overestimation. Apply h after assembling the dephased phase tensor.

**NUMERICAL cross-check.** Analytic derivatives through third order agree with finite-difference diagnostics at the tested centres to the stated tolerances in `numerics/check_derivatives.py`. First- and second-order differentiated unitarity residuals are also checked. These checks help detect implementation mistakes; the certificate itself uses interval identities and the theorem below.

## 4. A certificate that retains the centre cancellations

**PROVED.** The good bounds come from retaining the same four seed coordinates while solving the full phase orthogonality equations for the remaining 21 horizontal directions.

Let Φ(q) be the 30 real components of the 15 complex upper off-diagonal entries of e^{iq}(e^{iq})*. Let L take the four seed cross-ratio phases. Choose exact V and X with

\[
LV=I_4,\qquad LX=0,\qquad
\operatorname{range}(X)=\operatorname{range}(h)\cap\ker L.
\]

V and X have rational entries. At an exact centre q₀, put J=DΦ(q₀), A=JX, and

\[
W=(A^TA)^{-1}A^T,
\quad U=(V-XWJV)M,
\quad h_2=-WD^2\Phi(q_0)[U,U],
\quad H_2=Xh_2.
\tag{5}
\]

Then WJX=I, LU=M and LH₂=0 exactly. These are the exact first and second jets of the local matched germ. The centre q₀ may be dephased; the variable increments are horizontal and the reported centre is h(q₀).

Define

\[
q_p(w)=q_0+Uw+\tfrac12 H_2[w,w],
\qquad G(w,z)=W\Phi(q_p(w)+Xz).
\tag{6}
\]

The predictor residual p(w)=G(w,0) vanishes through second order at zero. The calculation keeps its third- and fourth-order tensor sums intact before taking norms. The remaining fifth-order term has a simple explicit bound.

**PROVED.** Globally in phase space,

\[
\|D^2\Phi\|\le2\sqrt3,
\qquad \|D^3\Phi\|\le2\sqrt6.
\tag{7}
\]

For example, if d_A(i,j)=‖A_i−A_j‖, then max d_A²≤2‖A‖² and Σd_A²≤6‖A‖². The resulting fourth- and sixth-moment bounds, followed by Cauchy–Schwarz or Hölder, prove (7). No Hadamard assumption is required in this estimate, so it remains valid on the correction tube.

**PROVED.** All radius-dependent constants below are obtained from 90 centre atoms. For an atom a=(i<j,k), set ν_a=e_ik−e_jk, z_a=e^{iν_aq₀}, s_a=ν_aU, T_a=ν_aH₂, d_a=ν_aX, and

\[
\kappa_a=(W_{:,p}-iW_{:,p+15})z_a,
\quad p(w)=\operatorname{Re}\sum_a\kappa_a
e^{i(s_aw+T_a[w,w]/2)}.
\]

With t_a≥‖T_a‖₂, a_a=‖s_a‖+rt_a, and c_a≥‖[Reκ_a,−Imκ_a]‖₂, one can take

\[
L_5=\sum_a c_a(a_a^5+10t_aa_a^3+15t_a^2a_a),
\quad
L_{3a}=\sum_a c_a\|d_a\|(a_a^3+3t_aa_a).
\tag{8}
\]

The centre tensors p'''(0), p''''(0), and D_w²G_z(0,0) are given explicitly in `THEOREM.md`. Their flattened matrix norms give computable upper bounds t₃,t₄,a₂. The complete finite formulas, including all signs and multiplicities, are implemented in `fullphase/certify.py`.

## 5. Explicit whole-ball bound and proof

**PROVED.** Choose upper bounds

\[
x\ge\|X\|,\quad u\ge\|U\|,\quad\beta\ge\|H_2\|,
\quad c\ge\|WD^2\Phi(q_0)[U,X]\|,
\quad d\ge\|WD^2\Phi(q_0)[X,X]\|,
\]

and L₂≥2√3‖W‖, L₃≥2√6‖W‖. Define

\[
\begin{aligned}
b_0&=t_3r^3/6+t_4r^4/24+L_5r^5/120,\\
b_1&=t_3r^2/2+t_4r^3/6+L_5r^4/24,\\
b_2&=t_3r+t_4r^2/2+L_5r^3/6,\\
b&=ur+\beta r^2/2,\\
q_0^{\rm maj}&=cr+a_2r^2/2+L_{3a}r^3/6.
\end{aligned}
\]

Find a positive τ satisfying the two scalar inequalities

\[
q=q_0^{\rm maj}+(d+L_3x^2b)\tau+L_3x^3\tau^2/2<1,
\qquad b_0+q\tau<\tau.
\tag{9}
\]

Put δ=b+xτ and

\[
\begin{aligned}
m_1&=c+a_2r+L_{3a}r^2/2+L_3x^2(u+\beta r)\tau,\\
m_2&=L_3x(u+\beta r)^2+L_2x\beta,\\
m_{zz}&=d+L_3x^2\delta,\\
Z_1&=(b_1+m_1\tau)/(1-q),\\
Z_2&=(b_2+m_2\tau+2m_1Z_1+m_{zz}Z_1^2)/(1-q).
\end{aligned}
\tag{10}
\]

Then the requested contracted Hessian and the sharper direct enclosure obey

\[
\boxed{\sup_{\|w\|\le r}\|\mathcal H_w(w)\|\le C_w=\beta+xZ_2,}
\qquad
\boxed{N\le n_{\rm direct}=\tfrac12\beta r^2+x\tau.}
\tag{11}
\]

**Proof.** Equation (9) proves that z↦z−G(w,z) contracts the entire closed τ-ball into itself, uniformly over the w-ball. It therefore has a unique solution z(w), with ‖z‖≤τ. The exact local matched germ solves this projected system and hence agrees near zero by uniqueness. The projected solution is real analytic. Each of the full 30 residual components is analytic and vanishes on that open germ, so the identity theorem makes it vanish throughout the connected parameter ball. Thus the constructed phases are Hadamard, not merely solutions of the projected equations. Strict inequalities and the implicit-function theorem also give local analytic extensions at boundary points.

The derivative bounds in (10) follow by differentiating G(w,z(w))=0 twice, using ‖G_z⁻¹‖≤1/(1−q), and bounding G_w,G_ww by their predictor values plus the normal correction. Consequently q=q_p+Xz has Hessian norm at most β+xZ₂. Its exact Taylor remainder has the direct bound βr²/2+xτ. The separately verified side signs identify the entire graph with the requested strict matched branch. This proves (11).

**PROVED.** For raw seed directions at points of this same ellipsoid, a sharper conversion than C_w‖M⁻¹‖² is

\[
\boxed{C_{\theta,\mathcal E}
=\beta_\theta+xZ_2\|M^{-1}\|^2,
\qquad
\beta_\theta\ge\|H_2[M^{-1}\cdot,M^{-1}\cdot]\|.}
\tag{12}
\]

The centre Hessian is contracted before taking its norm; only the correction uses the inverse-frame norm.

**PROVED, with a precise domain distinction.** A centre-based isotropic C(θ₀,ρ) is obtained by running exactly the same theorem with M=I and r=ρ, provided (9) and the sign tests pass. Equation (12), evaluated for a different M, does not certify the larger Euclidean ball of radius ‖M‖r. Uniform factor-three sharpness on all such larger Euclidean balls is **NOT ESTABLISHED**.

**CERTIFIED rounding.** Every successful record includes hexadecimal P,U,M, their exact input convention, and bounds ε_P,ε_U on the centre and frame rounding. The emitted C1 radius is

\[
n_{\rm record}=n_{\rm direct}+\epsilon_P+r\epsilon_U.
\tag{13}
\]

The certified maximum centre rounding error in this run is below 6.21×10⁻¹⁶; the frame error is below 1.003×10⁻¹⁵. These allowances are included, not discarded.

## 6. Why the sharpness statements are proofs

**CERTIFIED.** The full-ball upper constants are evaluated with Arb at 224-bit precision. Spectral norms are verified by an Arb LDLᵀ factorization of a positive Gram shift; the floating SVD only proposes a candidate shift. The fixed rational basis and the unique exact definition W=(AᵀA)⁻¹Aᵀ ensure that the certificate and witness replays refer to identical projected equations.

**CERTIFIED, using the supplied side-uniqueness theorem.** For each row, interior points and directions proposed by the numerical search are checked again with interval arithmetic. The points are moved inward by the exact rational factor 999999999999/10¹², and membership in the exact ellipsoid is verified. The side roots and directional Hessians are rigorously enclosed. At a fixed seed and orientation, normalized sides are unique up to column permutation; the resulting full matrices differ by permutations of the last three columns and rows. Those permutations are locally constant on a strict branch and preserve the horizontal Frobenius norm. Thus these directional norms are witnesses for the same chart, independently of the numerical labelling of the solved sides. If L_H is the resulting positive lower bound and S_H is the true whole-ball Hessian supremum, then

\[
L_H\le S_H\le C_H
\quad\Longrightarrow\quad C_H/S_H\le C_H/L_H.
\]

This certifies a sharpness ratio without claiming to know the true supremum exactly.

**CERTIFIED.** For remainder witnesses, phase wrapping is checked, the exact seed is identified, and the endpoint's normal correction is proved to lie inside the contraction tube. Uniqueness then identifies the endpoint with the certified chart. Its residual norm is a lower bound on the true remainder maximum. The lower bound for a rounded record is decreased by ε_P+rε_U before taking the ratio. All 291 full-radius successes have certified ratio below 1.792879.

**CERTIFIED data interface.** `numerics/CERTIFIED_COMPARISON.csv` contains all 300 rows, both Hessian upper bounds, their certified lower witnesses, the outward ratio bounds, the direct and rounded C1 bounds, and status flags. The true supremum is not replaced by a sampled number. Numerical exploration, including 16,800 sampled points, is documented separately.

## 7. A rigorous obstruction to the scalar recipe

**CERTIFIED.** Row 235 has r=0.125. An exact coordinate direction gives

\[
\|D_\theta^2(hQ)(\theta_0)[e_1,e_1]\|>27.59109569831527,
\qquad \|M\|>1.63814398862456.
\]

Hence any valid raw-seed Hessian upper bound inserted into the brief's scalar recipe produces

\[
\tfrac12 C_\theta\|M\|^2r^2>0.57844640034742.
\]

Our direct full-ball proof gives N<0.02534174263439. Therefore the scalar recipe is more than 22.8258 times the true maximum remainder. At row 4, where R is about 297.49, the analogous proved loss exceeds 3.94914. This is not solely a phenomenon at very small R.

**PROVED conclusion.** Improving an isotropic C_θ alone cannot repair that conversion. The useful implementation is to retain M in the Hessian inputs and to use n_direct for C1. The Hessian certificate remains useful for transfers and derivative control.

## 8. Corner changes and both signature signs

**PROVED.** A change to an ordered corner takes four phase cross ratios,

\[
\theta'_{ab}=q_{i_a j_b}-q_{i_a j_0}-q_{i_0j_b}+q_{i_0j_0}=(L_gq)_{ab}.
\]

Its operator norm is exactly 3. Direct tensor contraction gives the stronger transfer bounds

\[
\|D_w^2\theta'\|\le\|L_gH_2\|+\|L_gX\|Z_2,
\]

\[
\|\theta'(w)-\theta'_0-L_gUw\|
\le\tfrac12\|L_gH_2\|r^2+\|L_gX\|\tau.
\tag{14}
\]

The simpler bound 3C_w is always valid. To test transfer to a target frame M_t and radius r_t, evaluate the target-coordinate quadratic predictor on the boundary patch and add ‖M_t⁻¹L_gX‖τ. If its norm is strictly below r_t, and the required signatures have the target signs, the image lies in the target ball. Actual boundary coverage is **NOT ESTABLISHED** here because target records and boundary patches were not supplied.

**CERTIFIED exact identity.** For any 3×3 phase array, ψ=ImΨ is a sum of 24 sine terms with coefficients ±1. Their integer frequencies satisfy

\[
\sum_{a=1}^{24}\nu_a\nu_a^T=72(P_3\otimes P_3).
\]

`signature_replay.py` verifies the Laurent expansion and this identity with integer arithmetic. They imply the global bounds

\[
\|\nabla\psi\|\le24\sqrt3,\qquad \|D^2\psi\|\le72.
\tag{15}
\]

**PROVED.** Let A select and horizontally project a new side, g=∇ψ(Aq₀), and

\[
\epsilon=\|AU\|r+\tfrac12\|AH_2\|r^2+\|AX\|\tau.
\]

Then its signature variation is at most

\[
\|gAU\|r+\tfrac12\|gAH_2\|r^2+\|gAX\|\tau+36\epsilon^2.
\tag{16}
\]

Here gAH₂ is a scalar symmetric Hessian, so its matrix spectral norm is used. If (16) is smaller than |ψ(Aq₀)|, the sign is preserved. Apply this independently to both sides. All 291 successful full-radius balls pass both tests; the smallest certified absolute sign margin exceeds 2.4416. Since R=4ψ² on an actual side, these are also quantitative strict-domain certificates.

## 9. Degeneration and phase-lift corrections

**PROVED under regular-fold hypotheses.** At an actual side, |detJ_side|=√R/8. At a regular fold, one singular value is of order √R, while the other five remain bounded away from zero. A nonzero transverse phase term has the form

\[
q(t)=q_0+v\sqrt t+O(t),\quad t=R,
\qquad q''(t)=-v/(4t^{3/2})+O(t^{-1/2}).
\]

The generic Hessian rate is therefore **R⁻³ᐟ²**, and the third-derivative rate is R⁻⁵ᐟ². The suggested R⁻¹ᐟ² or R⁻¹ Hessian rates are not generally sufficient. A universal asymptotic at every boundary stratum is **NOT ESTABLISHED**.

**PROVED correction.** R=0 for a selected corner does not imply the full matrix is equivalent to F₆. The family

\[
K(t)=\begin{pmatrix}F_3&F_3\\F_3D(t)&-F_3D(t)\end{pmatrix},
\qquad D(t)=\operatorname{diag}(1,e^{it},1),
\]

has leading corner F₃, hence R=0 at that corner for every t. Generic members are not equivalent to F₆: one of their 2×2 cross ratios is e^{it}, while F₆ cross ratios are sixth roots of unity. Thus an F₆-neighbourhood exclusion alone does not bound the selected corner's R away from zero. A quantitative corner-selection statement would be an additional input.

**PROVED correction.** The required analytic object is a labelled lift on the contractible strict ball. A globally labelled analytic representative or a single real phase lift on all Ω is not supplied by class uniqueness alone. Also, horizontal winding belongs to 2πh(Z³⁶), not generally 2πZ³⁶. The continuous centre-based lift used here eliminates winding from the Taylor estimate.

## 10. Remaining full-radius failures and certified fallbacks

**NOT ESTABLISHED at original radius; CERTIFIED at the smaller radius shown.**

| Row | Original r | Certified smaller r |
|---:|---:|---:|
| 1205 | 0.1 | 0.0775 |
| 1449 | 0.1 | 0.09 |
| 1564 | 0.1 | 0.0625 |
| 1766 | 0.1 | 0.085 |
| 1842 | 0.1 | 0.0625 |
| 1888 | 0.08 | 0.0600 |
| 1900 | 0.08 | 0.05800 |
| 1901 | 0.08 | 0.05800 |
| 1902 | 0.08 | 0.0600 |

These smaller balls have certified C1 records and both signs. They do not cover the original balls, and their Hessian bounds near the chosen contraction limits are loose. No factor-three Hessian claim is made for these fallbacks. The existing subdivision machinery remains a valid option for the uncovered parts of the original nine balls.

## 11. Replay and delivered evidence

**CERTIFIED run.** The final full-radius replay used python-flint 0.9.0 at 224 bits, NumPy 2.3.5, SciPy 1.17.0 and Python 3.12. It processed all 300 rows in approximately **92 seconds** of reported per-row wall time on this runtime, including the nine inconclusive outcomes. This is a benchmark for the supplied 300 rows; no runtime or coverage claim is made for all 1,903 background records or a Lean kernel replay.

The central deliverables are:

- `THEOREM.md`: the complete centre-based sufficient condition and proof.
- `ANALYTIC_FORMULAS.md`: detailed implicit derivatives, global constants, signature identity and degeneration analysis.
- `fullphase/FINAL_CERTIFICATES.jsonl`: all 300 full-radius results and the full rounded records for the 291 successes.
- `numerics/CERTIFIED_COMPARISON.csv`: per-ball upper bounds and certified sharpness ratios.
- `numerics/lower_witnesses.jsonl`: certified Hessian witnesses for all 300 rows.
- `numerics/remainder_lower_witnesses.jsonl`: branch-identified remainder witnesses for all 291 successes.
- `bounds/reduced_radius_certificates.jsonl`: the nine separate fallback records.
- `replay.py`: a complete replay driver; `--quick` verifies the exact signature identity and one whole-ball certificate.

**NOT ESTABLISHED.** This return does not certify the original full radii of the remaining nine balls, the exact unavailable original frame/anchor records, an arbitrary region defined solely by a threshold on R, the full 1,903-ball collection, boundary coverage, or a no-four-MUB theorem. It provides a proved, reusable per-ball formula and a substantial certified benchmark satisfying the requested sharpness without dense seed subdivision.

## Sources and dependencies

The definitions and requested target are from the supplied `Z_completion_hessian_brief.zip`, specifically `BRIEF.md`, the side equations in `context/seedball.py`, `PROOF.md` §2, and the coordinate/gauge conventions in `SEED_ATLAS_SPEC.md` §§1–2 and 11. The matched-flatness/local-germ theorem is an explicit mathematical dependency, not re-proved by this return.

The scalar contraction argument is an elementary application of Banach's theorem, in the standard a posteriori validation pattern described in the primary [RadiiPolynomial.jl documentation](https://olivierhnt.github.io/RadiiPolynomial.jl/stable/radii_polynomial_approach/). All problem-specific constants, tensor identities, upper bounds and witness checks used here are given in the delivered proofs and code.
