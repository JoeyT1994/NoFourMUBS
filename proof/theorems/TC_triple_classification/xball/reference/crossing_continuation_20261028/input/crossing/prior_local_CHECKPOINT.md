# MUB order-three symmetry: local rigidity and a two-anchor crossing

**Research checkpoint — 10 October 2026.**

## 0. Status and scope

The universal existence of the balanced order-three ray symmetry is **not proved** here. No exact counterexample to that universal assertion is obtained.

The principal new result is a complete, computer-assisted **local classification** at an explicit singular MUB triple. In a labeled, dephased phase chart, its solution germ consists of exactly two smooth real-analytic surfaces of dimension two, meeting transversely. One surface has the order-three symmetry anchored at basis 0; the other has it anchored at basis 2. There is no additional symmetry-breaking branch through this point, even though its full linearized MUB system has four independent tangent vectors.

Additional proved results:

* a finite-symmetry local-rigidity criterion, and an exact modular certificate applying it at the radical triple from the previous checkpoint;
* exact local isolation of the standard qubit–qutrit product triple;
* an exact physical example where six matching compressions at an unsuccessful anchor have an eigenvalue one but rank four, rather than rank two;
* an aggregate balanced-Jordan-product identity that is the same at all three anchors, but does not force a zero.

The local theorems do **not** use the global Hadamard classification, Tao exclusion, Fourier-completion theorem, or the conjectured classification of MUB triples. The earlier downstream inputs are needed only when interpreting the unresolved global boundary-incidence statement as sufficient for the entire classification.

`PREVIOUS_QUADRATIC_CLOSURE.md` records the preceding results and their dependencies. Nothing here assumes that an arbitrary triple has a cyclic normal form.

---

## 1. Exact crossing triple

Use indices

\[
(t,\alpha),(s,\beta)\in\mathbb Z_3\times\mathbb Z_2,
\qquad \text{linear index }2t+\alpha,
\]

and write \(\omega=e^{2\pi i/3}\). Define unit phases

\[
x=(1,\omega^2,-1),\qquad y=(1,1,-1),
\]
\[
u=(1,\omega,-i),\qquad v=(-i,-i\omega,1).
\]

The unit-entry matrices are

\[
H_{t\alpha,s\beta}
=\omega^{ts}(-1)^{\alpha\beta}x_t^\beta,
\]
\[
K_{t\alpha,s\beta}
=\omega^{ts}(-1)^{\alpha\beta}y_t^\beta
\begin{cases}u_t,&\alpha=0,\\v_t,&\alpha=1.\end{cases}
\]

Let \(U=H/\sqrt6,V=K/\sqrt6\). Then

\[
H^*H=K^*K=6I,\qquad |(H^*K)_{jk}|^2=6.
\]

These equalities are checked entry by entry over \(\mathbb Q(\sqrt3,i)\) by `crossing_verify.py`. The first two also follow immediately by writing each basis as a block diagonal family of flat two-dimensional unitaries times \(F_3\otimes I_2\).

The chosen matrices already satisfy the phase gauge

\[
H_{0j}=H_{j0}=K_{0j}=1.
\]

There are two actual symmetry anchors. Set

\[
D=\operatorname{diag}(1,1,\omega,\omega,\omega^2,\omega^2).
\]

Then \(Q_0=D\) is diagonal at the identity anchor and monomial in \(U,V\). Also

\[
Q_2=VDV^*=\frac16KDK^*
\]

is diagonal at anchor \(V\), and monomial at the identity and \(U\) anchors. Both have cube identity and balanced spectrum. In the code's row-argument permutation convention, the monomial permutations for \(Q_2\) are

\[
p_r=(2,3,5,4,1,0),\quad
p_U=(2,5,4,1,0,3),\quad p_V=(0,1,2,3,4,5).
\]

Each of the first two is two three-cycles. The identity permutation in the last expression corresponds to \(V^*Q_2V=D\), not to a scalar operator.

No common antiunitary or normality of an auxiliary matrix is assumed.

---

## 2. The full coherent local equations

At a fixed identity anchor, use unit-entry phase perturbations

\[
H(\theta)=H\circ e^{iX},\qquad
K(\theta)=K\circ e^{iY},
\]

with \(X_{0j}=X_{j0}=Y_{0j}=0\). The remaining 55 real variables are ordered as

\[
X_{rc}\quad(1\le r,c\le5),\qquad
Y_{rc}\quad(1\le r\le5,\ 0\le c\le5).
\]

Let \(F:\mathbb R^{55}\to\mathbb R^{96}\) consist of:

1. real and imaginary parts of the 15 strictly upper-triangular entries of \(H(\theta)^*H(\theta)\);
2. the same 30 real quantities for \(K(\theta)^*K(\theta)\);
3. the 36 quantities \(|(H(\theta)^*K(\theta))_{jk}|^2-6\).

All unit-entry conditions hold identically in these coordinates. Column norms then hold identically too. Consequently \(F=0\) is exactly the full MUB-triple condition in this local gauge. In particular the final 36 equations use the actual coherent product, not an independently normalized transition.

For reference, if

\[
P_{jk}=\sum_r\overline{H_{rj}}K_{rk},
\qquad \delta_{rjk}=Y_{rk}-X_{rj},
\]

then

\[
DP_{jk}[h]=i\sum_r\overline{H_{rj}}K_{rk}\delta_{rjk}[h],
\]
\[
D^2P_{jk}[h,k]
=-\sum_r\overline{H_{rj}}K_{rk}\delta_{rjk}[h]\delta_{rjk}[k],
\]

and the mixed-flatness Hessian is

\[
D^2|P_{jk}|^2[h,k]
=2\operatorname{Re}\left(
\overline{P_{jk}}D^2P_{jk}[h,k]
+\overline{DP_{jk}[h]}DP_{jk}[k]
\right).
\]

The code implements these formulas directly. Orthogonality Hessians are obtained by the same exponential differentiation.

---

## 3. Exact tangent and second-order obstruction calculations

Put \(J=DF(0)\). Exact elimination over \(\mathbb Q(\sqrt3)\) gives

\[
\operatorname{rank}J=51,\qquad \dim\ker J=4.
\]

An exact row-reduced basis \(N_0,\ldots,N_3\) of the kernel is included in `crossing_derivative_certificate.json`. Parameterize a tangent vector as

\[
h=t_0N_0+t_1N_1+t_2N_2+t_3N_3.
\]

The normalization is unambiguous: the four coordinates are the phase velocities at

\[
t_0=X_{11},\qquad t_1=X_{13},\qquad
 t_2=Y_{10},\qquad t_3=Y_{20}.
\]

Let the rows of \(L\) span the left nullspace of \(J\). A tangent vector admitting a second-order correction must satisfy

\[
L D^2F(0)[h,h]=0.
\]

The coefficient space of these quadratic equations has dimension exactly four. Row reduction yields

\[
\begin{aligned}
&t_0(t_0-2t_2),\\
&2t_1(t_0-2t_2),\\
&2(t_0t_3-t_1t_2),\\
&t_1(t_1-2t_3).
\end{aligned}
\]

Set

\[
a=t_0,\qquad b=t_1,\qquad
c=t_0-2t_2,\qquad d=t_1-2t_3.
\]

The span is then exactly

\[
\boxed{ac,\quad ad,\quad bc,\quad bd.}
\]

Thus the second-order admissible cone is the union of two transverse two-planes:

\[
\{a=b=0\}\ \cup\ \{c=d=0\}.
\]

This calculation alone is only a necessary condition. The proof below supplies actual solution surfaces and then excludes all other local solutions, including branches that could otherwise agree with one plane to higher order.

### Identification of the two planes with physical ray symmetries

After applying a row permutation \(p_r\), column permutations \(p_U,p_V\), and restoring the shared phase gauge, the linear action on phase velocities is

\[
X'_{rc}=X_{p_r(r),p_U(c)}-X_{p_r(r),p_U(0)}
-X_{p_r(0),p_U(c)}+X_{p_r(0),p_U(0)},
\]
\[
Y'_{rc}=Y_{p_r(r),p_V(c)}-X_{p_r(r),p_U(0)}
-Y_{p_r(0),p_V(c)}+X_{p_r(0),p_U(0)}.
\]

For the anchor-0 symmetry, \(p_r\) is the identity and

\[
p_U=p_V=(4,5,0,1,2,3).
\]

Its fixed space inside \(\ker J\) is exactly

\[
t_0=t_1=0.
\]

For the anchor-2 permutations in Section 1, the fixed space inside \(\ker J\) is exactly

\[
t_0-2t_2=t_1-2t_3=0.
\]

These assertions are checked exactly in `crossing_symmetry.py`. Only the ray permutations are fixed in this description; phase weights of a monomial symmetry may vary after restoring the phase gauge. The actual operators are constructed on the solution surfaces below.

---

## 4. Constructing the two exact analytic solution surfaces

### 4.1 Complementary circulants

For a unit-phase triple \(a=(a_0,a_1,a_2)\), let \(C(a)\) be the circulant with that first row, each later row being a right cyclic shift. Define

\[
\gamma(a)=a_0\overline{a_2}+a_1\overline{a_0}+a_2\overline{a_1}.
\]

For unit-entry circulants \(A=C(a),B=C(b)\), put

\[
S(a,b)=\frac1{\sqrt6}
\begin{pmatrix}A&B\\B^*&-A^*\end{pmatrix}.
\]

Because circulants commute and are normal, the off-diagonal block equations for unitarity vanish identically. The diagonal equations are equivalent to

\[
\boxed{\gamma(a)+\gamma(b)=0.}
\]

Fix the scalar phases \(a_0,b_0\); multiplying a whole triple by a phase does not change \(\gamma\). Hence four real phase variables remain.

At each of

\[
(1,\omega^2,1),\qquad (1,\omega,1),
\]

we have \(\gamma=0\). If \(b=(1,e^{ip},e^{iq})\), then

\[
\gamma(b)=e^{-iq}+e^{ip}+e^{i(q-p)}.
\]

The real Jacobian determinants of \((\operatorname{Re}\gamma,\operatorname{Im}\gamma)\) with respect to \((p,q)\) at these two points are respectively

\[
-\frac{3\sqrt3}{2},\qquad \frac{3\sqrt3}{2}.
\]

Both are nonzero. The real-analytic implicit function theorem therefore allows the two phases of \(a\) to vary freely and solves uniquely for the two phases of \(b\) near either relevant pair of base points. This gives a two-dimensional analytic family of genuine flat unitaries \(S(a,b)\).

### 4.2 A smooth lift to a MUB triple with the actual order-three symmetry

Regroup a two-circulant matrix in the interleaved index order. Fourier transformation in the cyclic index decomposes it into three two-dimensional unitary matrices \(C_t\). We need a factorization

\[
C_t=A_t^*B_t
\]

where both factors are flat two-dimensional unitaries.

Such a factorization is analytic near the present base points. In fact, whenever \((C_t)_{00}\) and \((C_t)_{10}\) are nonzero, choose

\[
z_t=\pm i\,
\frac{(C_t)_{00}\overline{(C_t)_{10}}}
{|(C_t)_{00}|\,|(C_t)_{10}|},
\]

and set

\[
A_t=\frac1{\sqrt2}\begin{pmatrix}1&z_t\\1&-z_t\end{pmatrix},
\qquad B_t=A_tC_t.
\]

The displayed choice makes the first column of \(B_t\) flat. Unitarity in dimension two makes the other column flat as well. Choose the sign continuously to match the base-point factorization. All four entries of every base-point \(C_t\) have modulus \(1/\sqrt2\), so none of the denominators vanish; nonvanishing persists in a neighborhood.

Now set

\[
U=\operatorname{diag}(A_t)(F_3\otimes I_2),
\qquad
V=\operatorname{diag}(B_t)(F_3\otimes I_2).
\]

They are flat unitaries, and their coherent transition is precisely the given two-circulant flat unitary. The operator

\[
D=\operatorname{diag}(1,1,\omega,\omega,\omega^2,\omega^2)
\]

commutes with the block factors and becomes the same two-three-cycle permutation in both Fourier factors. This explicitly constructs the physical ray symmetry on the original six-dimensional space.

### 4.3 Why both families pass through the crossing triple

For anchor 0, group the rows and columns of \(U^*V\) by the bit index. Multiplying the bottom three rows by \(-i\) puts it into the complementary-circulant form. The first-row ratios in both top blocks are

\[
a=b=(1,\omega^2,1).
\]

For anchor 2, start with the relative bases \(V^*,V^*U\). Normalize each three-cycle orbit by taking a starting column \(c\) and the columns \(c,Dc,D^2c\). The original-column orbit orders are

\[
(0,5,2),(1,4,3)\quad\text{for }V^*,
\]
\[
(0,4,2),(1,3,5)\quad\text{for }V^*U.
\]

After grouping by the bit index and cyclically shifting the bottom three rows by two, the relative transition is in complementary-circulant form with

\[
a=(1,\omega^2,1),\qquad b=(1,\omega,1).
\]

These block identities and phase ratios are checked exactly by `crossing_verify.py`. The row operations on a transition are column operations on one of its endpoint bases; they are not independent ambient left normalizations of the original pair.

Lift the family at anchor 2 as in Section 4.2. If the two lifted relative bases are \(A(z),B(z)\), restore the original identity anchor by the single common ambient unitary \(A(z)^*\). The resulting original-order triple is

\[
(I,A(z)^*B(z),A(z)^*).
\]

It has the actual symmetry anchored at its third basis. Thus both constructions are valid families in the same local MUB-triple space.

### 4.4 Immersion and tangent spaces

The two families are genuinely two-dimensional after the shared phase gauge. To see immersion without a numerical rank test, use phase-invariant cross ratios in the top-left circulant block:

\[
\frac{A_{00}A_{11}}{A_{01}A_{10}}
=\frac{a_0^2}{a_1a_2},\qquad
\frac{A_{00}A_{12}}{A_{02}A_{10}}
=\frac{a_0a_1}{a_2^2}.
\]

For fixed \(a_0\), their phase differentials in the two free phase variables have coefficient matrix

\[
\begin{pmatrix}-1&-1\\1&-2\end{pmatrix},
\]

with determinant 3. These quantities are invariant under all continuous row and column rephasings of the transition. Therefore neither of the two parameters is a gauge direction.

Each surface has its indicated ray permutations throughout a small neighborhood. Its tangent plane is contained in the corresponding fixed plane calculated in Section 3. Both have dimension two, so the tangent planes are exactly those two fixed planes. They are transverse inside the four-dimensional tangent space.

---

## 5. From second-order obstruction to a complete local classification

The following analytic argument is essential. A tangent-cone computation by itself does not establish local completeness.

Select 51 independent equations from \(F\). The implicit function theorem makes their common zero set a smooth four-dimensional analytic manifold \(M\) near the crossing, containing every nearby physical solution. Its tangent space is \(\ker J\).

Let \(f:M\to\mathbb R^{45}\) consist of the remaining equations restricted to \(M\). We have \(f(0)=Df(0)=0\). The quadratic parts of its components are the projected Hessian forms from Section 3, up to an invertible choice of cokernel coordinates.

The two constructed solution surfaces lie in \(M\) and have transverse tangent planes. They can be straightened simultaneously by real-analytic coordinates \((u_1,u_2,v_1,v_2)\) on \(M\), so that the first surface is \(v=0\) and the second is \(u=0\). One direct construction is to parameterize the two surfaces in any chart on \(M\) and add their parameterizations; transversality makes this an analytic coordinate map.

Every component of \(f\) vanishes identically on both coordinate planes. Its convergent power series therefore has at least one \(u\) factor and at least one \(v\) factor in every monomial. Consequently

\[
f(u,v)=A(u,v)
\begin{pmatrix}
u_1v_1\\u_1v_2\\u_2v_1\\u_2v_2
\end{pmatrix},
\]

for a real-analytic \(45\times4\) matrix \(A(u,v)\).

The exact rank-four quadratic-obstruction calculation says that \(A(0,0)\) has column rank four. A four-by-four minor remains invertible in a neighborhood. Thus

\[
f(u,v)=0
\Longrightarrow
u_1v_1=u_1v_2=u_2v_1=u_2v_2=0,
\]

and over the real numbers this is equivalent to

\[
u=0\quad\text{or}\quad v=0.
\]

The converse holds because both surfaces were constructed as exact solutions.

### Local crossing theorem

**In the labeled dephased phase chart, the complete MUB solution germ at the explicit triple of Section 1 is the union of exactly two smooth real-analytic two-dimensional surfaces with transverse tangent planes. Every nearby MUB triple has the prescribed balanced order-three ray symmetry at anchor 0 or anchor 2.**

This conclusion excludes arbitrary nearby symmetry-breaking solutions, not merely analytic curves with nonzero first derivative. Under further discrete equivalences the two labeled branches may be identified; no claim of two globally inequivalent families is made.

---

## 6. Finite-symmetry local rigidity at regular points

### General lemma

Let an analytic system \(F(x)=0\) be invariant under a finite linear group fixing \(x=0\). Suppose its linearized kernel \(K=\ker DF(0)\) is invariant and the group acts trivially on \(K\). Then all sufficiently small zeros of \(F\) are fixed by the group.

**Proof.** Choose a group-invariant complement \(W\) to \(K\) by averaging an inner product. Independent equations and the implicit function theorem show that, for each small \(k\in K\), there is at most one small \(w\in W\) with \(F(k+w)=0\). If \(k+w\) is a zero, every group translate is another zero with the same \(K\)-coordinate. Uniqueness forces every translate to equal \(k+w\). No assumption of integrability of every tangent vector is needed.

For the MUB phase equations, monomial relabelings and common rephasings preserve the equations, including their linearized kernel. In a chart centered at a fixed triple, their action on phases is linear as in Section 3.

### Certificate at the previous radical triple

Recall the exact triple from the preceding checkpoint, in grouped coordinates:

\[
e=(1+3i)/\sqrt{10},\qquad
x=(1,\bar e\omega,\bar e\omega^2),
\]
\[
u=((1+i\sqrt5)/\sqrt6,-(\sqrt2+i)/\sqrt3,-(\sqrt2+i)/\sqrt3),
\qquad v=\bar u,
\]
\[
H=\begin{pmatrix}W&D_xW\\W&-D_xW\end{pmatrix},\qquad
K=\begin{pmatrix}D_uW&D_xD_uW\\D_vW&-D_xD_vW\end{pmatrix}.
\]

Its MUB conditions and anchor properties were established in the previous checkpoint. Divide \(K\) by the global phase \(u_0\) to match the phase gauge above.

Let \(T\) be the order-three phase action obtained by cyclically permuting columns in each of the two three-column orbits, using column-argument permutation

\[
(2,0,1,5,3,4).
\]

Over the rational numbers,

\[
\operatorname{rank}(T-I)=40.
\]

The derivative coefficients lie in a real multiquadratic field. Reduce the coefficient ring modulo 241 using

\[
i\mapsto64,\quad \sqrt2\mapsto22,\quad
\sqrt3\mapsto56,\quad\sqrt5\mapsto103.
\]

Complex conjugation is tracked by a pair of evaluations with opposite images of \(i\); the real radicals have the same image in both. All denominators are invertible modulo 241. Exact elimination gives

\[
\operatorname{rank}_{\mathbb F_{241}}J(T-I)=40.
\]

Therefore \(J\) is injective on the entire 40-dimensional nontrivial symmetry sector in characteristic zero. Because \(\ker J\) is invariant under \(T\), it must lie in the fixed sector. The general lemma applies.

**Every sufficiently nearby physical MUB triple has the order-three symmetry at anchor 0.**

The reported modular rank \(\operatorname{rank}_{\mathbb F_{241}}J=53\) is only a lower bound on the characteristic-zero rank unless supplemented by an upper-bound argument. The local-rigidity proof does not need equality for that full rank; it uses only the verified injectivity on the nontrivial sector.

A fixed dephased triple gives an actual diagonal ray unitary, not just a phase-array symmetry. The fixed-point equations supply a shared diagonal unitary \(R\) that induces the prescribed two-three-cycle permutations in both bases. Then \(R^3\) is diagonal in both the anchor and either unbiased basis, and hence scalar. After a scalar normalization \(R^3=I\). Its trace is zero because its monomial representation has no fixed rays; the three cubic-root multiplicities must consequently all be two.

---

## 7. Exact isolation of the product triple

Let

\[
H_2=\frac1{\sqrt2}\begin{pmatrix}1&1\\1&-1\end{pmatrix},
\qquad F_3=\frac1{\sqrt3}(\omega^{rs})_{r,s=0}^2,
\]

and define

\[
U_p=H_2\otimes F_3,
\]
\[
V_p=(\operatorname{diag}(1,i)H_2)
\otimes(\operatorname{diag}(1,\omega,\omega)F_3).
\]

This is an exact MUB triple with the identity. The same 55-variable, 96-equation phase system has

\[
\boxed{\operatorname{rank}DF_p(0)=55}
\]

by exact elimination over \(\mathbb Q(\sqrt3)\). Selecting 55 independent equations and applying the inverse function theorem proves local isolation, modulo the already removed continuous gauges.

This is an actual isolation theorem, not just a statement that no first-order deformation was found. It also shows that an argument based on one connected deformation family cannot simply include all known triples without handling the isolated component separately.

---

## 8. Boundary compressions do not determine the successful anchor

For a matching \(m\), build the joint quotient matrix \(D_m\) by stacking the three forward row quotients and their conjugates, for the two non-anchor bases. Put

\[
G_{a,m}=D_mD_m^*/36.
\]

The compression identities from the previous checkpoints give

\[
0\le G_{a,m}\le I,\qquad\operatorname{tr}G_{a,m}=2.
\]

An actual common matching symmetry corresponds to rank two; a boundary eigenvalue one alone is weaker.

At the crossing triple, exact characteristic polynomials give:

* at anchors 0 and 2, exactly one boundary matching, namely \((01)(23)(45)\), with polynomial \(z^4(z-1)^2\);
* at anchor 1, exactly six boundary matchings, with polynomial

\[
\frac1{27}z^2(z-1)(3z-1)^3.
\]

The six middle-anchor matchings are precisely the six bijections between the even and odd indices. Their spectra are

\[
(0,0,1/3,1/3,1/3,1).
\]

Their joint purities are \(4/3\), not 2, so none supplies a common symmetry at that anchor. The other nine matchings there are strictly interior. All 45 determinant values are retained in `crossing_verified.json`.

There is an explicit scalar-square witness at the middle anchor. Its non-anchor bases are \(A=U^*\) and \(B=U^*V\). Let

\[
q=\sqrt3/2-i/2,
\]

and let \(X\) have \(X_{2t+1,2t}=q\), \(X_{2t,2t+1}=\bar q\), all other entries zero. Then \(X^2=I\), and the dephasings \(X_A=\mathcal E_A(X),X_B=\mathcal E_B(X)\) satisfy exactly

\[
X=X_A+X_B,\qquad
X_A^2=\frac34I,\qquad X_B^2=\frac14I,\qquad
X_AX_B+X_BX_A=0.
\]

Thus the scalar branch of the preceding quadratic-closure theorem genuinely occurs at an unsuccessful anchor. The existence of a boundary witness must not be promoted to a same-anchor monomial symmetry.

---

## 9. A cross-anchor balanced-Jordan identity

For each basis \(B\), choose ten representatives \(\mathscr S_B\) of its balanced sign involutions, modulo sign. In the original coordinate basis they are the conjugates by \(B\) of diagonal matrices with three plus and three minus entries.

The sign vectors form a tight frame:

\[
\sum_{s\in\mathscr S}s s^T=12(I-J/6).
\]

Consequently

\[
\sum_{S\in\mathscr S_B}SXS=12\mathcal E_B(X)-2X.
\]

For two unbiased basis algebras and their balanced involutions \(R,S\), this gives

\[
\sum_{R,S}\|RS+SR\|_{\rm HS}^2=960,
\qquad
\sum_{R,S}\|i(RS-SR)\|_{\rm HS}^2=1440.
\]

Choose Hilbert–Schmidt orthonormal Hermitian bases \(E_{a,i}\), \(1\le i\le5\), of the three traceless basis algebras. Define

\[
t_{ijk}=\operatorname{tr}(E_{0,i}E_{1,j}E_{2,k}),
\qquad
r=\sum(\operatorname{Re}t_{ijk})^2,
\qquad s=\sum(\operatorname{Im}t_{ijk})^2.
\]

Then \(r+s=5/6\). To check this, supplement the two traceless bases by \(I/\sqrt6\). Their 36 ordered products are pairwise orthogonal with squared Hilbert–Schmidt norm \(1/6\), by mutual unbiasedness and commutativity within each algebra. A unit vector in the third traceless algebra is orthogonal to all product terms with an identity factor. Parseval gives a squared-coefficient sum \(1/6\) for each of its five orthonormal vectors.

Cyclic invariance of trace makes \(r,s\) anchor-independent. The balanced tight-frame calculation then yields, for every permutation \((a,b,c)\) of the anchors,

\[
\boxed{
\sum_{R\in\mathscr S_b,S\in\mathscr S_c}
\|(1-\mathcal E_a)(RS+SR)\|_{\rm HS}^2
=960-576r,
}
\]

\[
\boxed{
\sum_{R\in\mathscr S_b,S\in\mathscr S_c}
\|(1-\mathcal E_a)i(RS-SR)\|_{\rm HS}^2
=1440-576s.
}
\]

Their sum is 1920. These equal totals are genuine constraints using all three coherent algebras. They do not force a particular balanced pair to have zero off-anchor Jordan part. No such inference is made.

---

## 10. First unproved global implication and next concrete calculation

The global missing implication remains

\[
\boxed{
\text{MUB equations in }\mathbb C^6
\ \Longrightarrow\
\exists\,a,m:\ \det(I-G_{a,m})=0.
}
\]

The earlier quadratic-closure and downstream results explain why this suffices. This continuation does not exclude a physical triple with all 45 matching compressions strictly below the boundary.

The new local theorems exclude such a counterexample in neighborhoods of the crossing point, the radical point, and the isolated product point. They do **not** show that every solution component meets one of those neighborhoods, or even that every component meets the known symmetric locus. Local completeness cannot be substituted for a component-incidence theorem.

The next concrete continuation is to derive the full transverse Jacobian on the general common-cyclic family and determine its exact rank-drop locus, retaining all phase parameters. At each remaining rank-drop point or stratum, use the projected Hessian and actual symmetric-family germs to test whether an extra component can branch off. All exceptional strata must be included; generic-rank arguments alone are inadequate.

Even a complete analysis of the known locus would still leave the possibility of disconnected unknown components. A separate global argument would then be required. Neither connectedness nor completeness is assumed in this checkpoint.

---

## 11. Reproduction and audit

Run

```text
python verify_all.py
```

from this directory. The only non-standard dependency is SymPy. No floating-point numerical threshold, numerical root search, or external dataset is used by these verifiers.

The calculation chain is:

1. `crossing_exact.py`: exact rank 51, four-dimensional kernel, and projected-Hessian quadratic span;
2. `crossing_symmetry.py`: actual monomial symmetries and exact identification of their two tangent fixed planes;
3. `crossing_verify.py`: all MUB identities at the crossing, the two complementary-circulant base forms, their nonzero implicit-function determinants, all 45 compression determinants, the scalar-square witness, and exact rank 55 at the product triple;
4. `regular_rigidity_modp.py`: rational moving-sector dimension 40 and modular nonvanishing certificate for all 40 moving tangent directions at the radical point.

`radical_field.py` supplies the finite-field arithmetic with complex conjugation tracked correctly. The previous checkpoint supplies the characteristic-zero verification of that radical MUB triple; the modular test here is used only to certify nonzero derivative minors.

Gauge audit: the 55-variable chart removes only a common ambient row phase and independent basis-column phases. Reanchoring uses a single common ambient unitary. No independent ambient left normalization of the original two non-anchor bases is performed.

Exceptional-case audit: the local circulant lift divides only by entries of two-by-two unitary factors that have modulus \(1/\sqrt2\) at the specified base points. The complementarity Jacobian determinants are explicitly nonzero. Neighborhoods are chosen so these facts persist. No generic nonvanishing hypothesis is silently applied to another stratum.

Dependency audit: the local classification, local symmetry rigidity, and product isolation are proved independently of the global MUB classification. The computational assertions are exact finite linear algebra and are exposed in reproducible source and JSON certificates. The first unproved global inference is stated in Section 10.
