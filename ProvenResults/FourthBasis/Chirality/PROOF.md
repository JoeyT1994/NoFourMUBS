# Four-basis compatibility through oriented fermionic correlations

> Imported 26 September 2026 from the archived
> `04_algebraiccoreV2/fermionic_fock/four_basis_chirality/PROOF.md`
> (19 September 2026), unchanged apart from links. Section 1 mentions the
> archived V2 product-regular reconstruction of X. The theorems in Sections
> 2–5 use only a complete physical MUB triple I, H/sqrt(6), K.

**Theorem, with exact controls.** A balanced rank-two occupied plane splits
into two orthogonal common unbiased rays exactly when its compressed
three-point chiralities all vanish. On the retained order-six domain the
split is unique up to exchange. This gives a complete two-plane criterion
for a fourth basis. It does not prove that its solution set is empty.

## 1. Keep the actual bases and phases

Start with a complete physical MUB triple

\[
 U_0=I_6,\qquad U_1=H(a,b,c,d)/\sqrt6,\qquad U_2=K=[X,U].
\]

Here X has the current product-regular reconstruction and actual alignment;
the missing half U must complete the SAME third basis, including its
H-unbiasedness equations. Y=H†X/sqrt(6) stays derived. This theorem does
not replace a three-ray fragment by a complete mate without those tests.
Let P_\alpha=u_\alpha u_\alpha† run over the 18 rays in U_0,U_1,U_2.

Let Q be a Hermitian projector with

\[
 Q^2=Q,\quad \operatorname{Tr}Q=2,\quad
 \operatorname{Tr}(QP_\alpha)=\tfrac13\quad(\text{all }\alpha).       \tag{1}
\]

If a fourth basis L exists, ANY two of its columns give such a Q:
Q=\ell_p\ell_p†+\ell_q\ell_q†. No independent relative phase or frame
of Q is being assumed. It is the one-particle correlation matrix of the
two-fermion Slater state \ell_p∧\ell_q in the same six-mode Fock space.
The two-particle sector is used here; a Kramers argument is not assumed.

Define the oriented exchange correlation

\[
 c_{\alpha\beta\gamma}(Q)
 =\operatorname{Im}\operatorname{Tr}(QP_\alpha QP_\beta QP_\gamma)
 =\operatorname{Im}\big[
 (u_\alpha†Qu_\beta)(u_\beta†Qu_\gamma)(u_\gamma†Qu_\alpha)\big]. \tag{2}
\]

These are cycles of the Gaussian two-point contractions. They retain
their complex phases; they are not products of transition probabilities.
Individual ray gauges cancel around the cycle. For a fourth-basis pair,

\[
 u_\alpha†Qu_\beta
 =\sum_{r\in\{p,q\}}(u_\alpha†\ell_r)(\ell_r†u_\beta),             \tag{3}
\]

so taking one ray from each of I,H,K explicitly couples all four bases.
All cycles, including repeated basis labels, enter the complete criterion.
The subset with one ray from each known basis is a necessity; sufficiency
below is not claimed for that subset alone.

## 2. Exact common-pair criterion

**Theorem.** Under (1), Q splits into two orthogonal rank-one projectors
P_+,P_- whose rays are unbiased to ALL THREE known bases if and only if

\[
 c_{\alpha\beta\gamma}(Q)=0\quad\text{for all }\alpha,\beta,\gamma. \tag{4}
\]

Proof. Choose any isometry V:C²→C⁶ with VV†=Q, solely to prove the
statement; it is not a physical reframe of H. Put q_\alpha=V†P_\alpha V.
It has rank one and trace 1/3, so in Pauli coordinates

\[
 q_\alpha=I_2/6+r_\alpha\cdot\sigma,\qquad |r_\alpha|=1/6.
\]

Pauli multiplication gives

\[
 c_{\alpha\beta\gamma}=2r_\alpha\cdot(r_\beta\times r_\gamma).      \tag{5}
\]

Thus (4) is equivalent to all r_\alpha lying in a plane through the
origin. A unit normal n then gives J=V(n·σ)V†, with J²=Q, Tr J=0,
and Tr(JP_\alpha)=0. Hence

\[
 P_\pm=(Q\pm J)/2,\qquad
 \operatorname{Tr}(P_\pm P_\alpha)=1/6.                           \tag{6}
\]

Conversely any such split yields J=P_+−P_- and a normal to every
r_\alpha. This proves (4). The argument works in general dimension d
with 1/3 replaced by 2/d and 1/6 by 1/d.

## 3. A single nonnegative polynomial, without a choice of V

Set T_\alpha=QP_\alpha Q−Q/6 and form the real 18-by-18 Gram matrix

\[
 G_{\alpha\beta}(Q)
 =\operatorname{Tr}(T_\alpha T_\beta)
 =\operatorname{Tr}(QP_\alpha QP_\beta)-1/18.                     \tag{7}
\]

It is positive semidefinite and has rank at most three. If
S=\sum_\alpha r_\alpha r_\alpha^t, its nonzero eigenvalues are those
of 2S. Cauchy–Binet and (5) give

\[
 \boxed{\quad e_3(G)
 =\frac{(\operatorname{Tr}G)^3-3\operatorname{Tr}G\operatorname{Tr}G^2
             +2\operatorname{Tr}G^3}{6}
 =8\det S
 =2\sum_{\alpha<\beta<\gamma}c_{\alpha\beta\gamma}^2.
 \quad}                                                       \tag{8}
\]

Consequently the extra refinement condition is the ONE equation
e_3(G(Q))=0, in addition to (1). It is a degree-at-most-six real
polynomial in Q with coefficients computed from the actual known rays.
Trace G=1 in order six. The individual cubic equations (4) may instead
be used; over the physical real locus their sum of squares is equivalent.
There is no such equivalence asserted after arbitrary complexification.

This is stronger than a generic PSD condition: G is automatically PSD,
whereas its required rank drop from three to two is not automatic.

## 4. No-zero3 removes the degenerate refinement freedom

**Theorem.** If the actual H edge has no zero ordinary three-minor,
then rank G≥2 for every Q satisfying (1). Therefore any solution of
(4) has rank G=2 and its pair (6) is unique up to exchange.

Proof. Rank zero is impossible because |r_\alpha|=1/6. If rank is one,
all r_\alpha=±n/6. An eigenvector v_+ of n·σ in ran Q then has
overlap probabilities either 1/3 or zero with every ray of each known
basis. Normalization gives exactly three nonzero overlaps in I, and
exactly three in H/sqrt(6). Thus v_+ lies both in a three-coordinate
subspace with support A and in the span of three H columns with labels B.
Its nonzero expansion coefficients give a kernel vector of H_{A^c,B}.
That ordinary three-minor is zero, a contradiction. This uses the actual
H edge, with no change of sheet or independent reordering of another edge.

Recovery can be performed without V. Choose any two linearly independent
T_\alpha,T_\beta and set

\[
 J_0=i[T_\alpha,T_\beta],\qquad
 \kappa=\tfrac12\operatorname{Tr}(J_0^2)>0,\qquad
 J=J_0/\sqrt\kappa.                                            \tag{9}
\]

Then J_0²=κQ and (6) recovers the SAME pair. The choice of sign only
exchanges its rays. The finite choices of (α,β) cover rank two; a zero
κ for one choice is not an exclusion. No free internal phase survives
once Q is given on this retained locus. This does not eliminate Q itself.

## 5. Complete fourth-basis criterion

A fourth basis exists exactly when there are three mutually orthogonal
rank-two projectors Q_1,Q_2,Q_3 summing to I, each satisfying (1) and
(4). Necessity groups a fourth basis into three pairs. For sufficiency,
apply (6) in each orthogonal plane. The resulting six rays are an
orthonormal basis unbiased to I,H,K. They are one shared physical L.

It is enough to use TWO variables Q_1,Q_2, impose Q_1Q_2=0, and define
Q_3=I−Q_1−Q_2. Projector rank two and balance of Q_3 then follow.
All THREE chirality conditions remain mandatory. In the retained domain
each plane's pair is uniquely recovered by (9), up to exchanges and ray
phases. A known six-ray L has 15 unordered pair partitions; none is
discarded or independently reframed.

This is an exact refinement formulation, not a proof of nonexistence.
The remaining global obligation is to exclude these two compatible
projectors with all three zero-chirality conditions, or construct a quartet.
Excluding every single Q would be stronger than necessary and is not
assumed. A failure to find one is not a proof.

## 6. Exact separation from the weaker Gaussian conditions

Let Z_2,X_2,Y_2 denote the usual qubit bases, and let F be the normalized
order-three Fourier matrix with ω=exp(2πi/3). The four qutrit bases
I_3,F,A=diag(1,ω,ω)F,B=diag(1,ω²,ω²)F are mutually unbiased.
Use the actual order-six triple

\[
 I=Z_2\otimes I_3,\quad H/\sqrt6=X_2\otimes F,\quad K=Y_2\otimes A.
\]

For each column b_j of B take Q_j=I_2⊗b_jb_j†. These are three
orthogonal rank-two projectors summing to I. ALL balanced occupation
conditions (1) hold. Nevertheless, on each plane the compressed Bloch
vectors lie on the three different Pauli axes, with

\[
 S=I_3/6,\qquad \det S=1/216,\qquad e_3(G)=1/27>0.
\]

Choosing the first ray in each known basis gives c=1/108. Each TWO
known bases use only two axes and admit a refinement of the same Q;
ALL THREE simultaneously do not. Thus separate refinements cannot be
glued by independently choosing their internal frames.

This example is an exact actual MUB triple and a balanced Gaussian
control, but its edges have zero3/F3. It establishes strictness over that
weaker unrestricted relaxation, NOT independence on the retained no-zero3
seed domain and NOT a new retained-domain exclusion.

The verifier also checks an exact order-twelve quartet. Its selected
fourth-basis pair gives rank G=2, zero chirality and recovery of the same
two rank-one projectors up to exchange. The criterion is not incorrectly
excluding known higher-dimensional quartets.

## 7. Relation to existing work and verification

The principle that balanced projectors need a common-ray refinement was
already essential in the V2 projector control (archive `04_algebraiccoreV2/projector_seed_test/PROOF.md`)
and the earlier balanced-extension analysis (archive `03_algebraic/core/count_six_attack/balanced_extension/PROOF.md`).
The result here is an explicit rank-two specialization: a cubic oriented
correlation test, a sixth-degree nonnegative scalar, and a unique
commutator reconstruction under the actual no-zero3 guard. No literature
novelty is claimed. It is not the older mixed Cartan completeness identity.

It is not an algebraically independent equation after all fourth-basis
flatness equations have been imposed: it follows from them. Its value is
that it expresses the missing refinement using the occupied plane alone,
and admits the precise converse above. This eliminates internal pair
choices, not H's seeds or the full fourth-basis existence problem.

Substitute the original reconstructed H,K entries into every P_\alpha.
Equivalently, if testing an original L candidate, substitute its actual
column-pair projectors into (2). Retain all product-regular guards,
original alignment, failed-frame owners and root collisions. Recovered
quartets must obey the original retained-domain edge conditions; they
are not replaced by conditions on arbitrary compressed matrices.

[verify.py](verify.py) uses exact symbolic and cyclotomic arithmetic for
(5), (8), the full order-six control and the order-twelve physical check.
The general proofs, including the no-zero3 argument, are given above.
