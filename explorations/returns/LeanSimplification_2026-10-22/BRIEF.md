# Mathematical brief

All statements involving the manuscript's `Ω`, `R`, `Ψ`, labels, or exclusion set must be connected to their actual definitions. The arguments below specify that interface; they do not invent replacement definitions.

## 1. Prescribed-label side uniqueness from one elementary fiber

### 1.1 Gram map and strictness interface

For a normalized phase side

\[
B=\begin{pmatrix}1&1&1\\x_1&x_2&x_3\\y_1&y_2&y_3\end{pmatrix},
\quad |x_j|=|y_j|=1,
\]

use the real-analytic map from the six-dimensional phase torus to `ℂ³≅ℝ⁶`

\[
\Phi(B)=\left(\sum_jx_j,\ \sum_jy_j,\ \sum_jy_j\bar x_j\right).
\]

These are the lower-triangular off-diagonal entries of `BB†`. A side over `E` satisfies `BB†=6I−EE†`.

The supplied discussion reports the identities

\[
R(E)=4(\operatorname{Im}\Psi(B))^2,
\qquad
|\det D\Phi(B)|=\tfrac14|\operatorname{Im}\Psi(B)|.
\tag{G1}
\]

They are manuscript dependencies, not verified here without the definitions. The determinant uses real phase coordinates and the manuscript's norm/coordinate convention. At an incident side with `R(E)>0`, these identities imply a nonzero Jacobian. Only nonvanishing is needed for the topology argument.

### 1.2 Elementary fiber theorem

Set

\[
E_0=\begin{pmatrix}1&1&1\\1&1&-1\\1&-1&1\end{pmatrix},
\quad
6I-E_0E_0^\dagger=
\begin{pmatrix}3&-1&-1\\-1&3&1\\-1&1&3\end{pmatrix}.
\]

The exact equations for its normalized sides are

\[
\sum_jx_j=-1,\qquad \sum_jy_j=-1,
\qquad \sum_jy_j\bar x_j=1.
\tag{G2}
\]

**Claim:** every solution is a common column permutation of `B₀` or `conj B₀`, where

\[
B_0=\begin{pmatrix}1&1&1\\-1&i&-i\\i&-1&-i\end{pmatrix}.
\tag{G3}
\]

A useful algebraic proof of the unit-circle step avoids a geometric pairing theorem. For unit `x₁,x₂,x₃` with sum `−1`, conjugate the sum and multiply by `x₁x₂x₃`:

\[
x_1x_2+x_1x_3+x_2x_3=-x_1x_2x_3.
\]

Expansion now gives `(1+x₁)(1+x₂)(1+x₃)=0`. Some entry is `−1`; the remaining two are opposites. The same holds for `y`.

The two rows cannot have a `−1` in a common column. If they did, the correlation would have the form `1+2u t̄=1` for unit `t,u`, an impossibility. Choose a common column permutation so that

\[
x=(-1,t,-t),\qquad y=(u,-1,-u).
\]

Then (G2) gives `(u−1)t̄=1+u`. Taking squared moduli gives `Re u=0`; with `|u|=1`, this forces `u=±i`. Substitution gives `t=u`. Conversely both displayed matrices satisfy (G2).

All three columns of either matrix are distinct, giving six different column permutations. The two orbits are disjoint: the positions of the unique `−1` in each of the last two rows fix the putative permutation, and the `±i` entries then disagree. Thus there are exactly twelve ordered sides.

The source reports `Ψ(B₀)=56−8i` and `R(E₀)=256`. Check these from the actual invariant definitions. If `Ψ` is invariant under column permutation and conjugates under matrix conjugation, the twelve sides split into exactly six for each sign. With these conventions, `B₀` has the negative sign.

### 1.3 Propagate the signed count

For `s∈{−1,+1}`, let

\[
Z_s=\{(E,B):E\in\Omega,\ BB^\dagger=6I-EE^\dagger,
\ B_{1j}=1,\ B\text{ phase},\ s\operatorname{Im}\Psi(B)>0\}.
\]

Required inputs: `Ω` is a connected real-analytic strict domain containing `E₀`; the Gram target depends analytically on `E`; (G1) holds at all incident sides; and all invariants are continuous.

1. The inverse function theorem for the Gram map gives a local analytic graph `B(E)` through every incidence point. The projection `Z_s→Ω` is locally an analytic diffeomorphism.
2. It is proper. Over compact `K⊆Ω`, the sides lie in the compact phase torus. Since `min_K R>0`, (G1) bounds `|Im Ψ|` away from zero, so the sign condition survives all relevant limits.
3. Establish surjectivity: the image is open by the local graph property and closed by properness in this Hausdorff, locally compact setting. It contains `E₀`, so connectedness makes it all of `Ω`.
4. A proper local homeomorphism has finite, locally constant fiber cardinality. Therefore every signed fiber has six elements.
5. Column permutations preserve the fiber and the sign. Their action is free: either use a separately proved side nonsingularity theorem, or observe that coincident columns create identical phase-derivative columns in `DΦ`, contradicting (G1).
6. Every orbit has six elements and exhausts the signed fiber. This proves prescribed-label uniqueness.

A direct compactness proof of local constancy may be easier to formalize than covering-space machinery: use disjoint inverse-function neighborhoods around the finitely many points of one fiber and properness to exclude additional points nearby. Include empty fibers when proving local constancy before surjectivity.

Consequences: both labels exist, each is unique up to column permutations, local ordered representatives are analytic, and the unordered orbit is globally continuous. There is no claim of a global ordered branch. Transposition gives vertical-side statements after checking that transposition preserves the exact domain and the corresponding label/row conventions. Once matched flatness and the required inverse are proved, the forced-block formula also gives continuity of the full reconstructed Hadamard class.

## 2. Stronger local certificate estimates

### 2.1 Direct normal displacement

Work in real inner-product spaces. Assume

\[
\delta=T\eta+\nu,\quad T\eta\perp\nu,\quad
\|\delta\|\le\rho,\quad \|\eta\|\le r_H,
\]

with `ρ,r_H≥0`, `σ>0`, and

\[
\sigma\|\nu\|\le\|J\nu\|,\quad
\|\Phi_0\|\le e_0,\quad \|JT\eta\|\le j_1r_H,
\quad \|\varepsilon\|\le\sqrt3\|\delta\|^2,
\]

where the supplied upper bounds are nonnegative and

\[
0=\Phi_0+JT\eta+J\nu+\varepsilon.
\]

The triangle inequality and positive division give

\[
\boxed{\|\nu\|\le n_{\rm dir}:=
\min\left\{\rho,\frac{e_0+j_1r_H+\sqrt3\rho^2}{\sigma}\right\}.}
\tag{N1}
\]

The first bound inside the minimum uses orthogonality and Pythagoras. This proof needs neither a discriminant condition nor `ρ<σ/(2√3)`.

**Conditional comparisons:** if the actual old definitions imply

\[
b_{\rm old}\ge e_0+j_1r_H+\sqrt3\rho^2,
\qquad n_{\rm old}\ge b_{\rm old}/\sigma,
\]

then `n_dir≤n_old`. Check the repository's definition of the root and any clipping before applying this comparison. Also,

\[
r_H=g_H\rho,\quad \sqrt\lambda\,g_H\ge1,\quad
\rho\ge0,\ n\ge0
\Longrightarrow
\min\{\rho,\sqrt\lambda\,r_H+n\}=\rho.
\tag{N2}
\]

The hypotheses of (N2) must be proved from the actual constants.

### 2.2 Exact boundary shell

If `‖δ‖=ρ_s`, `ρ_s≥0`, `‖ν‖≤n_s`, and `n_s≥0`, then

\[
\|T\eta\|^2+\|\nu\|^2=\rho_s^2,
\]

so

\[
\boxed{\sqrt{\max\{0,\rho_s^2-n_s^2\}}
\le\|T\eta\|\le\rho_s.}
\tag{N3}
\]

Use the squared form when it avoids unnecessary square-root inequalities in the checker.

### 2.3 Orthogonal boundary transfers

Let `h` be the orthogonal projector onto the real gauge subspace `S`. Let `T_s:ℝᵏ→S` be injective and `G_s=T_s* T_s`. Assume `ν∈S` and `ν⊥ran T_s`.

**Require `A` to be a linear isometric equivalence preserving `S`.** Merely preserving `S` does not preserve lengths or orthogonality.

For `c∈S`, put

\[
M=AT_s,\qquad
\Pi_s=h-T_sG_s^{-1}T_s^*,\qquad
\gamma=\|\Pi_s A^{-1}c\|.
\]

Here `Π_s` is the orthogonal projector onto `S∩(ran T_s)⊥`. Therefore

\[
\langle c,A\nu\rangle
=\langle\Pi_sA^{-1}c,\nu\rangle,
\qquad AT_s\eta\perp A\nu.
\]

For `‖ν‖≤n_s`, expansion and Cauchy–Schwarz give

\[
\boxed{\|c+M\eta+A\nu\|^2
\le\|c+M\eta\|^2+n_s^2+2n_s\gamma.}
\tag{N4}
\]

Thus a certified upper bound `U_B` for `‖c+Mη‖²` on a box `B` proves transfer if

\[
U_B+n_s^2+2n_s\gamma<\rho_t^2,\qquad \rho_t>0.
\]

On the source sphere, the stronger specialized form is

\[
\boxed{\|c+M\eta+A\nu\|^2
\le\|c\|^2+\rho_s^2+2\langle M^*c,\eta\rangle+2n_s\gamma.}
\tag{N5}
\]

For a real box `η_i∈[m_i−r_i,m_i+r_i]`, `r_i≥0`,

\[
\sup_{\eta\in B}\langle a,\eta\rangle
=\sum_i a_i m_i+\sum_i|a_i|r_i.
\tag{N6}
\]

This makes (N5) especially convenient for an exact finite checker. In manuscript notation, `c=h(AP_s+2πN−P_t)`; justify the reduction to (N4) in the actual gauge model.

These are improved mathematical inequalities. Every changed certificate computation still needs a replay, outward rounding, and the existing proof of geometric coverage.

## 3. Exact quartet completion using fewer rays

All rays here are unit vectors in `ℂ⁶`; phase is irrelevant. Write `U=H/√6` for the second fixed orthonormal basis. Squared unbiased overlap is `1/6`.

### 3.1 Two five-frames complete automatically

Let `K₅,L₅` be orthonormal five-frames. Every vector is unbiased to both fixed bases `I,U`, and all twenty-five cross squared overlaps equal `1/6`.

Define

\[
P=I-K_5K_5^\dagger,\qquad Q=I-L_5L_5^\dagger.
\]

These are rank-one orthogonal projectors. Their expectations on every fixed-basis ray and every ray of the opposite five-frame equal `1−5/6=1/6`. Moreover,

\[
\operatorname{Tr}(PQ)=6-5-5+25/6=1/6.
\tag{C1}
\]

Their ranges supply the two missing rays and hence a quartet. Conversely a quartet trivially contains such two five-frames. This exact equivalence does not establish equivalence of any particular interval or graph relaxation.

### 3.2 Rank-two completion spaces

Now let `K₄,L₄` be orthonormal four-frames with the same fixed-basis conditions and all sixteen cross squared overlaps `1/6`. Set

\[
P=I-K_4K_4^\dagger,\qquad Q=I-L_4L_4^\dagger.
\]

Both are rank-two orthogonal projectors. Define real linear spaces

\[
\mathcal L_P=\{X=X^\dagger:X=PXP,\ \operatorname{Tr}X=0,
\ b^\dagger Xb=0\ \forall b\in I\cup U\cup L_4\},
\]

and symmetrically `L_Q` using `Q` and `I∪U∪K₄`. Their real dimensions are at most three. Hermitian matrices must be treated as a real vector space, not a complex subspace.

**Exact criterion:**

\[
\boxed{\text{The eight rays extend to a quartet}
\iff \exists\,0\ne X\in\mathcal L_P,\ 0\ne Y\in\mathcal L_Q:
\operatorname{Tr}(XY)=0.}
\tag{C2}
\]

Proof of sufficiency:

1. A nonzero traceless Hermitian operator supported on a rank-two projector has `X²=λ²P` for some `λ>0`. One elementary proof chooses a basis of the range and uses
   \[
   \begin{pmatrix}a&z\\\bar z&-a\end{pmatrix}^2
   =(a^2+|z|^2)I_2,\qquad a\in\mathbb R.
   \]
2. Rescale `X,Y` by positive real factors so `X²=P`, `Y²=Q`. This preserves the subspace constraints and the zero pairing.
3. The matrices `P_±=(P±X)/2` and `Q_±=(Q±Y)/2` are orthogonal rank-one projector pairs summing to `P,Q` respectively.
4. For each tested ray `b`, `b†Pb=1/3` and `b†Xb=0`, so `b†P_±b=1/6`; likewise for `Q_±`.
5. From the original sixteen cross conditions,
   \[
   \operatorname{Tr}(PQ)=6-4-4+16/6=2/3.
   \]
   The opposite-frame constraints and trace zero also give `Tr(XQ)=Tr(PY)=0`.
6. Consequently for `ε,δ∈{−1,+1}`,
   \[
   \boxed{\operatorname{Tr}(P_\epsilon Q_\delta)
   =\tfrac16+\tfrac{\epsilon\delta}{4}\operatorname{Tr}(XY).}
   \tag{C3}
   \]
   The four remaining unbiasedness constraints are exactly the single scalar condition in (C2).

For necessity, subtract the two missing rank-one projectors in each completed basis: `X=P_+−P_-`, `Y=Q_+−Q_-`. They satisfy every support and linear condition, are nonzero, and (C3) forces the zero pairing.

For Hermitian `X,Y`, `Tr(XY)` is real even though they need not commute. Prove this once; a real bilinear pairing `Re Tr(XY)` is convenient in Lean.

### 3.3 Dimension and small-matrix formulations

For two nonzero real subspaces with a bilinear pairing, if either has dimension at least two, pairing with a fixed nonzero element of the other has a nonzero kernel. If both are lines, a zero pairing exists exactly when nonzero generators pair to zero.

Thus **noncompletion** is equivalent to:

\[
\mathcal L_P=0,\quad\text{or}\quad\mathcal L_Q=0,\quad\text{or}\quad
\mathcal L_P,\mathcal L_Q\text{ are lines with nonzero mutual pairing}.
\tag{C4}
\]

For an explicit calculation choose isometries `W_P,W_Q:ℂ²→ℂ⁶` with ranges `P,Q`. With Pauli matrices

\[
\sigma_1=\begin{pmatrix}0&1\\1&0\end{pmatrix},\quad
\sigma_2=\begin{pmatrix}0&-i\\i&0\end{pmatrix},\quad
\sigma_3=\begin{pmatrix}1&0\\0&-1\end{pmatrix},
\]

put `A_a=W_P σ_a W_P†`, `B_b=W_Q σ_b W_Q†`. Define real `16×3` matrices by

\[
(M_P)_{v,a}=v^\dagger A_av\quad(v\in I\cup U\cup L_4),
\quad
(M_Q)_{v,b}=v^\dagger B_bv\quad(v\in I\cup U\cup K_4),
\]

and `G_ab=Tr(A_aB_b)`. Then (C2) is

\[
\exists\,x\in\ker M_P\setminus\{0\},\ y\in\ker M_Q\setminus\{0\}:
x^{\mathsf T}Gy=0.
\tag{C5}
\]

Equivalently, noncompletion means `rank M_P=3`, or `rank M_Q=3`, or both ranks are two and their nonzero kernel generators have nonzero pairing. The ranks and dimensions are over `ℝ`.

**Remaining global task:** establish (C4) uniformly for every admissible pair of four-frames in the relevant domain. None of (C1)–(C5) alone proves that assertion.

### 3.4 Trace witness

Given a completed triple, let `S` be all unit rays unbiased to all three bases. If a Hermitian `A` satisfies

\[
\operatorname{Tr}A<0,\qquad v^\dagger Av\ge0\quad\forall v\in S,
\]

then `S` contains no orthonormal basis, since summing the six expectations in such a basis would give `Tr A≥0`.

This is sufficient, not necessary. A positive weighted resolution of the identity using rays from `S` prevents such a witness, even if no orthonormal basis exists within `S`.

## 4. Matched images and analytic continuation

### 4.1 Global matched-image equality: transformation obligations first

Let `A_s={[H_s(E)]:E∈Ω}`. Starting from a matched Hadamard

\[
H=\begin{pmatrix}E&B\\C&D\end{pmatrix},
\]

swapping both block rows and block columns produces an equivalent matrix with corner `D` and side blocks `C,B`.

The source proposes using

\[
R(D)=4(\operatorname{Im}\Psi(C))^2=R(E)>0,
\qquad \Psi(C)=\overline{\Psi(B)}.
\tag{I1}
\]

To conclude `A_+=A_-`, prove (I1) with the actual block conventions, prove its behavior under dephasing, prove that the normalized `D` satisfies **every** predicate defining `Ω`, and prove that the prescribed label reverses. Then prescribed-label uniqueness identifies the swapped matrix with the opposite completion. Apply the same operation for the reverse inclusion.

For the additional equality `A_+=conj(A_+)`, separately prove conjugation invariance of `Ω` and equivariance of reconstruction. The result concerns global images; it does not identify the two matrices over a fixed seed.

If `Ω` is path connected, the continuous matched image is path connected. An explicit matched path whose endpoint is the Fourier class then proves that the image together with that endpoint is path connected. Connectedness of a manifold/open domain implies path connectedness only after using its local path connectedness; do not apply that inference to an arbitrary connected space.

### 4.2 Optional continuation proof of matched flatness

Fix a sign `s` and choose matched sides locally analytically. Where the side inverse is justified, set

\[
D_s(E)=-C_s(E)E^\dagger(B_s(E)^\dagger)^{-1},
\quad
\mathcal F_s(E)=\sum_{i,j}(|(D_s)_{ij}|^2-1)^2.
\]

Prove that local choices differ only by the permitted side orderings/phases, so the defect is a globally defined real-analytic scalar on the connected domain `Ω`.

It suffices to prove `F_s=0` on a nonempty **open** subset. A single seed or one-dimensional path does not suffice.

The source proposes obtaining an open subset from an actual four-dimensional local manifold of dephased Hadamards near Fourier, together with its explicit strict matched Fourier deformation. The reported seed formula is

\[
R(E_t)=144\sin^2t(1+\cos t)^2>0
\]

for suitable small positive `t`. The deformation itself and its matching verification must be supplied from the manuscript.

At a strict point of the actual manifold, `dE=0` forces `dB=0` and `dC=0` by invertibility of the two side Gram differentials, then `dD=0` by the forced-block formula. In dimension four, an appropriate inverse function theorem makes the corner image open. The real-analytic identity theorem then gives `F_s≡0`.

**Handle both signs:** repeat with a second open patch, or prove

\[
\overline\Omega=\Omega,\qquad
\mathcal F_{-}(\bar E)=\mathcal F_{+}(E).
\]

Ordering independence alone does not equate `F_+` and `F_-` at the same seed. Keep the local-manifold input explicit; it is deeper than a tangent-space dimension count. See `sources/SOURCE_NOTES.md` for the external reference.

## 5. Exceptional-case reductions

### 5.1 Reduce 81 cube-root cases to four

Fix `ω²+ω+1=0`, `ω≠1`, and `F_jk=ω^(jk)` for zero-based `j,k∈{0,1,2}`. Let

\[
H(v,w)=\begin{pmatrix}
F&D_vF\\FD_w&-\tfrac13FD_wF^\dagger D_vF
\end{pmatrix},\quad
v=(1,p,q),\quad w=(1,r,s).
\tag{E1}
\]

Assume that the existing argument has already forced `p,q,r,s` to be cube roots. Multiplying `v_j` by `ω^(kj)` permutes the final three columns, and multiplying `w_j` by `ω^(ℓj)` permutes the final three rows. Normalize `p=r=1`.

If a normalized vector is `(1,1,1)`, identify (E1) with the appropriate Fourier or transposed-Fourier family using the actual definition. For example `v=(1,1,1)` gives blocks `[[F,F],[FD_w,−FD_w]]`.

Otherwise `v=(1,1,ω^ε)` and `w=(1,1,ω^δ)`, with `ε,δ∈{1,2}`. The exact table is

| `(ε,δ)` | `D₀₀` | `|D₀₀|²` | Conclusion |
| --- | --- | --- | --- |
| `(1,1)` | `0` | `0` | Not flat |
| `(2,2)` | `ω−1` | `3` | Not flat |
| `(1,2)` | `ω` | `1` | Tao representative after stated permutation |
| `(2,1)` | `ω` | `1` | Transpose of previous case |

For `(1,2)`, the one-based column order `(1,4,5,2,6,3)` gives the matrix `ω^T` with exponent rows

\[
T=\begin{pmatrix}
0&0&0&0&0&0\\
0&0&1&1&2&2\\
0&1&0&2&2&1\\
0&1&2&0&1&2\\
0&2&2&1&0&1\\
0&2&1&2&1&0
\end{pmatrix}.
\]

For `(2,1)`, the same **row** order gives this representative. The table depends on the stated Fourier convention. The included Python script checks these exact identities, but the intended theorem is a Lean proof.

### 5.2 A singular minor forces a Hadamard subblock

**Claim:** a singular `3×3` phase submatrix of an order-six complex Hadamard forces a `3×3` complex Hadamard submatrix somewhere in the full matrix.

First prove that a singular phase `3×3` matrix contains a rank-one `3×2` or `2×3` rectangle. In rank two, choose an independent pair of columns, normalize the first to `1`, and write the third as `v=a1+bu`, where all entries of `u,v` have modulus one. Then

\[
|a|^2+|b|^2+2\operatorname{Re}(\bar a b\,u_j)=1.
\]

If the three `u_j` are distinct, a nonzero real linear functional on the unit circle cannot take one value at all three points, so `āb=0`, giving proportional columns. If at most two `u_j` occur, two rows coincide. Rank one is immediate.

Next normalize a rank-one `3×2` rectangle in the full Hadamard so that its columns are `1₆` and `(1,1,1,−1,−1,−1)ᵀ`; orthogonality and the equality case of the triangle inequality force the last three entries. Orthogonality to both columns makes every remaining column's top triple sum to zero.

A unit triple of zero sum is a scalar multiple of `(1,ω,ω²)` or `(1,ω²,ω)`. Both orientations occur, since the top three full rows are independent and otherwise the top-three-row block would have rank at most two. Those two columns and the all-one column form a `3×3` Hadamard. Transpose for a `2×3` rectangle.

To infer that every `3×3` minor in a hypothetical quartet must be nonsingular, additionally use a proved exclusion for matrices containing a `3×3` Hadamard subblock. The subblock lemma alone does not provide that exclusion.

## 6. A weaker classification chain suffices, conditionally

Let `F` denote the union of the Fourier-family and transposed-Fourier-family images in the full Hadamard quotient `Q`. Let `W⊆Q` be a **proved** clopen set consisting of nonextendible classes and containing `[F₆]`.

Required structural inputs are only:

- All corners critical implies membership in `F`.
- A strict nonmatched corner implies membership in `F` or Tao's class.
- A strict matched corner implies membership in the matched-completion image.
- Every class falls into the relevant critical/strict alternatives.
- Each Fourier-family image is connected and contains `[F₆]`.
- The matched image is connected and meets `F`; if using just one sign, first establish the global image equality.
- Tao is separately excluded.

Connectedness implies `F⊆W` and the matched image lies in `W`. Classification then excludes every class. This avoids making the stronger all-critical census, the full 400-corner Fourier matching check, Tao isolation, or connectedness of the entire non-Tao quotient prerequisites of this particular inference.

This is a dependency simplification, not an independent proof that `W` exists or is closed. Extendible pairs form a closed set by compactness of the additional bases, so nonextendibility is open. There is no corresponding automatic closedness. The side Gram Jacobian does not control the additional extension equations.
