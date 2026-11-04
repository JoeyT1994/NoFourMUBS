# MUB order-three symmetry: complete transverse rigidity of the constructed locus

**Research checkpoint — 10 October 2026.**

## 0. Status

The universal existence of the order-three symmetry is **not proved**, and no exact counterexample has been found.

This continuation completes the transverse rank analysis over the **entire** complementary two-circulant MUB family, including its parameter-boundary strata. The result is a computer-assisted exact theorem, not a numerical rank observation:

* Each individual cyclic Hadamard contributes exactly one complex symmetry-breaking phase mode, after column gauges.
* The coherent third-flatness derivative on the two modes is a 12-by-2 complex matrix `M`.
* On the complementary-circulant family, an exact formula for `det(M* M)` is strictly positive except at the zero-correlation points.
* All 36 normalized zero-correlation points are exactly equivalent, by shared row monomials and independent column monomials (and sometimes exchanging the two non-anchor bases), to the previously classified two-anchor crossing. No complex conjugation is needed in these certificates.
* There is a uniform explicit lower bound on transverse energy in terms of the correlation parameter.
* The full dephased Jacobian rank is 53 at every nonzero-correlation point, 51 at the zero-correlation crossing points, and 55 at the isolated product triple.
* In particular, no symmetry-breaking branch can leave any point of the constructed family.

An elementary recognition argument below also verifies that every triple which **already has** the requested symmetry is a complementary-circulant triple or the isolated product type. Combining recognition, the transverse theorem, the audited crossing theorem, and product isolation shows that the symmetry locus is both relatively open and closed in the compact physical MUB solution space. Any counterexample must therefore belong to a disconnected component, at positive distance from the entire symmetry locus.

That last possibility is not excluded here. Neither connectedness nor a bound on the number of physical components is assumed.

The local classification at the crossing and exact product isolation are recorded in `prior_local/CHECKPOINT.md`; their verifiers have been rerun successfully. The new local-rigidity theorem and the recognition proof do not invoke the Hadamard atlas, Tao exclusion, cubic singularity classification, or a universal MUB classification.

---

## 1. Cyclic coordinates, used only after an actual symmetry exists

Suppose a triple has the required order-three symmetry at the first anchor. Use one shared ambient unitary to set that anchor to the identity and order its eigenspaces as three coordinate pairs. Normalize the two three-cycle orbits of each other basis by column phases. With indices

\[
(t,a),(s,b)\in\mathbb Z_3\times\mathbb Z_2,
\]

the unit-entry basis matrices can be written

\[
H_{ta,sb}=\omega^{ts}(-1)^{ab}x_t^b,
\]
\[
K_{ta,sb}=\omega^{ts}(-1)^{ab}y_t^b
\begin{cases}u_t,&a=0,\\v_t,&a=1,\end{cases}
\tag{1}
\]

where all twelve parameters are unit phases. The common row phases making the first matrix take this form are also applied to the second matrix. There is no independent ambient left normalization.

Both matrices are automatically Hadamard. The remaining physical condition is

\[
|(H^*K)_{sb,rc}|^2=6.
\tag{2}
\]

The actual diagonal symmetry is

\[
Q=\operatorname{diag}(1,1,\omega,\omega,\omega^2,\omega^2).
\]

It induces the same cyclic shift in the `s` index of both non-anchor bases.

These coordinates are **not** imposed on an arbitrary MUB triple. They describe the locus whose possible symmetry-breaking deformations are being tested.

---

## 2. Exact single-basis phase modes, with no exceptional parameter values

Let a real phase velocity be decomposed into cyclic Fourier modes. Its positive nontrivial mode is

\[
X_{ta,sb}=\xi_{ta,b}\omega^s+
\overline{\xi_{ta,b}}\omega^{-s}.
\]

Write

\[
\xi_{ta,b}=p_{t,b}+(-1)^a q_{t,b}.
\]

Linearizing row orthogonality of `H`, and selecting rows in consecutive coordinate pairs, gives, for `r_t=x_t/x_{t+1}`,

\[
p_{t,0}=p_{t+1,0},\qquad p_{t,1}=p_{t+1,1},
\]
\[
q_{t,0}=r_tq_{t+1,1},\qquad
q_{t+1,0}=r_tq_{t,1}.
\tag{3}
\]

The two constant `p` parameters are precisely column-phase gauges. All non-gauge solutions of (3) are

\[
q_{t,0}=z f_t,\qquad q_{t,1}=z\overline{f_t},
\qquad f_t=\frac{x_{t-1}}{x_{t+1}}.
\]

Thus

\[
\boxed{
X_{ta,sb}=(-1)^a\left(
z f_t^{(-1)^b}\omega^s+
\overline z f_t^{-(-1)^b}\omega^{-s}
\right).
}
\tag{4}
\]

There is exactly one complex nontrivial parameter `z`, for every choice of the unit phases `x_t`. All divisions are by unit phases; there is no exceptional determinant or discriminant being inverted.

Row factors `u_t,v_t` cancel from the same row-orthogonality calculation for `K`. Its non-gauge moving mode is therefore given by (4), replacing `z,f,x,b` by `w,g,y,c`, with

\[
g_t=\frac{y_{t-1}}{y_{t+1}}.
\]

The full possible symmetry-breaking tangent sector, after each basis's own unitarity and the continuous gauges, has complex dimension two, hence real dimension four.

---

## 3. The coherent 12-by-2 mixed derivative

For `b,c in {0,1}` and `d in Z_3`, put

\[
\eta_t^{bc}=x_t^{-b}y_t^c\bigl(u_t+(-1)^{b+c}v_t\bigr),
\]
\[
\zeta_t^{bc}=x_t^{-b}y_t^c\bigl(u_t-(-1)^{b+c}v_t\bigr),
\]
\[
p_d^{bc}=\sum_t\eta_t^{bc}\omega^{td}.
\]

Then the actual coherent product is

\[
(H^*K)_{sb,rc}=p_{r-s}^{bc}.
\]

Define

\[
F_d^{bc}=\sum_t\zeta_t^{bc} f_t^{(-1)^b}\omega^{td},
\quad
\widetilde F_d^{bc}=\sum_t\zeta_t^{bc} f_t^{-(-1)^b}\omega^{td},
\]
\[
G_d^{bc}=\sum_t\zeta_t^{bc} g_t^{(-1)^c}\omega^{td},
\quad
\widetilde G_d^{bc}=\sum_t\zeta_t^{bc} g_t^{-(-1)^c}\omega^{td}.
\]

The row of `M` indexed by `(b,c,d)` is

\[
\boxed{
M_{bc,d}=\left(
p_d^{bc}\overline{\widetilde F_d^{bc}}
-\overline{p_d^{bc}}F_d^{bc},
\quad
\omega^d\bigl(\overline{p_d^{bc}}G_d^{bc}
-p_d^{bc}\overline{\widetilde G_d^{bc}}\bigr)
\right).
}
\tag{5}
\]

Indeed, substituting (4) into `D(H* K)` and taking the coefficient of `omega^s` in the real derivative of (2) gives

\[
i\,M_{bc,d}\binom zw.
\]

All three real derivatives along the simultaneous cyclic orbit vanish exactly when this complex coefficient vanishes. Consequently

\[
\boxed{\text{the full moving tangent space is }\ker_{\mathbb C}M.}
\tag{6}
\]

This calculation uses the actual multiplication `H* K`. The relative phases `x,y,u,v` are retained throughout.

`phase_mode_verify.py` also checks the bridge against the full 96-by-55 real Jacobian at the exact crossing point. It checks all four real modes, shared dephasing, vanishing of the 60 individual-orthogonality derivatives, and agreement of all 36 coherent mixed derivatives.

---

## 4. Complementary circulants and a globally nonsingular lift

For unit-phase triples `a,b`, use the first-column circulant convention
`C(a)_{rs}=a_{r-s}` and `C(b)_{rs}=b_{r-s}`, with indices modulo three, and set

\[
S(a,b)=\frac1{\sqrt6}
\begin{pmatrix}C(a)&C(b)\\C(b)^*&-C(a)^*\end{pmatrix}.
\]

Define

\[
\gamma(a)=a_1\overline{a_0}+a_2\overline{a_1}
+a_0\overline{a_2}.
\]

The exact unitarity condition is

\[
\gamma(a)+\gamma(b)=0.
\tag{7}
\]

Write

\[
\gamma=\gamma(a),\qquad q=|\gamma|^2,
\qquad p=\operatorname{Re}(\gamma^3),
\qquad e=q^3-p^2=(\operatorname{Im}\gamma^3)^2.
\tag{8}
\]

Normalize `a_0=b_0=1`; those two scalar phases only change basis-column phases of the lifted triple.

Let

\[
\alpha_t=\frac1{\sqrt6}\sum_s a_s\omega^{st},
\qquad
\beta_t=\frac1{\sqrt6}\sum_s b_s\omega^{st}.
\]

In Fourier block coordinates, `S` has the unitary two-by-two blocks

\[
C_t=\begin{pmatrix}\alpha_t&\beta_t\\
\overline{\beta_t}&-\overline{\alpha_t}\end{pmatrix}.
\]

Their squared amplitudes are

\[
|\alpha_t|^2=\frac{3+\gamma\omega^t+\overline\gamma\omega^{-t}}6,
\quad
|\beta_t|^2=1-|\alpha_t|^2.
\tag{9}
\]

### Exact physical parameter bounds

The three unit ratios of `a`, whose product is one, are roots of

\[
z^3-\gamma z^2+\overline\gamma z-1.
\]

The squared Vandermonde of three unit roots with product one is nonpositive real. Applying this fact also to `b` gives

\[
\Delta_+=27-18q-q^2+8p\ge0,
\qquad
\Delta_-=27-18q-q^2-8p\ge0.
\tag{10}
\]

Therefore

\[
\boxed{0\le q\le6\sqrt3-9<\frac32.}
\tag{11}
\]

In particular all `alpha_t,beta_t` are nonzero, by (9). This covers the boundaries where either or both discriminants vanish.

Put `r_t=|alpha_t| |beta_t|`. A canonical flat factorization gives (1) with

\[
x_t=i\frac{\alpha_t\beta_t}{r_t},
\qquad y_t=-i\frac{\overline{\alpha_t}\beta_t}{r_t},
\]
\[
u_t=\alpha_t+x_t\overline{\beta_t},
\qquad v_t=\alpha_t-x_t\overline{\beta_t}.
\tag{12}
\]

All four parameter lists consist of unit phases. These formulas divide only by the nonzero amplitudes just bounded. Changing a local sign in (12) is exactly a common swap of the two anchor coordinates in that pair, so it does not create a further stratum.

---

## 5. The exact transverse Gram identity

Set

\[
\mathcal G=\frac1{432}M^*M,
\qquad
D=81(3-q)^2-4p^2.
\tag{13}
\]

Let

\[
T=(5q^2-26q+45)(9-q)^2+32e,
\]
\[
C=2(9-7q)(9-q)^2-16e.
\tag{14}
\]

For the ordered ratio triples

\[
d_0=a_1,\quad d_1=a_2/a_1,\quad d_2=1/a_2,
\]
\[
e_0=b_1,\quad e_1=b_2/b_1,\quad e_2=1/b_2,
\]

write

\[
V_a=(d_0-d_1)(d_0-d_2)(d_1-d_2),
\qquad
V_b=(e_0-e_1)(e_0-e_2)(e_1-e_2).
\]

The exact identities are

\[
\boxed{
\operatorname{tr}\mathcal G=\frac{T}{D},\quad
\mathcal G_{12}=\mathcal G_{21}=\frac{C}{D},\quad
\mathcal G_{11}-\mathcal G_{22}
=\frac{(9-q)(9-5q)V_aV_b}{D}.
}
\tag{15}
\]

Here `V_a V_b` is real and `(V_a V_b)^2=Delta_+ Delta_-`. Hence

\[
\boxed{
\det\mathcal G=
\frac{4q(9-q)^2(9-5q)\bigl((9-q)^3+16e\bigr)}{D^2}.
}
\tag{16}
\]

This formula is the central new result.

### The identity is an exact polynomial computation

The formula was discovered with numerical exploration, but the proof uses exact polynomial reductions. No numerical interpolation is used as a certificate.

The verifier works over `Q(omega)[g,h]`, with `g=gamma,h=bar(gamma)`, in the free rank-36 algebra with monic relations

\[
d_0^3-gd_0^2+hd_0-1=0,
\]
\[
d_1^2+(d_0-g)d_1+d_0^2-gd_0+h=0,
\]
\[
e_0^3+ge_0^2-he_0-1=0,
\]
\[
e_1^2+(e_0+g)e_1+e_0^2+ge_0-h=0.
\tag{17}
\]

For the variable order `e1 > e0 > d1 > d0 > g > h`, these four polynomials form a Groebner basis: their leading monomials are `e1^2,e0^3,d1^2,d0^3`, which are pairwise coprime. In particular there is no division by `Delta_+`, `Delta_-`, or any other parameter polynomial. Every repeated-root specialization is included.

For an explicit normalization check, put

\[
A_t=\sqrt6\alpha_t,\quad B_t=\sqrt6\beta_t,
\qquad P=\prod_t|\alpha_t\beta_t|.
\]

Then

\[
P^2=\frac{D}{46656}.
\]

Define

\[
F_t=A_{t-1}B_{t-1}\overline{A_{t+1}B_{t+1}},
\]
\[
G_t=\overline{A_{t-1}}B_{t-1}A_{t+1}\overline{B_{t+1}}.
\]

For a row `(b,c,d)`, let `W_t=|B_t|^2` when `b=c` and `W_t=-|A_t|^2` otherwise. The real quantities `L_t` are

\[
\begin{array}{c|l}
(b,c)&L_t\\\hline
(0,0)&a_{-d}\overline{A_t}\omega^{-td}+\overline{a_{-d}}A_t\omega^{td}\\
(0,1)&b_{-d}\overline{B_t}\omega^{-td}+\overline{b_{-d}}B_t\omega^{td}\\
(1,0)&\overline{b_d}B_t\omega^{-td}+b_d\overline{B_t}\omega^{td}\\
(1,1)&\overline{a_d}A_t\omega^{-td}+a_d\overline{A_t}\omega^{td}.
\end{array}
\]

If `F_t^[b]` means `F_t` for `b=0` and its conjugate for `b=1`, and similarly for `G_t^[c]`, put

\[
R_{bc,d}=
\left(-\sum_tW_tF_t^{[b]}L_t,
\quad\omega^d\sum_tW_tG_t^{[c]}L_t\right).
\]

Direct substitution in (5) gives

\[
M=\frac{i}{108P}R,
\qquad
\mathcal G=\frac{R^*R}{108D}.
\tag{18}
\]

The verifier reduces the trace, off-diagonal, oriented diagonal difference, squared difference, and determinant identities of `R* R` to zero modulo (17). This exposes all arithmetic and normalization factors. The script uses exact coefficients in `Q(omega)`.

### Positivity and a uniform inequality

Equation (11) implies `9-5q>0`, `9-q>0`. Also

\[
D=\prod_{t=0}^2\left(9-4\operatorname{Re}(\gamma\omega^t)^2\right)>0.
\]

Every factor in (16), except the explicit `q`, is strictly positive on the full feasible parameter space. Thus

\[
\boxed{\operatorname{rank}_{\mathbb C}M=2\quad\text{whenever }\gamma\ne0.}
\tag{19}
\]

At `gamma=0`, equations (15) give trace 5, off-diagonal 2, and squared diagonal difference 9. The normalized Gram matrix is either

\[
\begin{pmatrix}1&2\\2&4\end{pmatrix}
\quad\text{or}\quad
\begin{pmatrix}4&2\\2&1\end{pmatrix},
\]

so its rank is exactly one.

There is also a useful explicit coercivity estimate. Parseval in the `d` index, unit phases in (1), and `|p_d^{bc}|^2=6` give

\[
\operatorname{tr}\mathcal G\le8.
\]

Since `q<3/2`, `D<=729`, and `e>=0`, (16) implies

\[
\det\mathcal G\ge\frac{3125}{11664}q.
\]

Consequently

\[
\boxed{
\left\|M\binom zw\right\|_2^2
\ge\frac{3125}{216}|\gamma|^2(|z|^2+|w|^2).
}
\tag{20}
\]

No generic-parameter qualification is hidden in this inequality.

---

## 6. Full Jacobian ranks and local symmetry rigidity

### 6.1 Regularity of the two-circulant parameter surface

With `a_0=b_0=1`, the set (7) is a smooth compact real two-dimensional submanifold of the four-torus.

To prove regularity, regard the three ratios `d_0,d_1,d_2` as unit phases with product one. The two derivatives of their sum are multiples of `i(d_0-d_1)` and `i(d_1-d_2)`. They are real-linearly dependent exactly when two ratios coincide. Three distinct points on the unit circle cannot be collinear.

A rank-zero derivative would require all three ratios to coincide, giving `|gamma|=3`, impossible by (11). Thus an individual correlation map is critical only with rank one, on `Delta_+=0` or `Delta_-=0`.

If both are critical, their common target has `p=0` and `q=6 sqrt(3)-9`. The gradients of the two discriminants are independent: for `gamma=x+iy`,

\[
\det(\nabla\Delta_+,\nabla\Delta_-)
=-192\operatorname{Im}(\gamma^3)(q+9)\ne0.
\tag{21}
\]

Their tangent lines therefore differ, so the combined derivative of (7) still has rank two. This handles simultaneous discriminant-zero points.

The parameter surface immerses in the MUB phase quotient. The two row/column-phase invariant cross ratios from each of the two top circulant blocks have differential matrix

\[
\begin{pmatrix}-1&-1\\1&-2\end{pmatrix}
\]

in that block's two phase variables; its determinant is 3. Taking both blocks detects all four initial phase variables, and therefore also the two-dimensional constrained tangent space.

### 6.2 The fixed cyclic tangent space has dimension two

A general nearby cyclic transition has two-by-two Fourier blocks

\[
\begin{pmatrix}\alpha_t&\beta_t\\
z_t\overline{\beta_t}&-z_t\overline{\alpha_t}\end{pmatrix},
\qquad |z_t|=1.
\tag{22}
\]

Let `w_t=z_t bar(z_{t+1})`. Flatness of the two bottom circulants is equivalent to

\[
\sum_t w_t\overline{\alpha_t}\alpha_{t+1}=0,
\qquad
\sum_t w_t\overline{\beta_t}\beta_{t+1}=0.
\tag{23}
\]

At the canonical lift, `w_t=1`. If `gamma!=0`, the two coefficient rows in (23) are complex-linearly independent. Otherwise their absolute-value ratios would imply

\[
\frac{|\alpha_t|^2}{|\beta_t|^2}
\frac{|\alpha_{t+1}|^2}{|\beta_{t+1}|^2}
\quad\text{is constant in }t,
\]

so positivity forces all three amplitude ratios equal. Their total norms then give `|alpha_t|^2=|beta_t|^2=1/2`, hence `gamma=0`, a contradiction.

Thus (23) makes a nearby `w` constant, and its product-one constraint makes it identically one. At `gamma=0`, even when the two coefficient rows are dependent, each nonzero row is a scalar multiple of a nonconstant cubic character. The real derivative of its equation on the product-one phase torus has rank two. Hence the same local conclusion holds infinitesimally there.

The remaining scalar `z_t` is a row-orbit phase gauge. Together with the two scalar phases of `a,b`, this removes exactly the remaining continuous transition gauges. The fixed cyclic tangent space therefore has real dimension two at every canonical point.

Combining this fact with (6), (19), and the rank-one result at zero gives, in the full 55-variable dephased phase chart,

\[
\boxed{
\operatorname{rank}DF=
\begin{cases}
53,&\gamma\ne0,\\
51,&\gamma=0.
\end{cases}}
\tag{24}
\]

### 6.3 Why the absence of moving tangent vectors is nonlinear rigidity

Use the following finite-group lemma. If a real-analytic zero set is invariant under a finite linear group fixing the base point, and the group acts trivially on the kernel of its full derivative, then every sufficiently nearby zero is fixed by that group.

Choose an invariant complement to the kernel. Independent equations and the implicit function theorem give at most one complementary coordinate for each small kernel coordinate. Group translation preserves the kernel coordinate and sends zeros to zeros, so uniqueness forces the complementary coordinate to be fixed. Integrability of every tangent vector is not assumed.

At a cyclic MUB triple, the simultaneous column three-cycles, followed by restoration of the shared phase gauge, give exactly such a finite linear action on the local phase chart. Equations (4)-(6) describe its nontrivial representation sector. Hence (19) proves:

**Every sufficiently nearby MUB triple at a nonzero-correlation canonical point retains an actual order-three ray symmetry at the same anchor.**

A fixed phase-array action really gives a diagonal ambient ray unitary. Its cube is diagonal in two unbiased bases and therefore scalar; normalize the cube to the identity. Its monomial representation has no fixed ray, so its trace is zero and each cubic root has multiplicity two. Near the base point, the finite balanced assignment is unchanged.

---

## 7. All zero-correlation exceptions are the audited crossing

At `gamma=0`, each normalized unit triple is

\[
a_s=\omega^{\epsilon s^2+\ell s},
\qquad b_s=\omega^{\eta s^2+ms},
\]

with `epsilon,eta in {1,-1}`, `ell,m in Z_3`. There are exactly 36 pairs.

The elementary Gauss sums are

\[
\alpha_t=\frac{i\epsilon}{\sqrt2}
\omega^{-\epsilon(t+\ell)^2},
\qquad
\beta_t=\frac{i\eta}{\sqrt2}
\omega^{-\eta(t+m)^2}.
\tag{25}
\]

After dephasing, every entry of the lifted `H,K` is a twelfth root of unity. `endpoint_certificate.py` produces and checks explicit shared row permutations/phases and independent column permutations/phases carrying all 36 to the previous crossing

\[
x=(1,\omega^2,-1),\quad y=(1,1,-1),
\quad u=(1,\omega,-i),\quad v=(-i,-i\omega,1).
\]

Eighteen cases exchange `H,K`; no case uses conjugation. The certificate includes every permutation and phase exponent. Local sign choices in the lift are already common coordinate-pair swaps.

The previous exact crossing proof establishes that the **entire physical solution germ** there consists of two transverse smooth analytic surfaces, with symmetries at two different anchors. Its projected Hessian ideal is generated by

\[
ac,ad,bc,bd.
\]

The previous proof supplies actual solution surfaces along both planes and then uses analytic factorization to exclude all additional higher-order branches. The verifier chain for that theorem was rerun in this continuation.

Therefore all zero-correlation exceptions are fully covered, not merely their tangent cones.

---

## 8. Elementary recognition of the whole existing-symmetry locus

This is included to make the final global-separation corollary independent of a black-box construction-recognition input. It starts with an **actual** common order-three symmetry, so it is not a proof that arbitrary MUB triples have one.

Orbit normalization gives a general two-circulant transition and hence the Fourier blocks (22). Its top blocks are unit-entry circulants; unitarity gives (7), and the positive-amplitude bounds apply. Put

\[
A_t=\overline{\alpha_t}\alpha_{t+1},
\qquad B_t=\overline{\beta_t}\beta_{t+1}.
\]

Both rows sum to zero, and the exact bottom-flatness equations are (23).

If `A,B` are independent, their complex kernel is precisely the span of `(1,1,1)`. Hence `w_t` is constant. Its product is one, so the constant is a cubic root. A cyclic shift of one three-row orbit, plus its scalar phase, makes `z_t=1`. This gives the canonical complementary-circulant form.

If `A,B` are dependent, the positive-amplitude argument in Section 6 forces `gamma=0`. Write the Gauss sums as (25). Then `A_t` and `B_t` are scalar multiples of the cubic characters `omega^(epsilon t)` and `omega^(eta t)`. Dependence means `epsilon=eta`.

The single zero-sum equation in (23), with all three term moduli equal, forces an equilateral triple. Since every permutation of three cubic roots is affine, the complete alternatives are

\[
w_t=\omega^j
\quad\text{or}\quad
w_t=\omega^j\omega^{\epsilon t}.
\tag{26}
\]

The constant case again gives the canonical form. In the second case, write `z_t=omega^(k_t)` up to a scalar; integrating the difference equation gives

\[
k_t=k_0-jt-\epsilon t(t-1)/2\pmod3.
\]

Its quadratic coefficient is `epsilon`. The general lift of (22) changes the canonical `x_t` to `z_t^{-1}x_t` but leaves `y_t,u_t,v_t` unchanged. When `epsilon=eta`, the canonical `x_t` has the same quadratic coefficient `epsilon`, so that coefficient cancels. Both `x_t,y_t` are now scalar cubic characters, and `v_t=-iu_t` with `u_t` a cubic quadratic character.

Independent cyclic shifts of the column orbits and scalar phases remove the linear characters. The triple becomes a tensor-product qubit-qutrit MUB triple. The two possible quadratic signs are related by simultaneous conjugation and harmless column relabeling; product isolation transfers between them. The preceding checkpoint verifies full dephased Jacobian rank 55 for the standard representative.

Thus an actual common symmetry yields exactly the canonical family or the isolated product type, with no division by a possibly vanishing coefficient and no omitted dependent case.

---

## 9. Global consequence and the remaining obstruction

Let `T` be the physical dephased MUB-triple solution set, a closed subset of the 55-dimensional phase torus, and let `S` be the subset with the requested symmetry at at least one anchor.

At each anchor there are 15 projectively distinct balanced assignments, indexed by matchings. Their monomiality conditions are closed; a finite union over anchors and matchings shows that `S` is closed in `T`.

Sections 6-8, the complete crossing germ, and product isolation show that `S` is also **open in `T`**. Every point with the symmetry has a neighborhood consisting entirely of triples with the symmetry, although the successful anchor can change at the crossing.

Therefore

\[
\boxed{\mathcal S\text{ is a union of connected components of }\mathcal T.}
\tag{27}
\]

If the complement is nonempty, both sets are disjoint compact sets. In any fixed continuous metric on the dephased phase torus they have a strictly positive distance. No numerical value for this distance is asserted.

This rules out every route to a counterexample by an arbitrarily small perturbation, bifurcation, or continuous departure from the constructed locus. It does **not** rule out a disconnected unknown component. A clopen nonempty subset of a compact real algebraic set need not be the entire set.

### First unproved implication

The missing step can now be stated as

\[
\boxed{
\text{Every connected component of the physical MUB solution set}
\text{ intersects the order-three-symmetric locus.}
}
\tag{28}
\]

This statement is not proved or assumed. Under the previously declared quadratic-closure and extension inputs, the original sufficient boundary statement remains

\[
\exists a,m:\det(I-G_{a,m})=0.
\]

The present transverse calculation does not imply this for an arbitrary triple outside `S`.

### Concrete continuation

The exact rank-drop locus on the entire constructed family is now finished: it is `gamma=0`, and all its germs are already classified. Repeating generic-rank tests or searching for a branch off that family is unnecessary.

The next calculation must address disconnected components, for example by certifying that the physical coherent equations have no real component on the complement of all 45 matching-boundary sets, or by obtaining a genuine component-incidence theorem for the coherent Hadamard atlas. There is no valid connectedness argument in this checkpoint. The positive transverse determinant is a theorem on the symmetric locus, not a universal vanishing certificate.

---

## 10. Reproduction and audit

Run

```text
python verify_all.py
```

in this directory. SymPy is the only non-standard dependency. The new exact computations are:

1. `phase_mode_verify.py`: verifies the reduced mode matrix against the full coherent derivative at the audited crossing;
2. `symbolic_certificate.py`: verifies the parameter-dependent Gram identities and determinant in the rank-36 monic Vieta algebra;
3. `endpoint_certificate.py`: checks all 36 exact endpoint equivalences using integer exponents modulo 12;
4. `prior_local/verify_all.py`: reruns the previous full crossing, product-isolation, and radical local-rigidity certificates.

The `*_verified.json` files record the outcomes. All assertions in the symbolic certificate are exact polynomial zero tests; its use of the free rank-36 algebra includes the repeated-root/discriminant-zero strata.

Gauge audit: only one common ambient normalization is used. Relative phases survive in (5). Parameter normalizations of `a_0,b_0` are basis-column phases; local lift signs are common row-pair swaps. The endpoint equivalence certificates use the same row monomial for both matrices.

Exceptional-case audit: (11) bounds every denominator in the lift away from zero. The Vieta reduction divides by no parameter polynomial. Both discriminant-zero boundaries and their intersections are covered. The only moving-rank drop is `gamma=0`; every such point is in the exact endpoint table. The isolated product case is retained separately.

Dependency audit: global symmetry existence, common antiunitaries, the Hadamard atlas, and the cubic-rank theorem are not assumed. The full local germ at the crossing and rank-55 product isolation are the explicit audited prior results used here. Equation (28) is the first unproved global implication.

### Construction reference

The complementary two-circulant construction itself is established prior work: F. Szöllősi, *A two-parameter family of complex Hadamard matrices of order 6 induced by hypocycloids*, arXiv:0811.3930 (2008; revised 2009). The contribution of this checkpoint is the complete moving-mode calculation, exact determinant, exceptional-point transfer, and the local-to-component separation argument, not the original construction. No claim of a literature-wide novelty audit is made.
