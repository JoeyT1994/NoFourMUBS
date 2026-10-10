# Step 2 blueprint: what can be proved, and the exact remaining geometry

## 1. Scope and proof boundary

The recommended endpoint is the alternative explicitly allowed in A2–A4:

```lean
∀ H, IsHadamard H → ¬ IsTaoOrbit H →
  ∃ G K, InGamma H G ∧ Ball K ∧ Equivalent G K
```

This is exactly `NoFourMUBs.Inputs.covered`. The route below proves it from
explicit reconstruction and certificate hypotheses; it does not replace
those hypotheses with an axiom saying that the quotient is connected.

The topological arguments in §§3–6 are complete. Section 7 gives a complete
paper proof of the **weaker uniqueness theorem actually needed**, using
identities on existing physical sides and upstream forced completion. The
remaining existence and global density obligations are isolated in §§8–9.
They are not consequences of the existing Lean classification. In
particular, this document does **not** claim to satisfy the request for a
complete proof of every new geometric statement: a full proof of global
density is still missing, and the source justification for uniform matching
necessity has a gap described in §10.

The authoritative distinction between compiled Lean, checked computations,
paper arguments and open obligations is in `STATUS.md`. Files containing an
explicit `def ... : Prop` state obligations; their existence is not a proof
of the obligation.

## 2. Concrete definitions

Use upstream's `Hadamard6.Mat6`, `IsHadamard`, `Equivalent`, `Had6`,
`had6EquivalenceSetoid`, `HadamardClass6` and `TaoClass`. Write

\[
\mathcal H=\{H:\mathrm{IsHadamard}(H)\},\qquad
Q=\mathcal H/\mathrm{Equivalent},\qquad
X=\{q\in Q:\neg\mathrm{TaoClass}(q)\}.
\]

The topology is the usual finite matrix topology on \(\mathcal H\) and its
quotient topology on \(Q\). No unrelated topology is introduced.

Let \(P=\mathbb T^4\), implemented as `Fin 4 → Circle`, and

\[
E(p)=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}.
\]

For \(G_h=6I-EE^*\), put

\[
s=-(1+a+b),\quad t=-(1+c+d),\quad
r=-(1+c\bar a+d\bar b),
\]

\[
X_0=|s|^2,\quad Y_0=|t|^2,\quad Z_0=|r|^2,
\quad p_0=X_0+Y_0+Z_0,\quad J=2\Re(sr\bar t),
\]

\[
g=27-3p_0+J,\qquad \eta=9-p_0+J,
\]

\[
\chi=X_0Y_0+X_0Z_0+Y_0Z_0-X_0Y_0Z_0
 -(p_0-9)(p_0-18)+(p_0-15)J,
\qquad R=4g^2\eta-\chi^2.
\]

Define \(S=\{p:R(p)>0\}\). These are the literal handoff invariants;
there are no additional product-regularity guards. In the Lean file their
names begin with `seed`, with `seedRho` denoting the complex correlation
\(r\), not the reconstruction's auxiliary real \(\rho\).

For a complex \(3\times3\) block define the polynomial

\[
T(B)=-\operatorname{perm}(B)\det(B)^2
       \prod_{i,j}\overline{B_{ij}}.
\tag{2.1}
\]

On phase blocks \(\prod\overline{B_{ij}}=1/\prod B_{ij}\), so for
invertible \(B\), \(T(B)=|\det B|^2\Theta(B)\). Using \(T\)
avoids determinant denominators in the defining relation.

For \(H=\begin{psmallmatrix}E&B\\ C&D\end{psmallmatrix}\in\mathcal H\),
define \(\mathcal M_+(p,H)\) by full dephasing, the literal leading
corner \(E(p)\), and

\[
2T(B)=\chi(p)+i\sqrt{R(p)},\qquad
2T(C)=\chi(p)-i\sqrt{R(p)}.
\tag{2.2}
\]

There are three separate new geometric predicates:

1. **L1 / `MatchedExistence`:** every \(p\in S\) has an
   \(H\in\mathcal H\) satisfying (2.2).
2. **L2 / `MatchedUniqueness`:** two such \(H,K\) at the same seed
   satisfy `Equivalent H K`.
3. **D / `MatchedDensityReach`:** every non-Tao class lies in the
   closure of the classes in (2.2), their conjugates and the Fourier class.

Each is a `def ... : Prop` in `lean/Step2Statements.lean`. The stronger
`MatchedExactReach` is also stated, and its implication to D is proved.

## 3. Compact matrix fibres and a closed matched relation

### Lemma 3.1 — compactness of the physical matrix space

The set of phases \(\{z\in\mathbb C:|z|^2=1\}\) is the unit circle,
hence compact. The set of phase matrices is its finite 36-fold product.
The equation \(HH^*=6I\) is closed because multiplication and conjugate
transpose are continuous. Its intersection with the phase matrices is
therefore compact. The dephased locus is also a closed subset, although
the Lean implementation keeps full \(\mathcal H\) as the compact factor
and puts dephasing into the relation.

**Mathlib interfaces:** `isCompact_sphere`, `IsCompact.matrix`,
`isClosed_eq`, `Continuous.matrix_mul`, `Continuous.matrix_conjTranspose`,
`IsCompact.of_isClosed_subset`, and `isCompact_iff_compactSpace`.

**Lean implementation:** `NoFourMUBs.Step2Topology.isCompact_isHadamard`
and its `had6CompactSpace` instance in `QuotientTopology.lean`.

### Lemma 3.2 — continuity of the quotient projection

The map \(q:\mathcal H\to Q\) is continuous by the definition of the
quotient topology. It is surjective, and \(Q\) is compact as a continuous
image of \(\mathcal H\).

**Mathlib interfaces:** `continuous_quotient_mk'`,
`isQuotientMap_quotient_mk'`, `Quotient.mk'_surjective`, and the quotient
compact-space instance. Upstream's `had6EquivalenceSetoid` uses the already
proved `equivalent_refl`, `equivalent_symm`, and `equivalent_trans`.

### Lemma 3.3 — closedness of the matched relation

The corner entries, permanent, determinant and signature (2.1) are
continuous. The real function \(R\) is continuous. Real square root is
continuous on \(\mathbb R\), so it is in particular continuous on the
strict domain. Dephasing and (2.2) are equalities of continuous functions.
The relation is consequently closed in \(S\times\mathcal H\).

**Mathlib interfaces:** finite-sum and finite-product continuity,
`Continuous.matrix_det`, continuity of complex conjugation and real
square root, `isClosed_eq`, finite intersections and `isClosed_iInter`.

**Lean implementation:** `continuous_seedR`, `continuous_sideSignature`
and `isClosed_matched` in `Step2Statements.lean`.

No complex square-root branch, cube-root branch, orientation choice,
principal argument or nonsingular chart is needed for this lemma.

## 4. Continuity from L1 and L2

### Lemma 4.1 — compact closed-relation continuity

Let \(P_0,D_0,Q_0\) be topological spaces with \(D_0\) compact. Let
\(M\subseteq P_0\times D_0\) be closed, and \(q_0:D_0\to Q_0\)
continuous. Suppose every fibre of \(M\) is nonempty and all its members
have the same \(q_0\)-value. Define \(f(p)\) to be that value.
Then \(f\) is continuous.

**Proof.** Let \(F\subseteq Q_0\) be closed. By existence and uniqueness,

\[
f^{-1}(F)=\operatorname{pr}_{P_0}
 \bigl(M\cap (q_0\circ\operatorname{pr}_{D_0})^{-1}(F)\bigr).
\]

The set being projected is closed. Projection along a compact factor is
closed. Thus every closed-set preimage is closed, proving continuity. ∎

The theorem does not require \(Q_0\) to be Hausdorff and does not assume
continuity of the chosen representative in \(D_0\).

**Mathlib interfaces:** `continuous_iff_isClosed`,
`isClosedMap_fst_of_compactSpace`, and `IsClosed.preimage`.

**Lean implementations:**
`Step2.TopologyCore.continuous_of_closed_relation_compact` and
`continuous_relationValue`.

### Corollary 4.2 — quotient continuity of the positive matched sheet

L1 supplies a choice of matched matrix over each strict seed. L2 makes
its quotient class independent of that choice. Lemmas 3.1–3.3 and 4.1
give a continuous map \(f:S\to Q\).

**Lean implementation:** `continuous_matchedClassMap`. This is a
replacement proof of Claim C from the weaker local hypotheses. It proves
continuity through auxiliary radical cuts because the argument never
introduces those cuts.

## 5. Compact-superlevel propagation

### Lemma 5.1 — every clopen positive superlevel part containing the maxima is full

Let \(P_0\) be compact, \(r:P_0\to\mathbb R\) continuous and
\(S_0=\{r>0\}\). Let \(U\) be clopen in \(S_0\). If every
positive ambient local maximum of \(r\) belongs to \(U\), then
\(U=S_0\).

**Proof.**

1. Suppose \(B=S_0\setminus U\ne\varnothing\). Since \(S_0\) is
   open and \(B\) is relatively open, \(B\) is open in \(P_0\).
2. The closure \(\overline B\) is compact. Choose \(b\) maximizing
   \(r\) on it. A point in \(B\) has positive value, so \(r(b)>0\).
3. Since \(B\) is relatively closed in \(S_0\),
   \(\overline B\cap S_0=B\). Hence \(b\in B\).
4. The open set \(B\) is a neighborhood of \(b\), and \(r(b)\)
   dominates \(r\) on its closure. Thus \(b\) is a positive local
   maximum on the ambient space \(P_0\).
5. The hypothesis puts \(b\) in \(U\), contradicting \(b\in B\).

No connectedness or local connectedness assumption on \(P_0\) occurs. ∎

**Mathlib interfaces:** `IsOpen.isOpenMap_subtype_val`,
`IsInducing.subtypeVal.isClosed_iff'`, `IsClosed.isCompact`,
`IsCompact.exists_isMaxOn`, and `IsMaxOn.isLocalMax`.

**Lean implementation:** `Step2.TopologyCore.superlevel_clopen_eq_univ`.

### Corollary 5.2 — a finite maximum census supplies enough anchors

Let \(f:S\to Q\) be the map from §4 and \(W\subseteq Q\) clopen.
Suppose a finite set \(M\subseteq S\) contains all positive local
maxima of \(R\), and \(f(m)\in W\) for every \(m\in M\).
Applying Lemma 5.1 to \(f^{-1}(W)\) gives \(f(S)\subseteq W\).

Step 1's census permits the 18 distinct maximum seeds. The independent
exact orbit check in `certificates/verify_topology.py` verifies that the
stated 144 transformations of the exact seed produce 18 distinct seeds.
That finite enumeration does **not** replace the global maximum census.

The main Lean theorem takes the census and the finite anchor membership
certificates separately. It does not infer anchors from the fact that one
unrelated Record contains \(F_6\).

### Lemma 5.3 — an optional reduction to one maximum anchor

The exact orbit enumeration proves that the 18 displayed seeds are already
the pure row/column permutation and re-dephasing orbit of

\[
E_* = \begin{pmatrix}1&1&1\\1&x&x^2\\1&x^{-1}&x^{-2}\end{pmatrix},
\qquad x=(1+i\sqrt{15})/4.
\]

For a unit-entry matrix put
\(\operatorname{deph}(M)_{ij}=M_{ij}M_{00}/(M_{i0}M_{0j})\).
Every denominator is nonzero. For \(\sigma,\tau\in S_3\), extend the
permutations to the six indices by fixing the last three. If \(H\) is
positive matched at \(E\), permute and globally dephase it to obtain
\(H'\). It is a dephased Hadamard equivalent to \(H\), with leading
corner exactly \(E'=\operatorname{deph}(P_\sigma E P_\tau)\).

For phase diagonal matrices and permutation matrices,

\[
T(D_1 P Y Q D_2)=T(Y).
\]

For example, row phases multiply the permanent and squared determinant
by \((\prod r_i)^3\); the product of conjugate entries contributes
\((\prod\bar r_i)^3\), which cancels it. Column phases cancel in the
same way, and permutation signs disappear upon squaring the determinant.
Each transformed side has precisely this form. Thus its two signatures
are unchanged.

Also \(E'=L E N\) for unitary monomial matrices \(L,N\), so
\(G_h'=L G_h L^*\). This permutes \(X_0,Y_0,Z_0\). Diagonal phases
cancel around the triangle product defining \(J\), and a row permutation
preserves or conjugates that product. Hence \(J,g,\eta,\chi,R\) are
unchanged. The positive matched equations (2.2) still hold, with the same
signs. This proves the restricted transport lemma without the transpose
and conjugation cases of Claim B.

Consequently one certified physical positive matched witness at \(E_*\)
transports to a witness at each of the 18 seeds. L2 identifies any other
matched witness there with that class. Since the covered predicate is
equivalence invariant, **one maximum-anchor membership certificate is
enough**, in addition to the Fourier anchor, once Step 1 identifies every
positive local maximum with this orbit.

This is a paper proof with its signature and finite-orbit algebra checked
by `certificates/verify_topology.py`. The restricted transport lemma has
not been formalized in this return: the compiled assembly retains the
general `MaximumAnchorCertificate Ball anchors` input, which this lemma
would discharge from the single concrete maximum anchor. It does not
infer that anchor's membership from the Fourier certificate.

## 6. Closing the exact `Inputs.covered` implication

Let `CoveredMatrix Ball H` mean

```lean
∃ G K, InGamma H G ∧ Ball K ∧ Equivalent G K
```

### Lemma 6.1 — the predicate descends to the quotient

If \(H\sim J\), applying the same member of
\(\Gamma=\{1,\mathcal C,\mathcal T,\mathcal C\mathcal T\}\)
to both preserves equivalence. Composing with an existing equivalence
from the transformed \(J\) to a matrix in `Ball` gives the desired
witness for \(H\). The converse uses symmetry of equivalence. Thus
`CoveredClass` is a well-defined quotient predicate.

The same \(\Gamma\)-saturation makes it invariant under conjugation.
These are explicit algebraic proofs in `Step2Statements.lean`; no
continuity or classification assumption is used.

### Lemma 6.2 — closedness propagates coverage from a dense subset

If \(A\subseteq W\) and \(W\) is closed, then
\(\overline A\subseteq W\). This is `closure_minimal` in Mathlib.

### Theorem 6.3 — direct coverage

Assume L1, L2, D, a finite maximum census, a clopen covered-class set,
matched anchor membership at every maximum in the census, and Fourier
anchor membership. Then `Inputs.covered` holds.

**Proof.** §4 gives continuity of \(f\). §5 gives
\(f(S)\subseteq W\). Conjugation saturation gives
\(\mathcal C(f(S))\subseteq W\), and the Fourier anchor puts
\([F_6]\) in \(W\). Lemma 6.2 and D give \(X\subseteq W\).
Unfolding the quotient predicate at an arbitrary physical \(H\) is
exactly the displayed `covered` statement. ∎

**Lean implementation:** `NoFourMUBs.Step2.coverage_of_matched_density`.

No sheet-parity theorem, opposite-corner transport, Tao-isolation theorem,
or joining family is used in this implication. The two-sided formal
classification remains the source of the concrete objects and useful
algebra; it does not prove D.

### Where the Record hypotheses come from

First take the finite Γ-closure of the Record regions. For this finite
family of compact regions, quotient images are compact.
The quotient is Hausdorff because the equivalence relation comes from a
continuous action of the compact phase group and finite permutation groups
on the compact matrix space. Thus these images are closed. A direct proof
is to take the compact image of `(group element, matrix)` under
\((g,H)\mapsto(H,gH)\); it is the equivalence relation, hence closed.
The quotient of a compact Hausdorff space by a closed equivalence relation
is Hausdorff.

Local entrywise logarithms and the horizontal projection show that the
phase-gauge saturation of the interior of a horizontal Record region is
open. Permutation saturation remains open. If **every physical boundary
matrix** transfers into a target interior after a member of \(\Gamma\),
the finite Γ-saturated union of closed Record images equals the corresponding
Γ-saturated union of open interiors, so it is clopen in the full quotient.

This is the boundary hypothesis actually printed in `MINIMAL_PROOF.md`.
A boundary checker restricted to non-Tao matrices would give a different,
weaker premise. `RecordClopen` deliberately records the full-quotient
version. Its derivation from an actual numerical Record certificate is
not implemented in this handoff; that remains the certificate layer.

## 7. Complete paper proof of the weaker matched uniqueness theorem L2

This proof uses only identities on **already existing physical sides**.
It does not use arbitrary-seed side existence, regular-seed physicality,
global product-regular reach, nonmatched exclusion or connectedness.

### Lemma 7.1 — strictness makes actual sides invertible

Let \(H\) lie in the matched fibre at a strict seed, and let \(B\) be its
normalized horizontal side. If \(\det B=0\), definition (2.1) gives
\(T(B)=0\), contradicting the nonzero imaginary part in (2.2), since
\(\sqrt R>0\). Hence \(B\) is invertible. The same argument applies
to \(C\).

The physical Gram equation gives

\[
g=\det(6I-EE^*)=|\det B|^2>0.
\tag{7.1}
\]

The vertical Gram has the same determinant, either by
\(\det(6I-E^*E)=\det(6I-EE^*)\) or by the explicit corner identity.
Thus (2.2) yields the fixed values
\(\Theta(B)=z_+\) and \(\Theta(C)=\bar z_+\).
This proof only uses the matched relation and the actual Gram equations;
it does not need the stronger universal identity expressing \(R\) as the
square of a side signature's imaginary part.

### Lemma 7.2 — a Gram matrix and nonreal sheet label determine phase invariants

Write an actual normalized side as \(B=(1;x;y)\), with
\(u=\prod x_j\), \(v=\prod y_j\), determinant \(h\) and
permanent \(\pi\). Define

\[
\lambda_0=-uv\bar h/h,\quad
\lambda_1=\lambda_0/u,\quad
\lambda_2=\lambda_0/v.
\]

For the Gram quantities \(s,t,r\), set

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-|r|^2)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-|s|^2)\bar r\bar t,
\end{aligned}
\]

and \((c_0,c_1,c_2)=(9-|r|^2,9-|t|^2,9-|s|^2)\).
The three actual-side Laurent identities are

\[
h^2=uvc_0\bar\pi-uv\overline{P_0},\quad
h^2=uvc_1\bar\pi-v\overline{P_1},\quad
h^2=uvc_2\bar\pi-u\overline{P_2}.
\]

They imply

\[
\lambda_j\overline{P_j}=g+c_j\bar z,
\quad u=\lambda_0/\lambda_1,\quad
v=\lambda_0/\lambda_2,\quad \pi=z\lambda_0.
\tag{7.2}
\]

Since \(g>0\), \(c_j\) is real and \(z\) is nonreal,
\(g+c_j\bar z\ne0\): if it vanished, the imaginary part would force
\(c_j=0\), and the real part would force \(g=0\). Consequently all
\(P_j\ne0\), and the \(\lambda_j,u,v,\pi\) in (7.2) depend only
on the fixed Gram and sheet label.

**Certificate:** the three Laurent equalities are verified exactly in the
new standalone `certificates/verify_l2_identities.py`, over six independent
unit phase variables. The original `verify_side_fiber.py` was also replayed.
The full integer coefficient arrays and explicit cyclotomic cofactors for
all twelve identities in this section are supplied in
`certificates/l2_polynomial_certificates.json` and checked by
`certificates/verify_l2_polynomial_certificates.py`.

### Lemma 7.3 — Fourier reconstruction leaves only a column permutation

Let \(\omega^2+\omega+1=0\). Expand the last two rows of an actual side:

\[
x_j=\mu+A\omega^j+B_1\omega^{-j},\qquad
y_j=\nu+C_1\omega^j+D_1\omega^{-j}.
\]

Here \(\mu=s/3\) and \(\nu=t/3\). Set
\(n=1-|\mu|^2\), \(k=r/3-\nu\bar\mu\),
\(\alpha=\mu^2-u\bar\mu\), \(\gamma=2\mu\nu-z\lambda_0/3\)
and \(\Delta=AD_1-B_1C_1\). Direct phase/Fourier identities give

\[
\alpha=AB_1,\quad \gamma=AD_1+B_1C_1,\quad
n=|A|^2+|B_1|^2,\quad
k=C_1\bar A+D_1\overline{B_1},
\]

\[
h^2=-27\Delta^2,\quad
n\gamma-2\alpha k=(|A|^2-|B_1|^2)\Delta,
\]

\[
A^3=u|A|^2+\mu AB_1,\quad
nC_1=Ak-\overline{B_1}\Delta,\quad
nD_1=B_1k+\bar A\Delta.
\tag{7.3}
\]

These nine identities are the exact Fourier checks in the new standalone
`certificates/verify_l2_identities.py` and the original
`verify_side_fiber.py`. Invertibility gives \(\Delta\ne0\), and
\(n>0\). The data in Lemma 7.2 fix

\[
\Delta^2=\frac g{27}\frac{\lambda_0}{\lambda_1\lambda_2}.
\]

A column reflection \(j\mapsto-j\) interchanges the nonconstant
Fourier coefficients, changing \(\Delta\) to \(-\Delta\).
Define

\[
d_F=\frac{27}{g}(n\gamma-2\alpha k)\overline\Delta.
\]

Since \(|\Delta|^2=g/27\), (7.3) gives
\(d_F=|A|^2-|B_1|^2\), so reversing \(\Delta\) reverses \(d_F\).
Use it to arrange \(|A|\ge|B_1|\). Then
\(\rho=|A|^2\ge n/2>0\). The root of the displayed quadratic is fixed
by this orientation unless the two magnitudes are equal; in that tie a
reflection aligns the two candidate roots without changing the other
fixed data.

For the resulting common \(\Delta\), equations (7.3) recover

\[
\rho=\tfrac12(n+d_F),\quad q=B_1/\bar A=\alpha/\rho,
\quad \sigma=A^2/\bar A=u+\mu q,
\]

\[
C_1/A=(k-\Delta\bar q)/n,\quad
D_1/\bar A=(kq+\Delta)/n,
\quad (A/\bar A)^3=\sigma^2/\rho.
\]

All these expressions are fixed by \(G,z,\Delta\). The remaining
unit phase \(w=A/\bar A\) is one of the three roots of one nonzero
cube. Multiplying it by \(\omega\) cycles the three columns. Thus two
actual sides with the same Gram and sheet label differ by a column
permutation. This includes the equal-magnitude orientation tie.

### Lemma 7.4 — side uniqueness and forced completion give L2

Given two full matched matrices at the same seed, apply Lemma 7.3 to
their horizontal sides, and to the transposes of their vertical sides.
Permuting the last three columns and the last three rows aligns those
two sides while leaving the leading corner fixed. Both remaining blocks
satisfy the same orthogonality equation. Upstream's
`Hadamard6.eq_forcedD_of_row_cross` in `FiniteCornerFromBlocks.lean`
therefore identifies them with the same `forcedD`. The matrices are
equivalent. ∎

This is a full paper proof of L2, with all computational identities
explicitly stated and supported by the replayed exact verifier. Its
formalization is still an outstanding algebra module; the current Lean
assembly exposes it as `MatchedUniqueness` rather than hiding it.

For formalization, the most economical intermediate statement is
seed-independent: two normalized phase sides with the same Gram and the
same polynomial signature \(T\), with \(\Im T\ne0\), differ by a
column permutation. For this version define \(g=\det G\) from the
actual Gram and \(z=T/g\); no identity relating the four-seed invariants
\(R,\eta,\chi\) is needed. The matched equations then instantiate that
statement for the two actual sides of a full matrix.

## 8. L1: the exact missing physical-existence certificate

The direct side-fibre proof in `SIDE_FIBER.md` supplies sides at every
strict seed by a separate faithful algebraic embedding and specialization
argument. That proof goes beyond upstream, but does not use the two
unformalized product-regular theorems. What remains for full physical L1
is entrywise flatness of the forced fourth block.

There is a concrete replacement for the generic regular-seed-domain
import: two rational fourth-moment identities in four independent seeds.
They are given, with every moment entry and the symmetric-square circuit,
in `work/geometry_obligations.md`, equations (L-id). If both identities
are certified, then

\[
\sum_{i,j}(|D_{ij}|^2-1)^2
=\sum_{i,j}|D_{ij}|^4-9=0,
\]

and all nine moduli equal one. The first equality uses the forced block's
Gram equations, which give \(\sum|D_{ij}|^2=9\). It is therefore an
exact sum-of-squares proof of matched flatness once the two displayed
residuals are zero.

The task includes bounded attempts at this exact certificate. Their actual
outcome is recorded in `STATUS.md`; an uncompleted symbolic expansion is
not a verified zero identity. Merely running the Tao-only evaluations of
`verify_tao_pairings.py` would not prove the universal identities.

## 9. D: a global real-locus theorem remains necessary

Upstream proves that every class has a retained finite-corner output.
The parameter space still includes the final entrywise-modulus equations
for the forced block. Thus D cannot be inferred from a connected four-torus
base, finite side fibres, continuity of completion, or generic algebraic
dominance.

A minimal counterexample to that inference is the real algebraic set

\[
Y=\{(x,y,t):t(t-1)=0,\ xt=0\}.
\]

Projection to \((x,y)\) is surjective with one- or two-point fibres.
The component \(t=0\) dominates the full base. The separate line
\(x=0,t=1\) lies entirely above a guard-zero set and is not in the
closure of the dominating component. These assertions follow directly
from the two equations. This is a counterexample to a proposed general
topological inference; it is not a Hadamard counterexample.

One must prove that every physical non-Tao component or stratum attaches
to the matched image, or classify and exclude each possible extra piece.
Exact reach is sufficient; real density is weaker and also sufficient.
Complex Zariski density on one component is not enough.

No such global attachment theorem has been proved in this return. The
predicate `MatchedDensityReach` records it explicitly.

## 10. Source disagreement that must be resolved before importing MC4

The paragraph immediately before the main paper's
`eq:affine-minus-matching-main` asserts uniform necessity of the minus
matching for physical guarded completions. But the supplement's
`def:product-regularity` restatement explicitly calls a lift minus matched,
and its `thm:regular-seed-domain` restatement proves physicality of those
matched lifts. The proof of `prop:supp-generic-flatness` establishes the
minus norm identity and nonidentity of the plus residual using a single
exact specialization.

Those results do not establish that the plus residual has no exceptional
physical zeros when the product roots are distinct. The elementary
polynomial \(F_+(t)=t^2\), with guard identically one, demonstrates the
logical gap: nonidentity and nonvanishing at one regular point coexist
with a regular zero elsewhere. At ramification the two matchings coincide,
so any correct necessary-matching statement must handle that case
separately.

`NONMATCHED_EXCEPTIONS.md` uses the stronger necessity as PR-M in its
open-witness and global-reach steps. The missing necessity proof therefore
affects that dossier route to D, not the compactness lemmas in this return.
This is a gap in the supplied justification, not a proved false Hadamard
statement. The exact locations, definitions and limits of the evidence
are recorded in `GAP_MAP.md` and `work/geometry_obligations.md`.

There is also an import-accounting omission: `NONMATCHED_EXCEPTIONS.md`
imports `lem:supp-product-factor`, absent from the README's permitted-import
table. Its content must be proved or explicitly added to the dependency
register; it cannot be silently treated as part of an already checked
Lean theorem.

## 11. Verification assets and remaining implementation order

The new standalone exact checker `certificates/verify_topology.py` verifies
the signature symmetries, the 18-point maximum orbit enumeration, the full
indeterminate Fourier family and CRT equivalence, conjugate-Fourier
equivalence, and the rational horizontal projector. Its scope is recorded
in `topology_receipt.json`. The independent standalone
`certificates/verify_l2_identities.py` checks all twelve identities used in
§7 and six Fourier-inversion convention checks, with exact normal-form
hashes in `l2_identities_receipt.json`. The original reconstruction dossier was also
replayed; its successful algebra checks do not certify the missing PR-M
necessity or D.

For a certificate that does not rely on intermediate cyclotomic reduction,
`verify_l2_polynomial_certificates.py` independently expands the raw
expressions, clears rational denominators and Laurent monomials, and
checks each explicit identity
\(\operatorname{cleared}(\mathrm{lhs}-\mathrm{rhs})=(\omega^2+\omega+1)Q\).
The coefficient file contains both sides, the residual and every cofactor
\(Q\); the largest cofactor has 80 monomials. The default command reads
and validates that saved file without rewriting it.

Recommended order for continuing the proof:

1. Keep the compiled abstract topology and concrete conditional coverage
   theorem as the stable interface.
2. Formalize L2 using §7; it needs identities on actual physical sides only.
3. Finish a direct universal fourth-moment certificate for L1, or formalize
   the complete generic matched-flatness proof with all its additional
   mathematical inputs stated.
4. Prove D or exact reach. Resolve the uniform matching-necessity gap if
   following the existing nonmatched-exception argument.
5. Supply the Step 1 census and actual Record/anchor certificates to the
   explicit interfaces. The finite anchor census and the finite maximum
   membership tests are distinct obligations.

These steps identify what is still required to make `Inputs.covered`
unconditional. The final no-four-MUBs theorem additionally requires the
separate local and Tao exclusion inputs already present in `Inputs`.
