# Exact sheet action, continuity, and finite-atlas coverage criterion

## Status and scope

This note proves Tasks B and C relative to the allowed strict reconstruction inputs MC1–MC5 in `PROMPT.md`. The global critical-point census in Claim A is supplied by the companion analytical proofs `DELTOID_REDUCTION.md` and `TWO_BOUNDARY.md`, together with the exact identification and Hessian checks in `EXACT_MAXIMA.md`. This note supplies the sheet and topological steps used to assemble those results. It does **not** construct an atlas or certify any supplied floating-point Record; the finite Record family and its boundary and exclusion certificates remain outstanding.

There is a real logical gap in the supplied `reference/atlas/COVERAGE_DRAFT.md`: its general assertion that a possible sheet swap is harmless because of MC5 does not follow. MC5 moves the positive sheet to the *conjugated seed*, whose membership in the covered set is precisely what that argument is trying to establish. The gap can be repaired exactly at the proposed maximum frame. In fact, every positive-sheet completion at its entire 144-map orbit is equivalent to the same matrix K*, a stronger conclusion than requested.

`verify_sheet_branches.py` independently replays the rational branch identities and the two exact symmetries of that maximum frame. All acceptance calculations in that script are exact. Its success does not certify Claim A or the atlas.

## 1. Intrinsic sheet labels and the exact action of seed symmetries

For an invertible 3-by-3 phase matrix X, define

\[
\Theta(X)=-\frac{\operatorname{perm}(X)\det(X)^2}
 {|\det(X)|^2\prod_{i,j}X_{ij}}.
\]

The side-fiber theorem in `reference/reconstruction/Proofs_SIDE_FIBER.md` identifies this invariant on the constructed sides:

\[
\Theta(B_\sigma)=z_\sigma,
\qquad \Theta(C_\sigma)=\overline{z_\sigma},
\qquad
z_\sigma=\frac{\chi+\sigma i\sqrt R}{2g},\quad \sigma\in\{+1,-1\}.
\tag{1}
\]

Here Hσ is partitioned as [[E,Bσ],[Cσ,Dσ]]. The second identity uses invariance of Θ under transposition, since the vertical side constructor constructs Cσᵀ. Strictness gives g>0 and R>0, so the sign of Im Θ(Bσ) unambiguously labels the sheet.

### 1.1 Invariance facts

Θ is invariant under row phases, column phases, row permutations, column permutations, and transposition. To check the phase statement, if the product of all row and column multipliers is t, the permanent, determinant, and product of all nine entries multiply by t, t, and t³, respectively; the factors cancel. Permutation signs disappear in det². Also

\[
\Theta(\overline X)=\overline{\Theta(X)}.
\tag{2}
\]

The scalar invariants g,η,χ,R of the seed are unchanged by row/column permutations and re-dephasing. Indeed, column monomials cancel from EE*, row phases cancel around the cycle sr t̄, and row permutations only permute X,Y,Z and possibly conjugate sr t̄. They are unchanged by conjugation as well. For transposition, the equality of the horizontal and vertical invariants is the exact identity proved in `reference/reconstruction/Proofs_STRICT_DOMAIN.md`. Thus all 144 maps preserve S={R>0}.

### 1.2 Row and column seed permutations do not swap the sheet

Extend a permutation of the three corner rows and columns to the full matrix, then re-dephase the full matrix. The transformed upper-right and lower-left blocks are monomially equivalent to the original Bσ and Cσ. By (1)–(2), they still have Θ-values zσ and z̄σ. The fixed-(Gram,Θ) side uniqueness in MC2–MC3 identifies them with the corresponding constructed sides at the transformed corner, up to complementary permutations. Orthogonality then uniquely forces the lower-right block. Consequently

\[
[H_\sigma(L_{P,Q}\theta)]=[H_\sigma(\theta)].
\tag{3}
\]

This is stronger than an unspecified two-sheet alternative. It uses the sheet-label identity and side uniqueness; two-sheet exhaustion by itself does not determine the sign.

### 1.3 Transposition and conjugation each reverse the sheet

The horizontal side of Hσᵀ is Cσᵀ, so its Θ-value is z̄σ. The horizontal side of H̄σ is B̄σ, whose Θ-value is also z̄σ. The same side-uniqueness argument gives

\[
\begin{aligned}
[H_\sigma(\theta^T)]&=[H_{-\sigma}(\theta)^T],\\
[H_\sigma(-\theta)]&=[\overline{H_{-\sigma}(\theta)}],\\
[H_\sigma((-\theta)^T)]&=[\overline{H_\sigma(\theta)}^{\,T}].
\end{aligned}
\tag{4}
\]

The middle identity is MC5. Here θᵀ=(θ₁,θ₃,θ₂,θ₄), and minus denotes componentwise angle negation on the torus.

Let L first permute the corner rows/columns, then transpose with bit τ and conjugate with bit κ. For either sheet,

\[
\boxed{
[H_\sigma(L\theta)]
=\mathcal C^\kappa\mathcal T^\tau
 [H_{(-1)^{\tau+\kappa}\sigma}(\theta)].}
\tag{5}
\]

Here 𝒞 and 𝒯 mean conjugation and transposition of classes. Equation (5) proves Claim B, including the exact sheet parity. No unlisted Tao possibility enters this argument: the transformed sides already have one of the two conjugately matched pairs of Θ-values, and uniqueness reconstructs that matched completion directly.

## 2. The maximum-frame gap has an exact repair

Let x be any unit complex number for which the following seed is strict:

\[
E(x)=\begin{pmatrix}
1&1&1\\
1&x&x^2\\
1&x^{-1}&x^{-2}
\end{pmatrix},\qquad K=H_+(E(x)).
\tag{6}
\]

The proposed θ*=(α,2α,−α,−2α) has precisely this form, with x=e^{iα}. The following statements do not require a specific equation for α.

First, Ē(x) is exactly E(x) with its last two rows swapped. By (3) and MC5,

\[
H_+(\overline{E(x)})\cong K,
\qquad H_-(E(x))\cong\overline K.
\tag{7}
\]

Second, take E(x), reorder its rows as (2,0,1), reorder its columns as (1,2,0), using zero-based indices, and re-dephase. The result is exactly E(x)ᵀ. For example, the four nontrivial re-dephased entries are x,x⁻¹,x²,x⁻². Therefore (3)–(4) and (7) imply

\[
K\cong H_+(E(x)^T)
\cong H_-(E(x))^T
\cong\overline K^{\,T}.
\tag{8}
\]

Both seed identities are checked symbolically for an indeterminate nonzero x by `verify_sheet_branches.py`.

Substituting (7)–(8) into (5) proves

\[
\boxed{H_+(L\theta_*)\cong K_*
\quad\text{for every one of the 144 seed maps }L.}
\tag{9}
\]

Thus Claim A, as established by the companion proofs, identifies all positive local maxima with this orbit, and all their positive-sheet classes equal [K*]. The four-operation closure stipulated in the handoff is more than is required for this particular orbit. For a generic seed lacking these frame symmetries, MC5 alone would not justify that reduction.

If Claim A is proved only through isolated neighborhoods, the exact frame identification must still be justified: for example, by identifying an exact critical point of form (6) and proving it is the unique critical point in its neighborhood. Merely observing that a numerical critical point is close to this form is insufficient for (7)–(9).

## 3. Continuity of the positive quotient sheet on all of S

### 3.1 The auxiliary sign does not change the reconstruction sheet

Keep G and z fixed. In the side notation of the supplied reconstruction, put

\[
\mu=s/3,\quad n=1-|\mu|^2,\quad
\alpha=\mu^2-u\bar\mu,\quad
\rho=(n+d_F)/2,\quad q=\alpha/\rho,\quad \sigma=u+\mu q.
\]

The accepted side identities give

\[
|u|=1,\quad n>0,\quad
\rho^2-n\rho+|\alpha|^2=0,\quad
|\sigma|^2=\rho,\quad
\rho(1+|q|^2)=n.
\tag{10}
\]

The prescribed sign has dF≥0 and ρ≥n/2. Reversing the nonzero square root δ changes dF to −dF. Whenever the reversed formula is defined,

\[
\rho'=n-\rho=\rho|q|^2,
\quad q'=1/\bar q,
\quad \sigma'=q^2\bar\sigma/\bar q.
\tag{11}
\]

Writing t=q/q̄ and letting J exchange Fourier indices 1 and 2,

\[
M'=MJ\operatorname{diag}(1,t,\bar t),
\qquad \xi'=t^3\bar\xi.
\tag{12}
\]

If w³=ξ, choose w'=ωᵇt w̄. The new side column j is exactly the old column b−j, with indices modulo three. Changing only w to ωᵇw sends column j to j−b. These identities hold separately at fixed z+ and at fixed z−; auxiliary root changes do not exchange those sheets. The lower-right formula D=−CE*G⁻¹B propagates complementary column and row permutations to the whole matrix.

The domain qualification matters. When s=0, one has μ=q=0, n=ρ=dF=1; the reversed-sign formula has ρ'=0 and is undefined. For example,

\[
(a,b,c,d)=(\omega,\omega^2,i,(3+4i)/5)
\]

has s=0 and R=5184/625>0. The exact replay checks this example. We must not claim that both raw auxiliary-sign formulas are regular everywhere on S.

There is no problem at an actual sign switch dF=0: then ρ=n/2>0 and |q|=1, so both formulas are regular and (11)–(12) apply. Conversely, q=0 forces μ=0 because α=0 and |μ|<1 imply |μ|²=|μ|; thus dF=n>0 and no sign switch occurs near such a point after sufficiently shrinking the neighborhood.

### 3.2 Local analytic representatives

Fix θ₀∈S. All quantities preceding the two auxiliary square roots are real analytic near θ₀, since R>0 and every prescribed denominator is nonzero. The radicand for each δ is nonzero. Choose a local analytic square root agreeing at θ₀ with a permitted prescribed root, and keep this branch instead of reapplying a principal-root/sign rule pointwise.

At θ₀ the signed denominator satisfies ρ≥n/2>0. Shrink the neighborhood so both signed side denominators remain positive. If the signed dF disagrees with the canonical sign, (11)–(12) identify the resulting side with the canonical side by a permutation; if q vanishes, the preceding paragraph supplies a neighborhood with no sign change. The same reasoning is applied independently to the vertical side.

Since |ξ|=1, each ξ is nonzero and has a local analytic cube root. These local choices construct a real analytic matrix-valued map Hloc on a neighborhood of θ₀, every value of which is Hadamard and is equivalent to the specified H+(θ). This argument uses full strict-domain validity in the current MC inputs. It does not inherit the restricted low-M coverage assumption of the older `CHART_REGULARITY.md`, and it does not assert that the entire Hadamard variety is a manifold.

For completeness, quotient continuity follows directly from the displayed metric. For θ close to θ₀ choose the small continuous real entrywise phases φ satisfying

\[
H_{\rm loc}(\theta)=H_{\rm loc}(\theta_0)\circ e^{i\phi(\theta)}.
\]

Let P be orthogonal projection onto the horizontal space V of real matrices with all row and column sums zero. The difference φ−Pφ is a row-plus-column phase, so

\[
\delta(H_+(\theta),H_+(\theta_0))
\le\|P\phi(\theta)\|_F
\le\|\phi(\theta)\|_F\longrightarrow0.
\tag{13}
\]

This proves the required continuity on all of S, including artificial cube-root cuts and auxiliary sign switches.

### 3.3 The continuous image does not contain the isolated Tao class

This can be obtained from the Tao pairing census, but it also follows from the stated isolation assumption without additional classification detail. If [H+(θ₀)] were isolated, continuity would make the class constant on a nonempty open neighborhood U of θ₀. A fixed equivalence class has only finitely many dephased ordered 3-by-3 corner seeds: row/column phase factors cancel from the four cross ratios, and there are at most (6·5·4)² ordered corner choices. But H+(θ) has E(θ) as its literal corner, and θ ranges over the open set U. This contradiction proves that the positive-sheet image contains no isolated class, in particular no Tao class.

Consequently the map in (13) takes values in X=(𝓗/≅)\{[Tao]}, as required for the open-and-closed argument.

## 4. Every strict component contains a positive local maximum

The torus is locally connected. Therefore every connected component C of its open subset S is open. If x∈∂C and R(x)>0, a sufficiently small connected neighborhood of x lies in S and intersects C; it must lie in the same component, contradicting x∈∂C. Thus R=0 on ∂C.

The closure C̄ is compact. Choose y∈C. A maximum x of R on C̄ satisfies R(x)≥R(y)>0, so x is not on ∂C and belongs to C. Since C is open, x is a local maximum of R on the whole torus. This proves the component assertion; no gradient-flow convergence statement is needed.

## 5. A precise finite Record boundary condition

### 5.1 Record regions and their quotient interiors

Let 𝓟 be the compact torus of all 6-by-6 unit-entry matrices, and let V be its 25-dimensional horizontal real phase space. For each record i choose a phase matrix Aᵢ, a direct orthogonal splitting V=Tᵢ⊕Nᵢ with dim Tᵢ=4, a positive definite quadratic form Qᵢ on Tᵢ, and ρᵢ>0. Define

\[
\Omega_i=\{v+n:\ v\in T_i,\ Q_i(v)\le1,
                 \ n\in N_i,\ \|n\|_F\le\rho_i\},
\quad E_i(u)=A_i\circ e^{iu}.
\tag{14}
\]

The center Aᵢ need not be an exact Hadamard for this topological lemma; it must be an exactly specified phase matrix. The analytic enclosure and exclusion certificates have their own requirements.

Let q denote passage to equivalence classes, and put

\[
\begin{aligned}
\mathcal R_i&=q(\mathcal H\cap E_i(\Omega_i)),\\
\mathcal U_i&=q(\mathcal H\cap E_i(\operatorname{int}\Omega_i)),\\
\mathcal B_i&=q(\mathcal H\cap E_i(\partial\Omega_i)).
\end{aligned}
\tag{15}
\]

Here interior and boundary are taken in the full horizontal space V, not in an assumed four-dimensional solution manifold. Each Rᵢ is compact and hence closed in the Hausdorff quotient. Each Uᵢ is open in the Hadamard quotient. To see the latter, if u is interior, any sufficiently small entrywise phase perturbation w decomposes as Pw+(I−P)w. The first term changes u within the interior of Ωᵢ; the second is absorbed by row/column phases. Thus the phase-gauge saturation of Eᵢ(int Ωᵢ) is open in 𝓟. Permutation saturation is a union of open sets, and intersecting with 𝓗 proves the assertion.

No uniqueness of a phase lift, absence of stabilizers, or injectivity radius is needed for this argument. A class may have many representatives in one or several records.

### 5.2 The boundary condition and proof

Assume the finite family satisfies

\[
\boxed{\mathcal B_i\cap X\ \subseteq\ \bigcup_j\mathcal U_j
\quad\text{for every record }i.}
\tag{16}
\]

Allowing j=i is harmless and can exploit a second interior representative of the same class. Requiring a different record is a stronger sufficient condition.

Then

\[
W=\left(\bigcup_i\mathcal R_i\right)\cap X
  =\left(\bigcup_i\mathcal U_i\right)\cap X.
\tag{17}
\]

Indeed, choose a source lift u∈Ωᵢ of any class in W. If it is interior, that class belongs to Uᵢ. If it is a boundary lift, (16) puts the class into another Uⱼ. The reverse inclusion is immediate. The left side of (17) is closed in X because the family is finite; the right side is open in X. Thus W is open and closed in X.

### 5.3 What a finite checker must actually verify

A finite certificate for (16) can consist of the following data and acceptance checks.

1. A finite, exactly checked cover of each parameter boundary ∂Ωᵢ by rational interval cells. Both the tangent ellipsoid boundary Qᵢ(v)=1 and the normal boundary ||n||=ρᵢ must be covered. A strict normal-slack estimate can instead certify that the latter contains no actual Hadamards.
2. On each cell, either a certified proof that there is no Hadamard, or a validated enclosure of **every actual Hadamard in that cell**. Contraction/interval Newton enclosures may be used, but they must cover every actual zero in the stipulated normal region, not merely a selected fixed-point branch.
3. For each surviving enclosure, a target record j, a fixed permitted monomial change of frame g, and verified local branches of the entrywise logarithm of g·H divided entrywise by Aⱼ. Let ψ be that real phase lift and w=Pψ. Then H is equivalent to Aⱼ∘e^{iw}. The target acceptance inequalities are the strict bounds

\[
\sup Q_j(P_{T_j}w)<1,
\qquad \sup\|P_{N_j}w\|_F^2<\rho_j^2.
\tag{18}
\]

These supremum upper bounds are computed by exact or outward-rounded interval arithmetic on the entire enclosure. Branch validity must also be certified; a numerical phase match at the cell center is insufficient. Certified positive rational slack makes the acceptance decision finite and checkable. Cells can be subdivided and assigned different target records or equivalences.

All boundary-domain covering decisions and every no-solution/containment acceptance must have exact or interval witnesses. Timeouts, unvalidated point samples, and overlapping floating-point estimates are unresolved cells, not accepted coverage.

The Record's local no-quartet certificate must independently apply to every actual Hadamard in Rᵢ. It is irrelevant to the proof of (17), but necessary for using the final cover as an exclusion theorem. Conversely, a fixed point for a projected normal equation need not solve all Hadamard equations. For boundary coverage it is sufficient that every full solution is enclosed by that fixed-point calculation; the argument does not require a Hadamard to exist at every tangent parameter.

## 6. Assembly theorem

Assume:

1. MC1–MC5, the stated isolation of Tao, and full strict-domain formula validity.
2. Claim A: every positive local maximum lies in the seed-map orbit of a strict θ* of the exact form (6).
3. A finite family of Records satisfying (16), with W defined by (17).
4. [F] and [K*] lie in W, and W is invariant under conjugation. The handoff's additional transposition invariance is permitted but is not needed after (9).

Then W=X.

**Proof.** Let C be a connected component of S. Section 4 gives a maximum θC∈C. Claim A and (9) give [H+(θC)]=[K*]∈W. Section 3 makes H+(C) a connected subset of X. A connected set meeting a subset that is both open and closed cannot also meet its complement, so H+(C)⊂W. This holds for every component; hence H+(S)⊂W.

For any Hadamard H outside the Fourier and Tao classes, MC1 supplies a strict corner and MC2–MC5 give

\[
[H]=[H_+(\theta)]
\quad\text{or}\quad
[H]=[\overline{H_+(-\theta)}].
\]

Because −θ∈S, the first conclusion and conjugation invariance put H in W in either case. The Fourier class belongs to W by assumption. This proves W=X. If every Record also certifies the quartet exclusion on its entire region, every non-Tao class is excluded. Tao still requires the separately stipulated exclusion. ∎

The companion analytical proofs and their exact verifiers discharge the global critical-point census used in this theorem. The remaining computational obligation is an actual finite Record family with complete boundary and exclusion certificates. Its existence and successful verification are not supplied by the topology alone.

## 7. Stronger consequence: the non-Tao quotient is connected

Under the same MC inputs and the now-proved Claim A, the whole space

\[
X=(\mathcal H/\cong)\setminus\{[\mathrm{Tao}]\}
\]

is connected. Consequently, any **nonempty** finite Record union satisfying the boundary condition (16) covers X. In particular, it suffices to include [F]; a separate K* Record and symmetry closure of W are unnecessary for this strengthened form of the coverage theorem.

To prove this, let A be the positive-sheet image H+(S) in the quotient. Every connected component of S contains a positive local maximum. By (9), the image of each such component is connected and contains the same point [K*]. Hence their union A is connected. Its conjugate B=𝒞(A) is connected as well. Section 3 excludes Tao from both, and MC1–MC5 give

\[
X=A\cup B\cup\{[F]\}.
\tag{19}
\]

It remains to show [F] belongs to the closure of A and of B. An explicit sequence approaching it is supplied by the affine Fourier family

\[
H(t)=\begin{pmatrix}
F_3&F_3\\ F_3D(t)&-F_3D(t)
\end{pmatrix},\qquad
D(t)=\operatorname{diag}(1,e^{it},1).
\tag{20}
\]

Block multiplication verifies H(t)H(t)*=6I. At t=0, this is F₂⊗F₃, equivalent to F₆ by row and column permutations. Explicitly the row index 3p+2a and column index 3q+4b modulo six give the entry (−1)^{pq}ω^{ab}.

The four-entry cross ratio formed from the first and fourth rows and the first and second columns of H(t) is e^{it}. Row/column phases cancel from such ratios and permutations only rearrange their finite set. Every such ratio for F₆ is a sixth root of unity; every such ratio for Tao is a third root. Thus H(t) belongs to neither exceptional class for 0<t<π/3.

Take t→0 through such positive values. By (19), each [H(t)] lies in A or B, so a subsequence approaches [F] from one of them. Conjugation exchanges A and B and fixes [F], because F̄₆ is a row permutation of F₆. Therefore [F] belongs to the closure of both A and B.

A connected set together with one of its closure points is connected. Thus A∪{[F]} and B∪{[F]} are connected sets with the common point [F]. Their union is X by (19), proving connectedness. A nonempty subset of a connected space that is both open and closed is the whole space, which proves the strengthened coverage criterion.

## Appendix: local-maximum transfer through the trace map

This lemma supports an alternative analytical proof of Claim A; it is independent of the atlas argument.

Let

\[
\tau(\alpha,\beta)
=e^{i\alpha}+e^{i\beta}+e^{-i(\alpha+\beta)},
\qquad D=\tau(\mathbb T^2).
\]

The map τ:T²→D is open for the relative topology on D, including at all boundary folds and cusps. To prove this, identify T² with the space of ordered triples (λ₁,λ₂,λ₃) of unit phases whose product is one. Their trace z determines their unordered multiset: they are exactly the roots, with multiplicities, of

\[
t^3-zt^2+\bar z\,t-1=0.
\]

Indeed, the second elementary symmetric function is λ₁λ₂λ₃(λ̄₁+λ̄₂+λ̄₃)=z̄. Thus the fibers of τ are precisely the orbits of the finite permutation group S₃. The induced continuous bijection T²/S₃→D is a homeomorphism because its source is compact and its target is Hausdorff. The finite-group quotient map is open: the inverse image of the image of any open set O is the finite union of the translates of O. This proves the claim without excluding repeated-root triples.

The product map τ×τ:T⁴→D² is open as well. If an invariant factorization is obtained by first applying a local angle coordinate map with nonsingular real Jacobian and then applying τ×τ, its resulting parameter map is locally open. A finite torus covering is one admissible first coordinate map. Cube-root normalizations must be handled by locally fixed branches; the nonsingularity of the underlying local angle change must actually be checked.

For any continuous open map p:M→Y and any function f:Y→R, a point x is a local maximum of f∘p if and only if p(x) is a local maximum of f relative to Y. The forward direction uses the open neighborhood p(O), where O is a neighborhood witnessing the maximum of f∘p. The reverse direction uses continuity of p. Therefore a correctly factored trace-product reduction loses no local maxima at folds or cusps, provided maxima of the reduced function are interpreted relative to the closed trace image, not as unconstrained maxima in the ambient complex plane.
