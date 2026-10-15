# Route 2B: exact orthogonal pairing, counterexamples, and a regional exclusion theorem

Date: 15 October 2026. All matrices below are **raw phase Hadamards**: their entries have modulus one and their Gram matrices are `6 I`. Unbiased vectors have squared norm 6. Angles and phase errors are in radians.

## 0. Results and their status

| Item | Status | Result |
|---|---|---|
| B1: structural pairing | **PROVED** | Every order-six H₂-reducible Hadamard has a shared skew monomial antiunitary. It pairs **every** common-unbiased ray with an exactly orthogonal common-unbiased ray. Conversely, existence of such a shared skew monomial antiunitary characterizes H₂-reducibility. |
| B1: locus | **PROVED, partial classification** | The explicit H₂-reducible locus lies in Ω₂. It contains three-dimensional pieces in the handoff's regular four-dimensional quotient charts. This does **not** establish Ω₂ = H₂, or rule out further components of Ω₂. |
| B1: near-pair estimate | **PROVED, conditional quantitative theorem** | A small shared-antiunitary defect, together with an explicit phase-Jacobian condition, produces a genuine nearby orthogonal partner up to a controlled overlap error. |
| B2: Fourier-only and 3×3-block proposals | **REFUTED; exact counterexample CERTIFIED** | An explicit Diţă triple has no 3×3 Hadamard submatrix in its first edge. Its triple defect is zero while its distance to the Fourier families is strictly positive, with an explicit lower bound. |
| B2: graph simplification | **PROVED** | Five orthogonal common-unbiased rays automatically complete to six. With complete ray coverage, absence of a five-clique is a sufficient exclusion test. |
| B2: simple invariant of H alone | **NOT ESTABLISHED** | In particular, the plausible necessity `T₃ ⊂ H₂` is not proved here. The pairing theorem is not a proof of this implication. |
| B3: corner constraints | **PROVED** | Strip-Gram, determinant, Cauchy–Binet, and division-free adjugate identities link H, K and `L = H* K / √6`. |
| B3: inheritance of pairing by a third basis | **REFUTED; counterexample CERTIFIED** | A valid shared pairing for I and Diţă's H induces a dense skew unitary, not a monomial matrix, in an explicit third basis. |
| B4: regional theorem | **PROVED** | A complete cluster cover, intra-cluster separation, uniform phase tubes, pairwise polynomial lower bounds, and a no-five-clique graph imply a uniform positive lower bound on δ₃. |
| B4: finite algebra | **CERTIFIED self-tests** | Exact rational quadratic-ball witnesses and finite clique decisions are implemented and tested. These are subcheckers, not completed Record certificates. |
| B4: region shares | **NUMERICAL, conditional screens only** | On 48 fixed-seed Record centres, the quadratic screen with a hypothetical phase tube `s = ρ³/4` passes 20/48 at 0.16, 2/48 at 0.3, and 0/48 at 0.5. No whole-region root coverage or tube bound is certified in this run. |

The strongest positive result is the exact pairing on a **three-parameter family larger than the Fourier families**. The strongest negative result is the explicit obstruction to a Fourier-only description of the third-MUB locus. The practical certificate improvement is a sound no-five-clique theorem with a small rational quadratic subcertificate. This is not a replacement atlas or a proof of a simple global invariant characterizing T₃.

“PROVED” below includes proofs from explicitly stated standard input theorems. “CERTIFIED” means an exact finite computation performed by a provided script. “NUMERICAL” never means exhaustive root coverage or a uniform regional certificate. No claim of bibliographic priority is made.

## 1. Normalization, scope, and two audit cautions

Put `U = H/√6`. A dephased raw common-unbiased vector satisfies

\[
x=(1,e^{i\phi_1},\ldots,e^{i\phi_5}),\qquad
|U^*x|=(1,\ldots,1).
\]

For another raw Hadamard K, the correct third edge is

\[
L=\frac{H^*K}{\sqrt6}.
\tag{1.1}
\]

The unscaled product `H* K` has entry modulus √6, not 1. All corner formulas below use the normalized raw edge L.

**Scope statement.** The supplied `PROOF_v2.md` is treated as reference context. This output neither replays nor independently endorses its asserted completed atlas. The structural theorems below do not use that atlas. The dimension statement uses the regular matched-chart description specified in the handoff, in addition to Karlsson's H₂ normal form. Files needed for the computations here are included in this output folder.

**PROVED: direction of numerical defect bounds.** If a root finder recovers only `S ⊂ U(H)`, then

\[
\delta_3(H)\leq
\min_{\substack{A\subset S\\|A|=6}}
\max_{x\ne y\in A}|x^*y|.
\tag{1.2}
\]

This is minimization over a smaller set. Thus a positive defect computed from a non-exhaustive root list is **not a certified positive lower bound** on the actual defect. It is a search statistic, and, for exact recovered roots, an upper bound. Floating residuals add a further approximation issue. Independent multistart agreement is useful evidence but does not fix this logical direction.

**PROVED: cluster multiplicities matter.** A graph with one vertex per cluster cannot exclude a basis unless it is also shown that two orthogonal rays cannot lie in one cluster. This condition is explicit in §6; it cannot be omitted merely because folds normally merge nearby rays.

## 2. B1: the exact pairing and the locus it identifies

### 2.1 Definitions and standard input

A monomial unitary has exactly one nonzero entry of modulus one in each row and column. A **skew monomial unitary** A satisfies `Aᵀ = −A`. Consequently its coordinate permutation is a perfect matching, its paired coefficients are opposite, and

\[
A\overline A=-I.
\tag{2.1}
\]

Call a pair A,B a *shared skew monomial antiunitary structure* for H when

\[
A\overline H=HB.
\tag{2.2}
\]

The associated antiunitary on vectors is `𝒥x = A overline(x)`.

The standard structural input is Karlsson, arXiv:1003.4177, Theorem 2 and the normal form in Propositions 4 and 9 / Theorem 11:

* An order-six Hadamard containing any 2×2 Hadamard submatrix is H₂-reducible: after equivalence, all nine blocks in a 3-by-3 array of 2×2 blocks are Hadamard.
* Such a matrix is equivalent to the following normal form, or a limit of these representatives:

\[
H=\begin{pmatrix}
F_2&Z_1&Z_2\\
Z_3&\tfrac12Z_3AZ_1&\tfrac12Z_3BZ_2\\
Z_4&\tfrac12Z_4BZ_1&\tfrac12Z_4AZ_2
\end{pmatrix},\qquad F_2=\begin{pmatrix}1&1\\1&-1\end{pmatrix},
\tag{2.3}
\]

where

\[
Z_j=\begin{pmatrix}1&1\\z_j&-z_j\end{pmatrix}\quad(j=1,2),\qquad
Z_j=\begin{pmatrix}1&z_j\\1&-z_j\end{pmatrix}\quad(j=3,4),\quad |z_j|=1,
\]

and the two core matrices A,B have the form

\[
\begin{pmatrix}a&b\\\bar b&-\bar a\end{pmatrix},\qquad
AA^*=BB^*=2I,\qquad B=-F_2-A.
\tag{2.4}
\]

Here A,B in (2.3)–(2.4) are **core matrices**, not the six-dimensional intertwining matrices in (2.2). Below the latter are denoted `J_r,J_c` to avoid this collision. In (2.4), the core determinants are −2. The scalar-core exceptional descriptions give the Fourier families; they can be treated by limits, or by the explicit Fourier construction in §2.4.

### 2.2 PROVED: every H₂-reducible H has a shared skew structure

Let

\[
J_2=\begin{pmatrix}0&1\\-1&0\end{pmatrix}.
\]

For every 2×2 matrix M,

\[
MJ_2M^T=(\det M)J_2.
\tag{2.5}
\]

If `MM* = 2I`, multiplication by `overline(M)` on the right gives

\[
J_2\overline M=\frac2{\det M}MJ_2.
\tag{2.6}
\]

For the nine blocks `M_ij` of (2.3), direct determinant multiplication gives

\[
\det M_{ij}=-2r_ic_j,\qquad
(r_0,r_1,r_2)=(1,z_3,z_4),\quad(c_0,c_1,c_2)=(1,z_1,z_2).
\tag{2.7}
\]

For example,
`det((1/2) Z3 A Z1) = (1/4)(−2z3)(−2)(−2z1) = −2z3z1`.
Thus the determinant phases factor by block row and block column.

Set

\[
J_r=\operatorname{diag}(r_0J_2,r_1J_2,r_2J_2),\qquad
J_c=\operatorname{diag}(-\bar c_0J_2,-\bar c_1J_2,-\bar c_2J_2).
\tag{2.8}
\]

Equations (2.6) and (2.7) imply, block by block,

\[
\boxed{J_r\overline H=HJ_c.}
\tag{2.9}
\]

Both matrices are skew monomial unitaries. This construction is continuous on a fixed block-pattern chart. The space of skew monomial unitaries is a finite union of compact phase tori. Therefore limits of such H retain such a structure, after taking a convergent subsequence of the pair of intertwiners. This includes singular boundary parameter values.

The property also survives equivalence. If `H' = M H N` with monomial unitaries M,N, then

\[
J'_r=MJ_rM^T,\qquad J'_c=N^*J_c\overline N
\]

are skew monomial unitaries and satisfy `J'_r overline(H') = H' J'_c`. This proves the assertion for the entire H₂-reducible locus, not merely the nondegenerate normal-form charts. Conjugation preserves it. For transposition, the intertwiners can be taken as `overline(J_c), overline(J_r)`.

**CERTIFIED supporting identities.** `verify_exact.py` checks (2.5), the determinant/core identities, and an explicit full six-dimensional example by exact SymPy arithmetic. The proof above, not a finite parameter sample, supplies the universal conclusion.

### 2.3 PROVED: a fixed-point-free orthogonal involution on all common-unbiased rays

For `x ∈ U(H)`, put `p = H* x / √6`, so p is also flat. From (2.9),

\[
\mathcal Jx=J_r\overline x
 =\frac H{\sqrt6}J_c\overline p.
\tag{2.10}
\]

The vector on the left is flat because `J_r` is monomial; the vector `J_c overline(p)` is flat because `J_c` is monomial. Hence `𝒥x` is unbiased to both reference bases. Multiplying by a scalar phase dephases its first coordinate without changing these facts.

Skew symmetry gives

\[
x^*\mathcal Jx=\overline x^{\,T}J_r\overline x=0,
\qquad \mathcal J^2=-I.
\tag{2.11}
\]

Therefore `x ↦ [𝒥x]` is an involution on rays, has no fixed ray, and pairs each ray with an exactly orthogonal ray. It applies even if U(H) is not finite. When U(H) is finite, it gives a perfect matching and forces its cardinality to be even.

For completeness, nonemptiness of U(H) follows from the unitary biunimodular-vector theorem of Idel–Wolf, arXiv:1408.5728: every unitary U has a flat vector p for which Up is flat. Applied to `U=H/√6`, this gives the required x. Thus the pairing statement is not vacuous.

### 2.4 PROVED: a direct Fourier-family version

An equivalent Fourier-family representative has indices `(p,s),(q,t)`, with `p,q∈Z/3Z`, `s,t∈{0,1}`, and entries

\[
H_{(p,s),(q,t)}=\omega^{pq}(-1)^{st}z_q^s,\quad z_0=1.
\tag{2.12}
\]

Define

\[
(J_r)_{(p,s),(-p,1-s)}=(-1)^s,
\qquad J_c=\operatorname{diag}(-\bar z_qJ_2)_{q=0}^2.
\tag{2.13}
\]

All other entries are zero. Substitution into (2.12) proves (2.9) directly. The row matching is independent of the two Fourier parameters. This covers the scalar-core exceptional representatives without a limiting argument; transpose follows as above.

### 2.5 PROVED converse: the symmetry locus is exactly H₂

Suppose H admits skew monomial unitaries `J_r,J_c` satisfying (2.9). Permute the three row pairs and the three column pairs so the intertwiners are block diagonal with blocks `α_i J2` and `β_j J2`. Each corresponding 2×2 block M satisfies

\[
\alpha_iJ_2\overline M=\beta_jMJ_2.
\tag{2.14}
\]

Writing `M = [[a,b],[c,d]]`, the first row of (2.14) says

\[
\bar c=-(\beta_j/\alpha_i)b,\qquad
\bar d=(\beta_j/\alpha_i)a.
\]

It follows that `a bar(c)+b bar(d)=0`. All four entries already have modulus one, so `MM*=2I`. All nine paired blocks are Hadamard. Thus H is H₂-reducible.

Combining both directions:

\[
\boxed{H\text{ is H₂-reducible}\iff
\exists\text{ skew monomial }J_r,J_c:
J_r\overline H=HJ_c.}
\tag{2.15}
\]

This characterizes a **shared coordinate symmetry**, not arbitrary orthogonal pairs.

### 2.6 PROVED locus equation, and exactly what it says about Ω₂

For a phase Hadamard, define

\[
P_2(H)=\prod_{i<j}\prod_{k<\ell}
\left|h_{ik}h_{j\ell}+h_{i\ell}h_{jk}\right|^2.
\tag{2.16}
\]

A factor vanishes precisely when the selected 2×2 block is Hadamard. Karlsson's 2×2-block theorem and (2.15) therefore give

\[
\mathcal H_2=\{H:P_2(H)=0\}
 =\{H:\text{shared skew monomial structure exists}\},
\qquad \boxed{\mathcal H_2\subseteq\Omega_2.}
\tag{2.17}
\]

The vanishing condition is invariant under Hadamard equivalence. For numerics one should use the minimum block defect rather than multiply 225 small factors.

In a dephased seed chart, `a=−1` already makes the top-left 2×2 block Hadamard. Thus the strict `a=−1` chart lies in Ω₂, **on either physical sheet**. At regular points it is a three-dimensional hypersurface in the handoff's four-dimensional chart. A concrete strict point is

\[
(a,b,c,d)=(-1,-1,-i,i),\qquad
(g,\eta,\chi,R)=(20,8,-112,256).
\tag{2.18}
\]

The strict inequalities persist locally, and the three free corner phases are recovered from the completed matrix. Passing to dephased equivalence only identifies finitely many representatives of any fixed matrix, so it does not collapse the local dimension. Karlsson's three-parameter normal form supplies the corresponding upper dimension for H₂ itself.

**Limit of the result:** this proves that Ω₂ contains three-dimensional pieces. It does not prove `dim Ω₂ ≤ 3`, that every component is such a hypersurface, or that an accidental orthogonal pair outside H₂ is impossible. No equation for all of Ω₂ is claimed.

### 2.7 PROVED local explanation for almost-real, small overlaps

Work near a regular point of one H₂ hypersurface, with local coordinates `(t,u)`, where the hypersurface is `t=0`. Let `x(t,u), y(t,u)` be regular analytic common-unbiased ray branches that are paired by §2.3 on `t=0`. The implicit function theorem provides such continuations when the corresponding phase Jacobians are nonsingular. Then

\[
g(t,u)=x(t,u)^*y(t,u),\qquad g(0,u)=0.
\]

The analytic Hadamard lemma gives

\[
\boxed{g(t,u)=t\,a(t,u)}
\tag{2.19}
\]

for a complex analytic a. At the hypersurface, the real differential of g has rank at most one: all tangential derivatives vanish, leaving a single real normal direction. This accounts for a small overlap moving approximately along a complex line.

When `a(0,u) ≠ 0`, the zero locus of this **particular continued pair** is locally exactly `t=0`, and its magnitude is linear in the normal displacement to leading order. The nonvanishing assumption is not proved for every pair or every point. At folds or more symmetric intersections the argument needs modification.

This is a mechanism for many small pair overlaps without a small six-ray defect. It is not a lower bound on δ₃ and does not identify Fourier distance with the relevant normal coordinate.

### 2.8 PROVED Gram and frame consequences, without a tight-frame assumption

For paired vectors x,𝒥x and y,𝒥y, their cross-Gram block has the form

\[
\begin{pmatrix}a&b\\-\bar b&\bar a\end{pmatrix},\quad
 a=x^*y,\ b=x^*\mathcal Jy.
\tag{2.20}
\]

Indeed `⟨𝒥x,𝒥y⟩ = overline(⟨x,y⟩)` and
`⟨𝒥x,y⟩ = −overline(⟨x,𝒥y⟩)` follow from antiunitarity and `𝒥²=−I`.

If U(H) is finite, its full unweighted frame operator

\[
S=\sum_{x\in U(H)}xx^*
\]

satisfies `J_r overline(S) J_r* = S`. Each eigenspace is therefore preserved by an antiunitary squaring to −I. An eigenvector v and 𝒥v are orthogonal eigenvectors with the same eigenvalue; iterating gives **even spectral multiplicities**. This does not force all three eigenvalue pairs to coincide, so it does not prove that S is scalar or that U(H) is a projective design.

The recovered finite numerical lists generally do not have scalar frame operators. Without exhaustive coverage, that observation is not an exact counterexample to a proposed identity for the full U(H).

### 2.9 PROVED quantitative near-pair theorem

Let H be an exact phase Hadamard and let `J_r,J_c` be any skew monomial unitaries. Set

\[
E=J_r\overline H-HJ_c,\quad
\varepsilon=\|E\|_{\mathrm{op}},\quad
r=2\varepsilon+\varepsilon^2,\quad
L_0=2(1+\sqrt6).
\tag{2.21}
\]

Fix `x∈U(H)`, and dephase `y₀=J_r overline(x)`. It is flat and exactly orthogonal to x, but might not be unbiased to H. Define the five-equation map

\[
F(\phi)=\bigl(|(H^*e^{i\phi}/\sqrt6)_j|^2-1\bigr)_{j\in I_5},
\tag{2.22}
\]

where one of the six equations is omitted and the first coordinate phase is fixed at zero. Let `φ₀` represent y₀. Suppose the real 5×5 Jacobian `DF(φ₀)` has least singular value at least `σ>0`, and

\[
2L_0r<\sigma^2.
\tag{2.23}
\]

Then there is a genuine `y∈U(H)` with phase distance at most

\[
s=\frac{\sigma}{L_0}
\left(1-\sqrt{1-\frac{2L_0r}{\sigma^2}}\right)
\leq\frac{2r}{\sigma},
\qquad
\boxed{|x^*y|\leq\sqrt5\,s.}
\tag{2.24}
\]

If `√5 s < 6`, this y is a different ray from x.

**Proof.** Write `x=(H/√6)p` with p flat. Before dephasing,

\[
(H^*/\sqrt6)y_0=J_c\bar p+(H^*E/6)\bar p.
\]

The error vector has Euclidean norm at most ε. Relative to a flat vector, the squared-modulus residual has norm at most `2ε+ε²`, proving `||F(φ₀)||≤r`.

For `V=H/√6`, the first and second phase derivatives of `V* e^{iφ}` have operator/bilinear norm at most 1. Its vector norm is √6, so its largest coordinate modulus is at most √6. Differentiating squared moduli gives

\[
\|D^2F(\phi)[h,k]\|_2\leq2(1+\sqrt6)\|h\|_2\|k\|_2.
\]

Consider the fixed-point map `u ↦ u−DF(φ₀)⁻¹ F(φ₀+u)` on the radius-s ball. Its displacement from zero is at most
`r/σ + L₀s²/(2σ) = s`, and its Lipschitz constant is at most `L₀s/σ < 1`. Banach contraction gives a zero. The omitted equation follows because the six squared moduli sum to 6. Finally,
`|x* y−x* y₀|≤sum_{j=1}^5 |φ_j−φ₀j|≤√5s`.

**PROVED distance corollary.** If H₀ is H₂-reducible, use its exact intertwiners for H. Then

\[
\|J_r\overline H-HJ_c\|_{\rm op}
\leq 2\|H-H_0\|_{\rm op}.
\tag{2.25}
\]

This follows by subtracting the exact intertwining identity for H₀ and using unitary invariance of the norm. Thus (2.24) becomes an explicit linear-in-distance near-pair estimate, subject to its Jacobian condition. No claim of a distance lower bound for the six-ray defect follows from it.

All constants are explicit. To apply this as a certificate one must enclose E and the **normalized square Jacobian** rigorously. The numerical tables below instead use a raw 6×5 Jacobian for continuation diagnostics; those singular values must not be inserted unchanged into (2.23).

## 3. B2: an exact counterexample to Fourier-only and forced-3×3 proposals

### 3.1 CERTIFIED exact triple

Let

\[
D=\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&i&-i&-i&i\\
1&i&-1&i&-i&-i\\
1&-i&i&-1&i&-i\\
1&-i&-i&i&-1&i\\
1&i&-i&-i&i&-1
\end{pmatrix}.
\tag{3.1}
\]

Put

\[
w=e^{2\pi i/24}
 =\frac{\sqrt6+\sqrt2+i(\sqrt6-\sqrt2)}4,
\qquad b=\frac{-1+2i}{\sqrt5},
\]

and

\[
K=\begin{pmatrix}
1&1&1&1&1&1\\
-i&-i&w^2&w^{10}&w^{10}&w^2\\
-ib&ib&w^9&w^{21}&w^9&w^{21}\\
-i&-i&w^{10}&w^2&w^2&w^{10}\\
ib&-ib&w^{13}&w^{17}&w^5&w\\
ib&-ib&w^5&w&w^{13}&w^{17}
\end{pmatrix}.
\tag{3.2}
\]

This is the explicit Diţă triple appearing in Goyeneche, arXiv:1209.4126, equation (32), with raw-Hadamard normalization. Its six columns are the requested six vectors.

`verify_exact.py` checks, using exact radicals only,

\[
D^*D=K^*K=6I,\quad |D_{ij}|=|K_{ij}|=1,\quad
|(D^*K)_{ij}|^2=6.
\tag{3.3}
\]

Thus `{I,D/√6,K/√6}` is an exact MUB triple and `δ₃(D)=0`.

### 3.2 CERTIFIED connection to the supplied matched generator

Use zero-based row and column lists

\[
r=(0,1,2,3,5,4),\qquad c=(0,3,5,1,4,2).
\]

Set `H_m=D[r,c]` and `K_m=K[r,:]`. Explicitly,

\[
H_m=\begin{pmatrix}
1&1&1&1&1&1\\
1&-i&i&-1&-i&i\\
1&i&-i&i&-i&-1\\
1&-1&-i&-i&i&i\\
1&-i&-1&i&i&-i\\
1&i&i&-i&-1&-i
\end{pmatrix}.
\tag{3.4}
\]

Its leading seed is

\[
(a,b,c,d)=(-i,i,i,-i),\qquad
\theta=(-\pi/2,\pi/2,\pi/2,-\pi/2).
\]

For its leading 3×3 corner, the exact handoff invariants are

\[
(g,\eta,\chi,R)=(20,8,-112,256).
\tag{3.5}
\]

With the handoff's **negative** side-signature convention
`Ψ(M)=−perm(M) det(M)² / product(M_ij)`, the upper-right and lower-left signatures are respectively

\[
-56+8i,\qquad -56-8i.
\tag{3.6}
\]

These are exactly `(χ ± i√R)/2` on the prescribed positive matched branch. The direct toolkit call `matched(theta)` reproduces (3.4) numerically. The seed, the phase matrix, its Hadamard/MUB identities, the invariants and the matched signature signs are independently verified exactly, rather than accepting the floating generator as a certificate.

### 3.3 PROVED and CERTIFIED: no 3×3 Hadamard block

Every entry of D is a fourth root of unity. The inner product of two rows restricted to three columns is a sum of three fourth roots. Such a sum cannot vanish: if its real and imaginary parts were zero, the numbers of `+1,−1` terms would agree and the numbers of `+i,−i` terms would agree, making the total number of terms even.

Hence D has no 3×3 Hadamard submatrix. Moreover, every off-diagonal restricted-row inner product has squared modulus at least 1. Therefore

\[
b_3(D):=\min_{|R|=|C|=3}\|D_{R,C}D_{R,C}^*-3I\|_F\geq\sqrt6.
\]

Exact enumeration of all 400 blocks verifies equality:

\[
\boxed{b_3(D)=\sqrt6.}
\tag{3.7}
\]

The property is preserved by row/column permutations and phases, conjugation and transposition. Consequently the proposed implication

\[
H\in T_3\Longrightarrow H\text{ has a 3×3 Hadamard block}
\]

is false. So is a universal claim that H,K,L share such blocks.

This counterexample does **not** refute the weaker “some 2×2 Hadamard block” condition: D has many such blocks. Nor does it refute the condition “some corner has R=0.” In fact, D has both strict corners and degenerate corners. Equation (3.5) only rules out claims that all corners of a triple edge must have R=0.

### 3.4 PROVED explicit positive distance from all Fourier equivalents

Let `𝓕` include the Fourier two-parameter family, its transpose, conjugates, and all Hadamard equivalents. Each member has a 3×3 Hadamard block. If E is the corresponding block of D and F is that block of a member of `𝓕`, then

\[
\sqrt6\leq\|EE^*-FF^*\|_F
\leq(\|E\|_{\rm op}+\|F\|_{\rm op})\|E-F\|_F
\leq(3+\sqrt3)\|D-H_{\mathcal F}\|_F.
\]

Therefore, in the unscaled Frobenius chord metric,

\[
\boxed{d(D,\mathcal F)\geq\frac{\sqrt6}{3+\sqrt3}
\approx0.517638.}
\tag{3.8}
\]

The same lower bound holds for unscaled Euclidean wrapped phase distance, since entrywise chord distance is no greater than phase distance. If a distance convention divides the matrix Frobenius norm by 6, divide this bound by 6 as well.

Together with `δ₃(D)=0`, this disproves every global inequality

\[
\delta_3(H)\geq c\,d(H,\mathcal F)^m\qquad(c>0,m>0)
\tag{3.9}
\]

for this Fourier-only locus. Enlarging `𝓕` is essential; merely changing the exponent or constant cannot repair (3.9).

### 3.5 CERTIFIED: a third basis need not inherit the selected pairing

For D, let J have nonzero upper-pair entries

\[
J_{01}=1,\qquad J_{24}=i,\qquad J_{35}=-i,
\qquad J_{ji}=-J_{ij}.
\tag{3.10}
\]

The induced matrix `Q_D = D* J overline(D)/6` is a skew monomial unitary; its paired coefficients are `−1,i,−i`. Thus J is a valid shared pairing for the two reference bases.

But for the explicit K in (3.2),

\[
Q_K=K^*J\overline K/6
\tag{3.11}
\]

has **five nonzero entries in every row**. In particular,

\[
|(Q_K)_{01}|^2=1/9.
\tag{3.12}
\]

These assertions are exactly checked in `verify_exact.py`. The induced matrix is still skew unitary, as it must be under a unitary change of basis, but is not monomial. Therefore this valid third basis is not a union of pairs for this selected symmetry. One cannot assume that the existence of a third basis makes it invariant under an already chosen shared pairing. The example does not rule out a different symmetry with additional invariance.

## 4. B2: the rigorous cheap graph reduction that survives

### 4.1 PROVED: five common-unbiased orthogonal rays suffice

Suppose `x₁,…,x₅ ∈ U(H)` are pairwise orthogonal. Define

\[
P=I-\frac16\sum_{a=1}^5x_ax_a^*.
\tag{4.1}
\]

This is a rank-one orthogonal projector. In the standard basis each of its diagonal entries is `1−5/6=1/6`. The same is true in the H basis because each `H*x_a/√6` is flat. Write `P=vv*` with `||v||=1`. Both v and `(H/√6)*v` have all coordinate moduli `1/√6`. Thus `x₆=√6v`, dephased, is common-unbiased and orthogonal to the first five.

Consequently

\[
\boxed{H\in T_3\iff U(H)\text{ contains five pairwise orthogonal rays}.}
\tag{4.2}
\]

The same argument works with `n−1` vectors in dimension n. No completion assumption is added: it is proved from the two diagonal flatness conditions.

### 4.2 PROVED conditional necessary condition and its cost

Given **complete** coverage of U(H) by clusters that cannot each contain two orthogonal rays, form a graph containing every possible orthogonal inter-cluster pair. A necessary condition for a third MUB is that this graph contain a five-clique. A cheaper preliminary necessary condition is that its 4-core be nonempty.

This is a useful checkable condition after ray coverage has been supplied, and it replaces the six-clique test by a stronger rejection test. It is not the preferred pure corner invariant of H requested in B2. No such invariant failing on most of X is established in this output.

In particular, neither (2.17) nor numerical graph evidence proves `T₃ ⊂ H₂`. That implication remains an explicit open obligation of this work, rather than an assumption hidden in the certificate.

## 5. B3: exact corner and strip constraints

### 5.1 PROVED simultaneous strip identities

Let H,K,L be raw Hadamards with (1.1), and partition H into 3×3 blocks:

\[
H=\begin{pmatrix}E&B\\C&D\end{pmatrix}.
\]

Write the top and bottom three rows of K as X,Y, and the top three rows of L as P. Set

\[
T=6I-E^*E=C^*C,\quad g=\det T,\quad
Z=\sqrt6P-E^*X=C^*Y.
\tag{5.1}
\]

Then

\[
\boxed{XX^*=PP^*=6I,\qquad XP^*=\sqrt6E,}
\tag{5.2}
\]

and

\[
\boxed{gX^*X+Z^*\operatorname{adj}(T)Z=6gI_6.}
\tag{5.3}
\]

**Proof.** Tightness of the top strips follows from `KK*=LL*=6I`. Equation (1.1) gives `KL*=√6H`, whose leading block is the second identity of (5.2). For (5.3), use

\[
C\operatorname{adj}(C^*C)C^*=\det(C^*C)I=gI.
\]

This identity holds for invertible C by the inverse formula, and for all C by polynomial continuity. Hence `Z*adj(T)Z=gY*Y`. Finally `X*X+Y*Y=K*K=6I`.

For a strict corner one can instead reconstruct `Y=(C*)⁻¹Z`, but the adjugate form (5.3) has no division and remains true at `g=0`. At `g=0` it may lose exclusion power; algebraic validity does not mean uniform conditioning.

For individual columns a,b, (5.3) is an explicit overlap-numerator constraint:

\[
g\,x_a^*x_b+z_a^*\operatorname{adj}(T)z_b=6g\,\delta_{ab}.
\tag{5.4}
\]

All six diagonal equations and fifteen off-diagonal complex equations must hold simultaneously, not just one selected compatible triangle.

### 5.2 PROVED determinant and minor relations

Let `W = [X;P]` be the stacked 6×6 matrix. By (5.2),

\[
WW^*=\begin{pmatrix}6I&\sqrt6E\\\sqrt6E^*&6I\end{pmatrix}.
\]

The Schur complement gives

\[
\boxed{|\det W|^2=216g.}
\tag{5.5}
\]

Cauchy–Binet applied to `XP* = √6 E` gives

\[
\boxed{\sum_{|S|=3}\det(X_S)\overline{\det(P_S)}
=6\sqrt6\det E.}
\tag{5.6}
\]

These identities tie together the 3×3 minors of K and L through the corner of H. They apply to every selection of coordinate triples after the corresponding permutations. They do not by themselves force a 3×3 Hadamard block, as the exact counterexample demonstrates.

`verify_exact.py` checks (5.2) and (5.3) on the explicit exact matched triple. Their proofs above are matrix identities, not deductions from the example.

### 5.3 PROVED conditional symmetry transfer; no automatic monomiality

If J is skew unitary, then under the basis `K/√6` its antiunitary matrix is `Q_K=K*J overline(K)/6`. This matrix is always skew unitary. It is monomial exactly when the K basis is permuted projectively by the antiunitary.

Therefore, **if** a shared pairing of I,H also preserves a third basis K, all three edge matrices H,K,L acquire shared skew monomial structures and are H₂-reducible by (2.15). The added invariance is a real hypothesis. Section 3.5 gives an exact example where a selected shared pairing does not preserve K.

This specifies the missing implication in attempts to infer common structure from a completed triple. Merely transporting an antiunitary to another basis does not transport monomiality.

## 6. B4: a sound regional no-third-MUB certificate

### 6.1 PROVED theorem, including folds and same-cluster pairs

Let a physical Hadamard region be described by parameters `||η||₂ ≤ ρ`, with any allowed normal-coordinate uncertainty included in the region definition. Suppose there are phase-model clusters a=1,…,m, with

\[
q_a(\eta)\in\mathbb R^5,
\qquad s_a\geq0,
\tag{6.1}
\]

such that every common-unbiased ray of **every physical H in the region** is contained in at least one cluster and has a dephased phase lift φ satisfying

\[
\|\phi-q_a(\eta)\|_2\leq s_a.
\tag{6.2}
\]

This coverage and tube assertion must include the normal uncertainty, all relevant sheets, and branches appearing or disappearing at folds. A cluster need not consist of one regular branch and need not contain a root for every η.

For models with first component phase zero, define

\[
g_{ab}^{\rm mod}(\eta)=1+\sum_{j=1}^5
 e^{i(q_{b,j}(\eta)-q_{a,j}(\eta))}.
\tag{6.3}
\]

Assume:

1. `s_a < √3` for every cluster.
2. There is a finite graph G with no five-clique, such that each nonedge a,b has a uniform bound

\[
|g_{ab}^{\rm mod}(\eta)|
\geq\sqrt5(s_a+s_b)+\gamma_{ab},\qquad \gamma_{ab}>0.
\tag{6.4}
\]

Then every H in the region has no third MUB. More quantitatively,

\[
\boxed{\delta_3(H)\geq
\min\left\{\min_a(6-2s_a^2),
\min_{\{a,b\}\notin E(G)}\gamma_{ab}\right\}>0,
}
\tag{6.5}
\]

with an irrelevant minimum over an empty class omitted.

**Proof of intra-cluster exclusion.** For two phase lifts in the same cluster, their difference has norm at most `2s_a`. Since `cos u ≥ 1−u²/2`,

\[
\operatorname{Re}(x^*y)\geq6-\tfrac12\|\phi_y-\phi_x\|_2^2
\geq6-2s_a^2>0.
\tag{6.6}
\]

Thus two orthogonal rays cannot use the same cluster label.

**Proof of pair-error bound.** The elementary inequality `|e^{it}−e^{iu}|≤|t−u|` and Cauchy–Schwarz give

\[
|x^*y-g_{ab}^{\rm mod}(\eta)|
\leq\sqrt5\| (\phi_y-q_b)-(\phi_x-q_a)\|_2
\leq\sqrt5(s_a+s_b).
\tag{6.7}
\]

The factor √5 uses dephased radians. A convention with phases divided by 2π must include the corresponding factor of 2π. All normal-chart effects have already been absorbed in the tube sizes; they must not be silently omitted.

If five rays were orthogonal, their labels would be distinct by (6.6), and every label pair would have to be an edge by (6.4)–(6.7), contradicting the graph condition. Equation (4.2) proves no third MUB. For any six rays, either two share a label or five distinct labels contain a nonedge, which proves (6.5).

### 6.2 PROVED quadratic overlap model with explicit remainder

Let the phase difference of models a,b be

\[
\theta_j(\eta)=\theta_{j0}+d_j^T\eta+\tfrac12\eta^TQ_j\eta,
\quad j=1,\ldots,5,
\tag{6.8}
\]

and include `j=0` with `θ₀=0,d₀=Q₀=0`. The Q matrices are real symmetric. Then

\[
g_{ab}^{\rm mod}(\eta)=g_0+\ell^T\eta+\tfrac12\eta^TM\eta+e_3(\eta),
\tag{6.9}
\]

where

\[
g_0=\sum_j e^{i\theta_{j0}},\quad
\ell=i\sum_j e^{i\theta_{j0}}d_j,\quad
M=\sum_j e^{i\theta_{j0}}(iQ_j-d_jd_j^T).
\tag{6.10}
\]

Put `u_j=ρ||d_j||₂`, `v_j=(ρ²/2)||Q_j||op`. A valid uniform bound is

\[
\boxed{|e_3(\eta)|\leq R_3:=
\sum_j\left[\frac{(u_j+v_j)^3}{6}+u_jv_j+\frac{v_j^2}{2}\right].}
\tag{6.11}
\]

**Proof.** Write the linear and quadratic phase increments as L and Q. The second-order exponential approximation has remainder at most `|L+Q|³/6`. Replacing `−(L+Q)²/2` by `−L²/2` costs at most `|LQ|+Q²/2`. Summing proves (6.11). This bounds the exponential of the **supplied quadratic phase model**, not the unknown difference between that phase model and a true ray; the latter is handled separately by (6.2).

The use of the *difference* coefficients `D_b−D_a` and `Q_b−Q_a` preserves common-parameter cancellations. Bounding the two branch motions independently first can destroy precisely the cancellation behind the near-pair phenomenon.

### 6.3 PROVED finite rational quadratic-ball witness

Choose a complex number ζ with `|ζ|≤1`. Unit modulus is convenient but not essential, so rational real/imaginary parts inside the unit disk are permitted. Let a real quadratic polynomial be a rigorous lower envelope for

\[
\operatorname{Re}\{\bar\zeta(g_0+\ell^T\eta+\tfrac12\eta^TM\eta)\}
-R_3-\sqrt5(s_a+s_b)-\gamma_{ab}.
\]

Write this lower polynomial as

\[
p(\eta)=\eta^TA\eta+2b^T\eta+c.
\tag{6.12}
\]

It suffices to provide `λ≥0` for which the rational matrix

\[
\boxed{\begin{pmatrix}
 A+\lambda I&b\\b^T&c-\lambda\rho^2
\end{pmatrix}\succ0.}
\tag{6.13}
\]

Indeed, with `v=(η,1)`,

\[
p(\eta)=v^T\begin{pmatrix}A+\lambda I&b\\b^T&c-\lambda\rho^2\end{pmatrix}v
+\lambda(\rho^2-\|\eta\|^2)>0.
\tag{6.14}
\]

For four parameters the witness matrix is only 5×5. Exact rational LDL or positive leading principal minors suffice. The uniform error needed when enclosing the trigonometric coefficients must be subtracted before presenting this matrix. A floating positive eigenvalue is not a certificate.

`check_region_algebra.py` implements exact rational principal-minor checking and exact finite graph decisions. Its tests accept a valid four-dimensional ball witness, reject invalid data, and distinguish a four-partite no-five-clique graph from a graph with an inserted five-clique. These checks certify the algebraic subproblems, not the missing geometric coverage and tubes.

### 6.4 What a production Region must contain

A sound production object needs: a physical-H region cover; a complete common-unbiased-ray cluster cover over it; uniform phase tubes including chart error and all fold branches; the intra-cluster inequalities; one verified nonedge witness for each excluded pair; and a checked no-five-clique graph. Existing Stage-C coverage can potentially provide the first two parts, but those actual coverage certificates were not included or replayed here.

The theorem permits higher-order phase models, several ζ directions, subdivision of parameter balls, or merged fold clusters. It does not justify replacing a branch cover by a multistart root list.

## 7. Numerical checks: what was actually found

Everything in this section is **NUMERICAL**, unless an exact certificate from §3 is explicitly cited. The files contain full raw ray lists and diagnostics, not just the selected table entries. All Record indices are zero-based.

### 7.1 Matched H₂ and off-H₂ samples

Eight successful strict matched seeds with `a=−1` and eight unconstrained successful matched seeds were tested. The seed arrays and recovered rays are saved in `seed_True_*.npz` and `seed_False_*.npz`. Each original search used 3,072 starts. At the strict `a=−1` samples, the number of pairs below `10⁻⁸` was exactly half the recovered ray count. The recovered common symmetry had residual around machine precision. At all eight unconstrained samples, no overlap fell below `10⁻⁸`.

| Strict a=−1 sample | Rays found | Pairs below 10⁻⁸ | Found-set six-ray defect | Shared-symmetry Frobenius residual |
|---|---:|---:|---:|---:|
| 0 | 48 | 24 | 0.377815 | 1.909e-13 |
| 1 | 52 | 26 | 1.246177 | 1.447e-14 |
| 2 | 52 | 26 | 1.005558 | 1.275e-14 |
| 3 | 48 | 24 | 0.846477 | 8.349e-15 |
| 4 | 52 | 26 | 0.891410 | 2.040e-13 |
| 5 | 48 | 24 | 0.847840 | 5.787e-14 |
| 6 | 48 | 24 | 0.770685 | 6.250e-15 |
| 7 | 56 | 28 | 1.337994 | 5.855e-14 |

The positive found-set six-ray defects are deliberately **not** called certified exclusions. They illustrate the distinction between a perfect matching of orthogonal pairs and a mutually orthogonal basis. The pairing itself is established analytically in §2, independently of these searches.

For the twelve smallest-overlap pairs at the regular strict `a=−1` samples, the ratio of the second to first singular value of the real two-by-four overlap derivative was at numerical roundoff. This is consistent with (2.19). Extra orthogonal pairs at more symmetric Fourier points need not obey that particular one-hypersurface description. No four-dimensional tangent diagnostic is assigned to Tao's isolated matrix.

### 7.2 Generic and listed near-triple Records

Define `b₂,b₃` as the minimum Frobenius Gram defect of a 2×2 or 3×3 submatrix, respectively. The symmetry defect below is the smallest value found by the finite-pattern numerical search over the 15 row matchings and 15 column matchings, followed by phase projection. It is a candidate value and hence, up to floating error, an upper bound on the global infimum, not a proof of phase optimality and not an interval enclosure.

| Record | Rays found | Minimum pair overlap | Found-set δ₃ | b₂ | b₃ | Shared-symmetry defect found |
|---|---:|---:|---:|---:|---:|---:|
| 100 | 48 | 9.928e-06 | 0.154022 | 0.000118524 | 0.0927749 | 0.0125128 |
| 2471 | 48 | 1.207e-02 | 0.866847 | 0.0371863 | 0.597799 | 0.215269 |
| 5305 | 48 | 1.038e-02 | 1.428602 | 0.0944413 | 0.961304 | 0.601777 |
| 30 | 48 | 1.806e-05 | 0.138590 | 0.00013278 | 0.0821832 | 0.00173379 |
| 247 | 48 | 2.150e-03 | 0.226983 | 0.0110617 | 0.13845 | 0.0838873 |
| 249 | 48 | 2.565e-04 | 0.226727 | 0.00143052 | 0.145119 | 0.0148047 |
| 307 | 48 | 2.456e-04 | 0.015756 | 0.00113172 | 0.0110345 | 0.00603321 |
| 431 | 48 | 8.669e-07 | 0.050680 | 0.000186752 | 0.0264711 | 0.00733465 |
| 3245 | 48 | 1.969e-03 | 0.238795 | 0.00171349 | 0.204833 | 0.0523479 |
| 10362 | 60 | 1.646e-06 | 0.420656 | 0.000327953 | 1.80064 | 0.00719454 |

Record 10362 is particularly instructive: its minimum 2×2 defect is tiny, its shared-symmetry defect is small, but its 3×3 defect is about 1.80. This supports using proximity to the **larger H₂ locus** rather than assuming every small-overlap example is close to a Fourier family. Applying the geometric argument of (3.8) to a rigorously enclosed positive b₃ would turn this distinction into a certified distance statement; that extra interval step has not been performed for this floating Record centre.

### 7.3 Fourier, Tao, and Diţă controls

| Control | Rays found | Minimum pair overlap | Pairs below 10⁻⁸ | Found-set δ₃ |
|---|---:|---:|---:|---:|
| Fourier(.23,.37) | 48 | 0 | 144 | 2.88871e-15 |
| Tao | 90 | 0.927051 | 0 | 1.5 |
| Dita | 120 | 0 | 600 | 1.37887e-15 |

These control searches used 8,192 starts. The Diţă triple has a separate exact proof, so its membership in T₃ is not inferred from the last table. The chosen generic Fourier control also produced a numerical six-clique. Tao is not H₂-reducible and was used only as an isolated control, not as part of the handoff's non-Tao quotient.

### 7.4 Independent-flat-vector baseline

A separate simulation used 10,000 ensembles of 48 independently drawn dephased flat vectors, with seed 492731. It is a baseline for random phase geometry, not a model for the algebraically constrained set U(H).

| Pair statistic within each 48-vector ensemble | Median over 10,000 ensembles |
|---|---:|
| Minimum overlap | 0.060704 |
| 1% pair quantile | 0.256259 |
| 5% pair quantile | 0.573740 |

This distinguishes two statements. An isolated overlap near 0.08 among roughly a thousand random pairs is not extraordinarily unlikely. The repeated minima of `10⁻⁵–10⁻²` and the much smaller low quantiles in many U(H) samples are the stronger anomaly. The exact H₂ matching and the local factorization (2.19) supply a structural explanation for a substantial part of it; they do not prove a probability law for all Records.

## 8. Numerical radius experiment and why it is not a certificate

### 8.1 Reproducible protocol

**NUMERICAL.** `sample_regions.py` selects 48 indices without replacement using `numpy.random.default_rng(20261015)`. At each centre it runs two independent 2,048-start searches, seeded by `710000+index` and `810000+index`, and takes the union of the recovered roots. The two searches agreed on the recovered set size and union size at every one of the 48 centres. This agreement is not a root-count proof.

An orthonormal horizontal four-dimensional tangent frame is computed in the ambient 36-coordinate phase metric. A second derivative of the phase chart is obtained by differentiating Hadamard orthogonality and solving in the normal space. First and second ray-phase derivatives are then obtained by differentiating the common-unbiased equations. The stored arrays `T,D,Q,P` give the tangent frame, ray first derivative, chart second derivative, and ray second derivative.

For each pair, the script builds (6.9)–(6.11). Instead of optimizing a rational ball witness, it uses the conservative support bound

\[
\operatorname{Re}(\bar\zeta g_0)
-\rho\|\operatorname{Re}(\bar\zeta\ell)\|_2
+\rho^2\min\{\lambda_{\min}(\tfrac12\operatorname{Re}(\bar\zeta M)),0\}
-R_3,
\]

over 64 equally spaced ζ directions. Thus cancellation between the linear and quadratic terms is not fully exploited. A pair is discarded only if this bound exceeds the assumed tube error by a margin of **0.1 in raw overlap units**. The remaining graph is tested for a five-clique.

The phase tubes are **hypothetical inputs** `s_a=cρ³`, not established by this experiment. Three coefficients are shown: `c=0`, `1/4`, and `1`. Even `c=0` still includes the proved exponential remainder (6.11) of the quadratic model, but assumes that the quadratic ray phases themselves are exact. This column is a diagnostic, not a physically justified tube.

### 8.2 Conditional screen counts

| Radius ρ | c=0 | c=1/4 | c=1 |
|---|---:|---:|---:|
| 0.16 | 21/48 (43.8%) | 20/48 (41.7%) | 20/48 (41.7%) |
| 0.3 | 2/48 (4.2%) | 2/48 (4.2%) | 0/48 (0.0%) |
| 0.5 | 0/48 (0.0%) | 0/48 (0.0%) | 0/48 (0.0%) |

**No entry in this table is a certified fraction of regions, or a volume fraction of X.** These are uniform-Record-centre sample shares for a specified floating, conditional model screen. The actual count of newly certified whole regions in this output is zero.

This conservative implementation does **not reproduce** the handoff's approximate 80% share at radius 0.5. That is a statement about this screen, not a refutation of the true geometry or of a more sophisticated fold-cluster method. The methods differ: the present calculation uses separate quadratic root models, an absolute Taylor remainder, a simple quadratic support bound, and no certified fold clusters.

### 8.3 Numerical conditioning diagnosis

Across the sample, the raw 6×5 ray Jacobian's smallest singular value at the worst ray of each centre ranged from approximately 0.0624 to 3.062; its median was about 0.834. For the 20 centres passing at 0.16 with `c=1/4`, the median of this worst-ray singular value was 1.091; for the 28 failures it was 0.519.

The median, across centres, of the largest individual ray-phase Hessian operator norm was about **11.1** in the passing group but **172** in the failing group. The maximum in the failing group was about **15,204**. Such coefficients make the explicit absolute remainder large even before a genuine geometric tube has been enclosed. The failures are therefore not explained simply by needing a few more digits in a tiny constant; near-fold curvature and loss of cancellation are substantial.

The maximum chart second-jet equation residual was about `2.4×10⁻¹⁴`; the maximum ray second-jet residual was about `1.4×10⁻¹⁰`; the largest raw unbiasedness residual of the recovered sample rays was about `1.1×10⁻¹³`. These are checks of local floating derivative calculations, **not bounds on third derivatives or on motion over the full ball**.

To make larger radii effective, the next implementation needs fold clusters, better common-parameter polynomial lower bounds, and validated chart/ray remainders. An assumed median tube error cannot substitute for the worst-case bound demanded by (6.2).

## 9. Exact obligations still open, and what can be integrated now

**Not established in this output:** an upper dimension bound for all of Ω₂; exclusion of orthogonal pairs outside H₂; a proof that T₃ lies in H₂; a pure H-corner necessary invariant failing on most of X; a complete certified ray cover on a positive-radius new Record; or an atlas reduction with certified region shares.

**PROVED mathematical components available for integration:** the shared-skew characterization (2.15); the explicit sublocus (2.17); the local normal factorization (2.19); the quantitative defect-to-near-pair bound (2.24); the five-ray completion lemma (4.2); the corner identities (5.2)–(5.6); and the regional theorem (6.5) with its rational quadratic witness (6.13).

**CERTIFIED counterexamples available for integration:** the exact matrices (3.1)–(3.4), their six common-unbiased orthogonal columns, the strict positive-sheet seed/signatures, the exhaustive no-3×3-block check, and failure of automatic preservation of a selected pairing by a third basis.

A precise missing lemma for a large-radius implementation is:

> Given a physical four-parameter Hadamard region, produce a finite cover of all of its common-unbiased rays by phase clusters with uniform bounds (6.2), including branches across folds, while keeping enough cluster-pair quadratic lower bounds positive to exclude a five-clique.

This formulation allows clusters rather than individual regular roots and names exactly the coverage assertion not supplied by multistart searches. A separate, more ambitious missing structural implication is `T₃ ⊂ H₂`; it must not be silently used to remove the Diţă-type possibilities from Tier 2.

## 10. Reproduction, files, and references

### 10.1 Commands

From this output folder, with Python 3, numpy, sympy, mpmath and networkx installed:

```bash
python verify_exact.py
python check_region_algebra.py
OPENBLAS_NUM_THREADS=1 python numerical_checks.py
OPENBLAS_NUM_THREADS=1 python sample_regions.py
OPENBLAS_NUM_THREADS=1 python random_baseline.py
```

The first two commands print a PASS/FAIL line for every exact finite check and fail with an exception on an invalid assertion. The latter commands are explicitly numerical. No Lean replay, interval root isolation, or certified region cover is claimed.

`README.md` describes additional regeneration commands. The `_toolkit/` folder contains the supplied generators and Record-centre data, so the numerical scripts do not need the parent handoff folder. `INPUT_PROVENANCE.json` identifies the input hashes. `MANIFEST.sha256` records hashes of delivered files.

`verify_exact.py` contains the exact vectors as formulas, not rounded coordinates. `numerical_checks.json` and `region_sample.csv/json` contain the full diagnostic tables; `*.npz` files contain the saved matrices, ray lists and derivative arrays. Exact and numerical logs are separate.

### 10.2 Standard mathematical inputs and provenance

* **arXiv:1003.4177**, Bengt R. Karlsson, *Three-parameter complex Hadamard matrices of order 6*: the 2×2-block characterization, H₂ normal form, and its three-parameter description. The skew-intertwining and pairing consequences used here are derived explicitly in §2.
* **arXiv:1408.5728**, Martin Idel and Michael M. Wolf, *Sinkhorn normal form for unitary matrices*: existence of a biunimodular vector for every unitary. This is the nonconstructive nonemptiness input in §2.3.
* **arXiv:1209.4126**, Dardo Goyeneche, *Mutually unbiased triplets from non-affine families of complex Hadamard matrices in dimension six*: provenance of the explicit Diţă triple. Its exact equations are independently checked here.
* **arXiv:0901.4051**, Stephen Brierley and Stefan Weigert, *Constructing Mutually Unbiased Bases in Dimension Six*: background on exact special-matrix computations; no exhaustive root-count claim from that paper is required for the theorems here.
* **arXiv:0902.0882**, Philippe Jaming, Máté Matolcsi, Péter Móra, Ferenc Szöllősi and Mihály Weiner, *A generalized Pauli problem and an infinite family of MUB-triplets in dimension 6*: Fourier-family background.

The input matched-chart results are the statements supplied in `reference/PROOF_v2.md`, not an independently replayed atlas in this output. The record-centre samples are computational inputs, not theorem certificates.
