# Step 2 gap map against upstream commit 57b0302

## Scope and verdict

This is a source audit of the bundled `lean/upstream_hadamard6_formal/`, with declarations checked in their actual `.lean` files. All declaration names below are in namespace `Hadamard6`. The statements in code blocks are quoted from source, with proof bodies omitted. This document does not itself claim a fresh Lean build.

The classifications are:

- **(i)** The stated mathematical content is already proved in upstream Lean. Where a paper proposition is packaged differently, the exact proved constituent statements are given.
- **(ii)** A modest additional theorem follows from named upstream results and elementary algebra or standard topology. No substantial classification or reconstruction theorem is hidden in this category.
- **(iii)** The statement is not formalised upstream; a precise remaining obligation is stated.

**All five full MC statements, Claim B, and Claim C are (iii).** Category (iii) records formalization status: the existing formal classification is not a formal proof of those stronger reconstruction assertions. This is separate from the specific paper-proof gap in uniform matching necessity identified below. The explicit Fourier joining family is (ii). Five of the eleven individually listed paper imports have their required content in Lean; the six product-regular imports do not.

The crucial distinction is between a **finite corner**, whose actual candidate sets are nonempty, finite and invertible, and a **strict corner**, at which the particular four-seed discriminant is positive. Upstream proves the former for every Hadamard, including Fourier. It neither defines nor proves positivity of this reconstruction discriminant. It also does not identify its entire retained atlas with one connected parameter component.

## 1. Exact upstream vocabulary and the missing strict vocabulary

### 1.1 What the source actually defines

`Hadamard6/Basic.lean`:

```lean
def IsHadamard (H : Mat6) : Prop :=
  EntrywiseUnit H ∧
    H * Matrix.conjTranspose H = (6 : ℂ) • (1 : Mat6)

def Equivalent (H K : Mat6) : Prop :=
  ∃ (σ τ : Equiv.Perm I6) (r c : I6 → ℂ),
    (∀ i, Complex.normSq (r i) = 1) ∧
    (∀ j, Complex.normSq (c j) = 1) ∧
    ∀ i j, K i j = r i * H (σ i) (τ j) * c j
```

Here `Mat6 = Matrix (Fin 3 ⊕ Fin 3) (Fin 3 ⊕ Fin 3) ℂ`. `CornerData` contains the four phases `a,b,c,d`, with proofs that their `Complex.normSq` values are one; `p.matrix` is the literal dephased corner.

`Hadamard6/FiniteDilation.lean`:

```lean
def IsFiniteDilationCorner (E : Mat3) : Prop :=
  (invertibleHorizontalCandidates E).Nonempty ∧
  (invertibleVerticalCandidates E).Nonempty ∧
  (invertibleHorizontalCandidates E).Finite ∧
  (invertibleVerticalCandidates E).Finite

noncomputable def forcedD (E B C : Mat3) : Mat3 :=
  -C * Matrix.conjTranspose E * Matrix.conjTranspose (B⁻¹)

def Retained (E B C : Mat3) : Prop :=
  IsFiniteDilationCorner E ∧
  B ∈ invertibleHorizontalCandidates E ∧
  C ∈ invertibleVerticalCandidates E ∧
  EntrywiseUnit (forcedD E B C)

noncomputable def completion (E B C : Mat3) : Mat6 :=
  Matrix.fromBlocks E B C (forcedD E B C)

def InFiniteCornerAtlas (H : Mat6) : Prop :=
  ∃ (p : CornerData) (B C : Mat3),
    Retained p.matrix B C ∧ Equivalent H (completion p.matrix B C)
```

The finite-corner predicate does **not** require `IsUnit E.det`. The source expressly documents this distinction. Finiteness also does not give a canonical continuous enumeration of the fibres.

`Hadamard6/Blocks.lean`:

```lean
def HasFiniteCorner (H : Mat6) : Prop :=
  ∃ (p : CornerData) (B C D : Mat3),
    IsFiniteDilationCorner p.matrix ∧
    B ∈ invertibleHorizontalCandidates p.matrix ∧
    C ∈ invertibleVerticalCandidates p.matrix ∧
    EntrywiseUnit D ∧
    D = forcedD p.matrix B C ∧
    Equivalent H (Matrix.fromBlocks p.matrix B C D)

theorem inFiniteCornerAtlas_iff_hasFiniteCorner (H : Mat6) :
    InFiniteCornerAtlas H ↔ HasFiniteCorner H
```

`Hadamard6/TaoOrbit.lean`:

```lean
def IsTaoOrbit (H : Mat6) : Prop :=
  ∃ omega : ℂ, IsPrimitiveCubicPhase omega ∧ Equivalent H (taoMatrix omega)
```

`Hadamard6/HadamardQuotient.lean` defines

```lean
abbrev Had6 := {H : Mat6 // IsHadamard H}
abbrev HadamardClass6 := Quotient had6EquivalenceSetoid
```

and invariant predicates on this quotient. It does not add the quotient phase metric, a Hausdorffness theorem for that metric, continuity of reconstruction, or connectedness of the non-Tao locus. A generic Mathlib quotient topology can be installed; its identification with the metric in `MINIMAL_PROOF.md` is an additional argument.

### 1.2 Precise notation for the unformalised statements

For a `CornerData` value `p`, let `E = p.matrix` and

\[
G_h=6I-EE^*,\qquad G_v=6I-E^{\mathsf T}\bar E.
\]

For either Gram write

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix},
\quad X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,
\]

\[
P=X+Y+Z,\quad J=2\Re(sr\bar t),\quad W=XY+XZ+YZ-XYZ,
\]

\[
g=27-3P+J,\quad \eta=9-P+J,
\quad\chi=W-(P-9)(P-18)+(P-15)J,
\quad R=4g^2\eta-\chi^2.
\]

These definitions are from `reference/MinimalConstruction/RECONSTRUCTION.md`, §1. They are **new definitions**, not aliases for an upstream discriminant. Let `Strict p` mean `R(p)>0`, and let `S={p : CornerData | Strict p}` with its inherited four-torus topology. Let `F` be the Fourier representative, equivalently the appropriate fixed permutation of `affineFourierMatrix standardOmega 1 1`.

Write `HasStrictCorner H` for the new statement

\[
\exists(p:\mathrm{CornerData})(K:\mathrm{Mat6}),\quad
\mathrm{Equivalent}\ H\ K\ \land\ \mathrm{IsHadamard}\ K
\ \land\ \mathrm{IsDephased}\ K
\ \land\ \mathrm{toBlocks}_{11}K=p.\mathrm{matrix}
\ \land\ R(p)>0.
\]

The constructor `S(G,z)`, its auxiliary roots, the sheet maps `H₊,H₋`, and the invariant

\[
\Theta(X)=-\frac{\operatorname{perm}(X)\det(X)^2}
 {|\det X|^2\prod_{i,j}X_{ij}}
\]

also have no upstream definitions. Whenever they appear below, their precise formulas are those in `RECONSTRUCTION.md`, §§2–4, and `Proofs/SIDE_FIBER.md`.

## 2. MC1–MC5

| Ingredient | Classification | What upstream supplies | Exact missing content |
|---|---|---|---|
| MC1: strict-corner coverage, including Tao | **(iii)** | Every Hadamard has a finite corner. | `IsHadamard H → ¬ Equivalent H F → HasStrictCorner H`; equivalently the physical all-critical locus is precisely Fourier, after proving physical `R≥0`. |
| MC2: two side orbits and complete finite pairing at every strict seed | **(iii)** | Candidate-fibre definitions, invertibility from one candidate, forced completion, and retained soundness. | Existence of exactly two column-permutation orbits for each strict Gram, identification with `S(G,z₊)` and `S(G,z₋)`, and exhaustion by these explicit representatives. |
| MC3: all strict-domain divisors, side formulas and root permutations | **(iii)** | General Gram/determinant identities and finite matrix algebra. | Every division and radical in the literal strict constructor is valid on all `R>0`; both sides are flat with their prescribed Gram; allowed auxiliary root changes are permutations at fixed sheet. |
| MC4: both matched completions flat, all nonmatched exceptions Tao | **(iii)** | If a pair is already `Retained`, its completion is Hadamard; Tao itself is Hadamard and has a finite corner. | Automatic `Retained` for the two strict matched pairs; `IsTaoOrbit` for every strict flat nonmatched pair; complete exceptional pairing census. |
| MC5: global positive-sheet coverage and fixed-seed conjugation transport | **(iii)** | Equivalence is an equivalence relation; transpose invariance; finite-atlas coverage. | Global surjection by the literal `H₊`, sheet reversal at the opposite strict corner, and the fixed-seed identity `conj(H₋(p)) ~ H₊(conj p)`. |

### MC1 details

The relevant exact upstream declaration, `Hadamard6/PaperTheorem.lean`, is only

```lean
theorem paper_finite_corner_theorem
    {H : Mat6} (hH : IsHadamard H) : HasFiniteCorner H
```

Its proof routes a failed finite-corner search to Karlsson or Tao and uses internally proved finite-corner witnesses there. It has no `R`, no all-critical locus, and no Fourier exception. In particular it cannot be converted to MC1 by unfolding `HasFiniteCorner`.

The paper proof of MC1 is `Proofs/STRICT_CORNER_COVERAGE.md`. Its additional content includes the Laurent identity

\[
R(E)=4\bigl(\Im[\operatorname{perm}(B)\det(B)^2/\prod B]\bigr)^2,
\]

the complete critical-strip classification including denominator poles, two endpoint exclusions, Fourier-family routing and its all-corner critical census, and the fixed-row sum `Σ P=108`. None of these strict-discriminant results is proved by the upstream finite-corner endpoint. `GramInvariant.lean` proves cubic Gram identities, but does not supply this much stronger chain.

The part of Fourier routing which normalises all-Hadamard `3×3` blocks is available, as detailed under the permitted imports below. A geometric row-progression hypothesis giving membership in the *affine Fourier family*, with its specific all-corner `R=0` classification, must still be formalised. A theorem that only routes to the whole Karlsson sector would be insufficient.

### MC2 details

For each `p∈S` and `G=G_h(p)` or `G_v(p)`, the exact new assertion is

\[
\{X:\mathrm{EntrywiseUnit}\ X,\ X_{0j}=1,\ XX^*=G\}
=\bigcup_{\epsilon\in\{+,-\}}
 \{S(G,z_\epsilon)P_\pi:\pi\in\mathfrak S_3\},
\]

where both orbit sets are nonempty and disjoint. Here
`z_ε=(χ+ε i√R)/(2g)`. For the vertical direction transpose the matrices to use upstream's `verticalCandidates`. Invertibility follows from `g>0`, which is itself part of the missing strict-domain theorem. This is substantially stronger than merely proving that a candidate set is finite.

The full framed-completion assertion adds: for any dephased Hadamard with literal top-left block `p.matrix`, independent permutations of the last three columns and rows put its actual sides into one of the four explicit pairings, and its bottom-right block is the forced block. The *last* step is already formalised, but the two-orbit classification is not.

Source proof and exact algebra: `Proofs/SIDE_FIBER.md`, §§1–5; `verify_side_fiber.py`; `verify_invariants.py`. Its faithful field-extension and specialization arguments are written mathematics, not proved by the existence of the numerical/algebraic witnesses alone.

### MC3 details

The missing statement must retain the literal prescribed sign rule. For every strict seed, in both directions and both `z` branches, it asserts

\[
g>0,\quad G>0,\quad n>0,\quad P_0P_1P_2\ne0,
\quad\delta\ne0,\quad d_F\in\mathbb R,
\quad\rho\ge n/2>0,
\]

\[
|\lambda_j|=1,\quad |\sigma|^2=\rho,
\quad |\xi|=1,\quad3MM^*=G,
\quad \mathrm{EntrywiseUnit}(MP(w)F_3),
\quad (MP(w)F_3)_{0j}=1.
\]

It also identifies `Θ(S(G,z))=z`, proves fixed-`(G,z)` uniqueness modulo column permutations, and proves the allowed root-permutation identities. These are the ingredients actually used in sheet parity and continuity.

Useful upstream algebra, from `Hadamard6/GramInvariant.lean`, includes

```lean
theorem rowGram_det_re_pos {X : Mat3} (hdet : X.det ≠ 0) :
    0 < (Matrix.det (X * Matrix.conjTranspose X)).re

theorem det_eq_of_hermitian_diagonal_three
    {G : Mat3} (hG : G.IsHermitian) (hdiag : ∀ i, G i i = 3) :
    Matrix.det G = 27 - 3 * offDiagonalNormSum G +
      gramTau G + star (gramTau G)
```

These do not prove existence or positivity of a side at an arbitrary strict seed. Treating an actual physical side as already supplied would lose the seed-domain part of MC3.

Source proof: `Proofs/STRICT_DOMAIN.md` and `Proofs/SIDE_FIBER.md`. The noncanonical square-root sign is not asserted to be valid everywhere. For example the exact seed

\[
(a,b,c,d)=(\omega,\omega^2,i,(3+4i)/5)
\]

has `s=0`, `R=5184/625>0`, and canonical `ρ=1`; reversing the auxiliary sign produces `ρ′=0`. `SHEETS_TOPOLOGY.md`, §3.1, already records this correct qualification. A proposed Lean statement saying that both raw signs are always regular would be false.

### MC4 details

For either `ε`, set

\[
B_\epsilon=S(G_h,z_\epsilon),\qquad
C_\epsilon=S(G_v,\bar z_\epsilon)^{\mathsf T}.
\]

The always-flat part becomes, in upstream's vocabulary,

\[
\forall p\in S,\ \forall\epsilon,\qquad
\mathrm{Retained}\ p.\mathrm{matrix}\ B_\epsilon\ C_\epsilon.
\]

The difficult clause is the final `EntrywiseUnit (forcedD ...)` conjunct; existing completion soundness assumes it. The exceptional converse is

\[
\epsilon\ne\nu\ \land\
\mathrm{EntrywiseUnit}(\mathrm{forcedD}(p.\mathrm{matrix},B_\epsilon,C_\nu))
\quad\Longrightarrow\quad
\mathrm{IsTaoOrbit}(\mathrm{completion}(p.\mathrm{matrix},B_\epsilon,C_\nu)).
\]

The complete MC4 also includes the exact Tao census: canonical strict corner exponents `(0,1,1,0)` and `(0,1,1,2)` in powers of `ω`, with three flat pairings each and one nonflat pairing. The canonical nonstrict Tao type `(1,2,2,1)` has `R=0`. These are not consequences of `paper_tao_has_finite_corner` alone.

Source proof: `Proofs/MATCHED_FLATNESS.md`, `Proofs/NONMATCHED_EXCEPTIONS.md`, `Proofs/TAO_PAIRINGS.md`. Matched flatness uses density of simultaneous product-regular guards and a compactness limit. The nonmatched converse additionally uses the **necessary** affine-minus rule, all-corner propagation in the full generic rank-72 algebra, localization without inverting the product discriminant, global product-regular reach, and the exceptional `H_cross` census. Upstream contains none of that product-sheet algebra.

### MC5 details

The global surjection is the new statement

\[
\forall H,\quad \mathrm{IsHadamard}\ H\to
 \neg\mathrm{Equivalent}\ H\ F\to\neg\mathrm{IsTaoOrbit}\ H\to
 \exists p\in S,\ \mathrm{Equivalent}\ H\ H_+(p).
\]

The fixed-seed statement needed by the campaign is stronger than an existential opposite-corner move: at **each selected strict frame** of a non-Tao carrier, the actual completion is one of the two matched completions, and

\[
\mathrm{Equivalent}\bigl(\overline{H_-(p)},H_+(\bar p)\bigr).
\]

The opposite-corner argument exchanges the two block rows and two block columns, dephases, preserves `R`, and reverses `Im Θ` on the new horizontal side. Its seed is the four displayed cross ratios of the old `D` block. It is a theorem about these new invariants, not upstream's complementary *cubic Gram* sign reversal. The two sign reversals must not be conflated.

The dossier also proves that no strict matched image is Tao. This matters when constructing a map into the non-Tao quotient. It can be supplied by the exact Tao census, avoiding a separate topological isolation theorem. Upstream's Tao-orbit and Karlsson-disjointness results alone do not establish this image exclusion.

Source proof: `Proofs/OPPOSITE_CORNER.md`, conditional on MC1–MC4. The dossier reports those inputs as discharged, but its nonmatched converse uses PR-M, whose cited justification has the gap identified below. Once the required new results are supplied, the final implication to MC5 is modest work, but **MC5 is not derivable from upstream alone** and therefore remains (iii).

## 3. Each permitted classification import

The labels below are literal LaTeX labels in the bundled paper. This table splits the final three-equation row of `Proofs/README.md` into its three separately auditable imports.

| # | Source and label | Class | Exact scope |
|---:|---|---|---|
| 1 | `paper_body.tex`, `thm:classification` | **(i)** | Universal finite-corner existence. |
| 2 | `supp_body.tex`, `prop:directcompletion` | **(i)** for its mathematical content | Invertibility transfer, uniqueness of the forced fourth block, and flatness-tested completion soundness are proved separately. The single packaging theorem is routine. |
| 3 | `paper_body.tex`, `thm:regular-seed-domain` | **(iii)** | On the affine-minus matched cover, physicality iff normalized product discriminant is nonpositive, with all displayed product-regular guards; matched lower-block flatness. The supplement makes the matched scope explicit. |
| 4 | `supp_body.tex`, `prop:supp-generic-flatness` | **(iii)** | Exact norm identity on the nonsplit quadratic product cover, and physical matched flatness at permitted specializations. |
| 5 | `supp_body.tex`, `lem:supp-regular-localization` | **(iii)** | Every displayed reconstruction/matching/norm denominator is nonzero at a product-regular physical lift. |
| 6 | `paper_body.tex`, `thm:global-product-regular-escape` | **(iii)** | Claimed exceptional-class characterization of absence of product-regular frames. The proof searches for nonzero guards; interpreting its resulting actual frame as matched additionally needs PR-M. |
| 7 | `paper_body.tex`, paragraph before `eq:affine-minus-matching-main` | **(iii); source proof gap identified** | **Necessity** of affine-minus matching for every physical guarded completion, without building matching into the premise. The generic-flatness proof does not establish this uniform necessity. |
| 8 | `supp_body.tex`, `lem:supp-admissibility-guards` | **(iii)** | An admissible pair in an invertible finite side of a non-H₂ carrier supplies nonvanishing `c₆` and companion resultant. |
| 9 | `supp_body.tex`, `eq:fouriernormalform` | **(i)** | A simultaneous Fourier normalization of the first three blocks, after all four are Hadamard. |
| 10 | `supp_body.tex`, `eq:Dfourierformula` | **(i)** | The fourth Fourier block is the indicated forced product. |
| 11 | `supp_body.tex`, `eq:twoproducts` | **(i)** for the necessary equations used in `FOURIER_ROUTING.md` | Flatness implies both Fourier factor equations. A full converse, if desired, is **(ii)** and must be stated separately. |

### Import 1: universal finite-corner theorem

`Hadamard6/PaperTheorem.lean` proves the quoted `paper_finite_corner_theorem` and the following exact consequences:

```lean
theorem paper_finite_corner_completeness
    {H : Mat6} (hH : IsHadamard H) :
    InFiniteCornerAtlas H

theorem paper_total_output_corollary
    (H : Mat6) :
    IsHadamard H ↔ InFiniteCornerAtlas H

theorem paper_classification_corollary :
    FiniteCornerAtlasClasses = Set.univ
```

The last equality is set-theoretic. It contains no continuity or connectedness assertion. No identification with the strict radical constructor is implicit in the name `FiniteCornerAtlasClasses`.

### Import 2: direct finite completion

`Hadamard6/CandidateFibre.lean`:

```lean
theorem horizontal_candidate_invertible_of_one
    {E X : Mat3} (hXmem : X ∈ horizontalCandidates E)
    (hXunit : IsUnit X.det) {Y : Mat3}
    (hYmem : Y ∈ horizontalCandidates E) :
    IsUnit Y.det

theorem vertical_candidate_invertible_of_one
    {E X : Mat3} (hXmem : X ∈ verticalCandidates E)
    (hXunit : IsUnit X.det) {Y : Mat3}
    (hYmem : Y ∈ verticalCandidates E) :
    IsUnit Y.det
```

`Hadamard6/FiniteCornerFromBlocks.lean`:

```lean
theorem eq_forcedD_of_row_cross {E B C D : Mat3}
    (hB : IsUnit B.det)
    (hcross : E * Matrix.conjTranspose C +
      B * Matrix.conjTranspose D = 0) :
    D = forcedD E B C

theorem topRight_mem_horizontalCandidates {H : Mat6}
    (hH : IsHadamard H) (hdeph : IsDephased H) :
    Matrix.toBlocks₁₂ H ∈
      horizontalCandidates (Matrix.toBlocks₁₁ H)

theorem bottomLeft_mem_verticalCandidates {H : Mat6}
    (hH : IsHadamard H) (hdeph : IsDephased H) :
    Matrix.toBlocks₂₁ H ∈
      verticalCandidates (Matrix.toBlocks₁₁ H)
```

`Hadamard6/FiniteCornerConsequences.lean`:

```lean
theorem retained_completion_isHadamard
    {p : CornerData} {B C : Mat3}
    (h : Retained p.matrix B C) :
    IsHadamard (completion p.matrix B C)
```

These prove the exact content needed from `prop:directcompletion`. The candidate Cartesian product is finite because both factors are finite. A wrapper expressing the paper's biconditional would use the actual-block membership lemmas and `eq_forcedD_of_row_cross` for necessity, and `retained_completion_isHadamard` for sufficiency. No new classification input is involved.

What they do not prove is that either selected strict matched pair passes the final flatness test.

### Imports 3–8: exact remaining product-regular statements

There is no upstream predicate for the paper's product-regular lifts. It must be newly defined with the literal data in `paper_body.tex`, `def:product-regularity`, and the full guard product in `eq:product-regularity-guards`:

\[
\det E\,\det B(\det B)^\#\det C(\det C)^\#
\,c_{6,h}c_{6,v}\delta_h\delta_v
\,\operatorname{Disc}(q_h)\operatorname{Disc}(q_v)
\operatorname{Res}(q_h,B_h)\operatorname{Res}(q_v,B_v)\ne0.
\]

The discriminant of the **product quadratic** is intentionally absent. Product ramification is therefore included. Do not substitute the stronger condition that the two product roots are distinct.

Two new predicates must be kept distinct. Let `GuardedFrame` mean framed reconstruction data satisfying this guard product, without an affine matching equation. Let `MatchedProductRegularLift` additionally require the affine-minus equation. This second meaning is the supplement's explicit convention for a “lift”; an actual physical guarded frame does not satisfy it by definition. With that distinction, the exact new obligations are:

1. **Regular seed domain (`thm:regular-seed-domain`).** For every affine-minus `MatchedProductRegularLift` above `p : CornerData`, the reconstructed variables are physical and their completion satisfies `IsHadamard` iff `ωₙ(p)≤0`, with `ωₙ=|U_h|²−4`. Both matched guarded branches are physical for `ωₙ<0`; they coalesce when `ωₙ=0`. This is uniform over guarded points of the matched cover. It does not say that an arbitrary physical `GuardedFrame` is on that cover; that is the separate necessary-matching obligation.

2. **Generic norm (`prop:supp-generic-flatness`).** Over the particular nonsplit product function field `K` in `eq:supp-double-cover-field`, let `A_h=K[x]/(q_h)`, `A_v=K[p]/(q_v)` and `A=A_h⊗_K A_v`. For the specified affine-minus interpolant `d` and `N=Norm_{A/A_v}(d)`, prove `N·N^#=1` in `A_v`. At every product-regular physical specialization of this affine-minus cover, prove `EntrywiseUnit (forcedD E B C)`. Upstream's completion theorem takes that last predicate as a hypothesis; it is not this norm theorem.

3. **Localization (`lem:supp-regular-localization`).** At every physical `MatchedProductRegularLift`, each denominator in the paper's coordinate reconstruction, affine matching and norm identity is nonzero, including companion denominators evaluated at coordinate roots and Vandermonde factors. Upstream's `IsUnit B.det` supplies only the matrix inverse part of this much longer list. This lemma also does not establish MC3's different divisors on all `R>0` seeds.

4. **Global reach (`thm:global-product-regular-escape`).** Define `HasGuardedFrame H` by existence of `K` with `Equivalent H K`, `IsDephased K`, and `GuardedFrame` data agreeing with its actual blocks. The guard-search proof targets

   \[
   \mathrm{IsHadamard}\ H\ \Longrightarrow\
   \bigl(\neg\mathrm{HasGuardedFrame}\ H
    \ \longleftrightarrow\
    \mathrm{IsTaoOrbit}\ H\ \lor\mathrm{Equivalent}\ H\ H_\times\bigr),
   \]

   where `H_cross` is the literal matrix in `eq:main-product-exceptional-karlsson-matrix`. To replace `HasGuardedFrame` by existence of an actual `MatchedProductRegularLift`, one also needs the next obligation, PR-M. Guard existence alone does not prove the matched interpretation of the main theorem's “product-regular frame.” The intrinsic Karlsson finite-corner proof is not this exceptional-singleton classification. In particular its regular raw coordinates and exceptional seams concern a different list of conditions.

5. **Necessary affine-minus matching (paragraph before `eq:affine-minus-matching-main`).** For any physical `GuardedFrame` of a Hadamard with actual horizontal and vertical row-product coordinates `u,m`, prove

   \[
   2m-U_v=-\frac{\delta_vc_{6,h}}{\delta_hc_{6,v}}(2u-U_h).
   \]

   This must be proved from the actual completion's flatness, without assuming matching. Sufficiency of this equation for a constructed branch is insufficient for `NONMATCHED_EXCEPTIONS.md`. At product ramification the two matchings coincide; excluding an opposite matching is substantive only when the product roots are distinct.

6. **Admissibility (`lem:supp-admissibility-guards`).** Let a normalized invertible phase side of a physical finite-corner presentation of `H` be given, with `¬ HasHadamardTwoByTwo H`. If a chosen ordered pair of rows has three distinct entrywise ratios and, against the remaining row, unequal squared correlation magnitudes, then its companion chart satisfies `c₆≠0` and `Res(q_{s,u},B)≠0`. This is new polynomial/elimination information beyond upstream's candidate-fibre finiteness theorem.

These six obligations remain (iii) even when their external verifiers pass. Their written arguments and any additional proof gaps must be assessed separately; neither an external receipt nor a public classification theorem changes their Lean status.

### Import 9: simultaneous Fourier normalization

`Hadamard6/BlockGram.lean`:

```lean
theorem allFourBlocksHadamard_of_topLeft
    {H : Mat6} (hH : IsHadamard H)
    (hE : IsHadamard3 (Matrix.toBlocks₁₁ H)) :
    AllFourBlocksHadamard H
```

`Hadamard6/SimultaneousFourierNormalization.lean`:

```lean
theorem simultaneous_threeBlockFourierNormalization :
    FourierThreeBlockNormalizationReduction
```

The proposition abbreviation in `Hadamard6/FourierCoreFromNormalization.lean` is exactly

```lean
def FourierThreeBlockNormalizationReduction : Prop :=
  ∀ H, IsHadamard H → AllFourBlocksHadamard H →
    Nonempty (FourierThreeBlockNormalization H)
```

The output structure contains `K`, `hK : IsHadamard K`, `equivalent : Equivalent H K`, unit phases `ω,p,q,r,s`, `omega_quadratic : ω^2+ω+1=0`, a fourth block `D`, and

```lean
  firstThreeBlocks : K = fourierNormalForm ω p q r s D
```

The latter definition, in `Hadamard6/FourierNormalForm.lean`, is

```lean
def fourierNormalForm (ω p q r s : ℂ) (D : Mat3) : Mat6 :=
  Matrix.fromBlocks (fourier3 ω)
    (rowGauge (fourierParameters p q) (fourier3 ω))
    (columnGauge (fourierParameters r s) (fourier3 ω)) D
```

This matches `E=F`, `B=D_vF`, `C=FD_w`. The proof constructs the common orientation; it does not simply assume simultaneous normalization. If a later proof needs to preserve a particular already-chosen `D_v` while changing only bottom rows, that restricted transformation must be supplied explicitly; the broad existential theorem by itself does not record that preservation.

### Import 10: forced fourth Fourier block

`Hadamard6/FourierForcedCompletion.lean` proves

```lean
theorem fourierForcedD_eq_product
    {ω p q r s : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0) :
    fourierForcedD ω p q r s =
      -(3 : ℂ)⁻¹ •
        (columnGauge (fourierParameters r s) (fourier3 ω) *
          Matrix.conjTranspose (fourier3 ω) *
          rowGauge (fourierParameters p q) (fourier3 ω))

theorem fourth_block_eq_fourierForcedD
    {K : Mat6} {ω p q r s : ℂ} {D : Mat3}
    (hK : IsHadamard K)
    (hform : K = fourierNormalForm ω p q r s D)
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0)
    (hB : IsHadamard3
      (rowGauge (fourierParameters p q) (fourier3 ω))) :
    D = fourierForcedD ω p q r s
```

The first is the literal product `−(1/3)FD_wF*D_vF`; the second identifies the actual fourth block by orthogonality. Both are needed if the formula is used for a pre-existing carrier.

### Import 11: two autocorrelation factor equations

`Hadamard6/FourierBlockCoordinates.lean` proves exactly

```lean
theorem fourierForcedD_factor_equations
    {ω p q r s : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0)
    (hD : EntrywiseUnit (fourierForcedD ω p q r s)) :
    alphaHat₁ ω r s * Ahat₁ ω p q = 0 ∧
      alphaHat₂ ω r s * Ahat₂ ω p q = 0
```

This is the direction actually used in `Proofs/FOURIER_ROUTING.md`: start from a physical carrier and deduce the products vanish. It is already proved, not an assumed `FourierChartCore` field: `FourierNormalization.toCore` explicitly invokes it.

Do not quote this theorem as a biconditional. A converse for unit `p,q,r,s` would be modest extra work using `Ahat₀_zero` in `FourierUnmixed.lean`, `three_dft_zero`, the three `zCol*_forwardCorr_eq_convolution` identities, and `dft₀_norm_expansion`, `dft₁_norm_expansion`, `dft₂_norm_expansion` in `FourierAutocorrelation.lean`, together with the fixed norm sum. That converse is unnecessary for the cited routing implication.

### Additional source proof gap: uniform necessity of matching

The main-paper paragraph before `eq:affine-minus-matching-main` asserts a unique affine-minus vertical root for **every** physical product-regular completion. The bundled proofs do not establish that necessary direction:

- The supplement's restatement of `def:product-regularity`, immediately before `lem:supp-complement-positivity`, explicitly says that “lift” means the **affine-minus matched** horizontal–vertical lift. Its restatement of `thm:regular-seed-domain` correspondingly proves physicality of **matched** lifts.
- `prop:supp-generic-flatness` proves a global identity for the minus remainder and proves that the plus remainder is **not identically zero**. Its density argument does not exclude zeros of the plus remainder on a proper subvariety of the guarded locus.
- `certificates/generic_cover/exact_lower_block_specialization.py` evaluates the exact norm remainders at the one nonphysical rational seed `(2,3,5,7)`. Both its own source and `certificates/README.md` correctly limit its scope to nonemptiness of the regular localization and exclusion of the plus law as a *generic identity*. They do not claim uniform nonvanishing of the plus remainder on all physical guarded lifts.

The inference “`F₋` is identically zero and `F₊` is nonzero at one point, therefore every physical zero belongs only to the minus matching” is invalid. Even on an irreducible base, a nonzero regular function can have exceptional zeros. The missing result is an exact proof that no **guarded physical** plus-matched completion is flat (apart from any explicitly allowed coincidence at product ramification). Equivalently, one must eliminate its nine lower-block modulus equations together with the physical and guard conditions.

This is a **gap in the supplied justification**, not a counterexample to the mathematical necessity assertion. `NONMATCHED_EXCEPTIONS.md` explicitly imports that assertion as PR-M, so its proof is valid only relative to this stronger input; the cited generic-flatness proof and one-seed certificate do not discharge it. The global reach proof likewise checks guard existence, which is insufficient to identify the actual frame as a matched lift if “product regular” is defined to include matching. A formal blueprint must make this distinction explicit.

### Additional import inventory issue

`Proofs/NONMATCHED_EXCEPTIONS.md`, §1, item PR-F, explicitly names the paper's `lem:supp-product-factor`. That lemma is **not listed** in the README's permitted-import table. Its statement, in `supp_body.tex`, is that the sextic factorization `eq:supp-sextic-factor` and the product quadratic `eq:supp-product-quadratic` are polynomial identities on the regular fixed-Gram locus; in particular

\[
u+v=-c_3/((1+ss^\#)c_6),\qquad uv=c_0/c_6.
\]

This is additional mathematical content and is not an upstream theorem. The companion and coefficient equations also referenced there can be used as definitions, but the factorization itself needs an exact derivation or a consciously expanded paper-import register. This is an **inventory/permission-scope gap**, not a demonstrated false mathematical claim. The minimal route should either avoid the lemma or record and prove its explicit polynomial identity.

## 4. Claim B: exact sheet parity

**Classification: (iii).** Source: `reference/coverage/returns/A_deltoid/SHEETS_TOPOLOGY.md`, §1, especially equation (5).

For a seed action `L` consisting of corner row and column permutations, followed by transposition bit `τ` and conjugation bit `κ`, the precise statement is

\[
[H_\sigma(Lp)]
=\mathcal C^\kappa\mathcal T^\tau
 [H_{(-1)^{\tau+\kappa}\sigma}(p)],
\qquad p\in S.
\]

It includes invariance of `S` under these actions. Row and column seed permutations **preserve** the sheet; transpose and conjugation each reverse it. An existential statement that one of two sheets occurs is insufficient.

The formal proof must introduce and prove the following new facts:

1. `Θ` is invariant under side row/column monomials and transpose, and conjugates under entrywise conjugation.
2. `Θ(B_σ)=z_σ` and `Θ(C_σ)=bar(z_σ)`.
3. The strict side at fixed Gram and `Θ` is a single permutation orbit.
4. All scalar invariants, including the horizontal/vertical equality of `R`, transform as claimed.
5. The actual lower-right block is uniquely forced.

Item 5 is already (i), via `eq_forcedD_of_row_cross`. Ordinary equivalence bookkeeping is (i), via `equivalent_refl`, `equivalent_symm`, `equivalent_trans` in `Basic.lean` and `equivalent_transpose` in `FourierSeamCertificate.lean`. Items 1–4 are not proved upstream. Thus the complete Claim B is not category (ii) over upstream alone.

The maximum-frame consequence used in connectedness requires additional exact identities for `E(x)=(1;x;x⁻¹)` with columns `(1,x,x²)`: conjugation is a row swap and transpose is a specified corner permutation followed by dephasing. The finite algebra in `verify_sheet_branches.py` supplies these identities at paper level; with Claim B they yield `H₊(Lθ*) ~ K*` for all 144 maps. MC5 alone does not supply this maximum-orbit identification. `SHEETS_TOPOLOGY.md` correctly identifies that gap in the older coverage draft.

## 5. Claim C: continuity on all of the strict domain

**Classification: (iii).** The precise target is

\[
\mathrm{Continuous}\left(p\in S\longmapsto
q\bigl(\langle H_+(p),h_+(p)\rangle\bigr)\right),
\]

where `q : Had6 → HadamardClass6` is the quotient map for the actual phase/permutation equivalence and `h₊(p)` proves the output Hadamard. Equivalently this is continuity in the phase metric after proving its topology agrees with the quotient topology.

It is not generally a theorem that the canonical principal-root **matrix representative** is globally continuous. The quotient statement is the required one.

The paper proof in `SHEETS_TOPOLOGY.md`, §3, uses local nonzero square and cube roots, not a global root choice. Its exact transition identities, at fixed `G,z`, are

\[
\rho'=\rho|q|^2,\quad q'=1/\bar q,
\quad\sigma'=q^2\bar\sigma/\bar q,
\]

\[
M'=MJ\operatorname{diag}(1,t,\bar t),\quad
\xi'=t^3\bar\xi,\quad t=q/\bar q.
\]

They identify the local representative with the canonical representative by a side permutation wherever both formulas are defined. At actual sign switches `d_F=0`, `ρ=n/2>0` and `|q|=1`. At `q=0` there is no nearby sign switch after shrinking the neighbourhood. The exception above prevents an unqualified two-sign argument.

A formal proof can instead avoid analytic root charts by using a closed relation in the compact space of full physical matrices. The polynomial signature relation in `MINIMAL_ROUTE.md`, §3, needs only nonempty matched fibres (L1) and uniqueness of their quotient class (L2) to produce a continuous replacement map. It does not require the full MC2/MC3 statements. `STEP2_BLUEPRINT.md`, §7, supplies an actual-side paper proof of L2, whose Lean formalization is pending; L1 remains open. Identifying the literal radical output with this relation is a separate algebraic step if continuity of that exact displayed constructor is required. Upstream's rational `forcedD` is continuous where `B.det≠0`, but that alone gives no continuous choice of the side fibres.

Once a local continuous Hadamard representative is built, passage to quotient is ordinary topology. This final step is (ii); it must not be mistaken for the whole Claim C. The statement that its image lies in the non-Tao subspace further needs the Tao census or a separately proved isolation argument.

## 6. Explicit Fourier joining family

**Classification: (ii)** for the algebraic/continuous family and its exceptional-class avoidance. Its use to connect the two reconstruction images remains conditional on coverage and continuity.

Source: `CONNECTEDNESS.md`, §2, and `SHEETS_TOPOLOGY.md`, §7. Define

\[
J(z)=\begin{pmatrix}F_3&F_3\\F_3\operatorname{diag}(1,z,1)&-F_3\operatorname{diag}(1,z,1)\end{pmatrix},
\qquad |z|=1.
\]

The same row and column order

\[
(0,3,1,4,2,5)
\]

turns this matrix **literally** into `affineFourierMatrix standardOmega z 1`. This is a fixed 36-entry identity, with no reconstruction assumption. `Hadamard6/KarlssonFourierSeam.lean` already proves

```lean
theorem affineFourierMatrix_isHadamard
    {omega z₁ z₂ : ℂ} (homega : IsPrimitiveCubicPhase omega)
    (hz₁ : Complex.normSq z₁ = 1)
    (hz₂ : Complex.normSq z₂ = 1) :
    IsHadamard (affineFourierMatrix omega z₁ z₂)

theorem affineFourierMatrix_hasHadamardTwoByTwo
    (omega z₁ z₂ : ℂ) :
    HasHadamardTwoByTwo (affineFourierMatrix omega z₁ z₂)
```

The latter, together with `taoMatrix_not_hasHadamardTwoByTwo` and invariance under `Equivalent`, is already sufficient to exclude Tao for the entire family. Alternatively the cross-ratio argument below excludes both named classes on the punctured parameter arc.

The remaining modest statements are:

1. `J(e^{it})` depends continuously on real `t`, by finite entrywise continuity. Therefore its Hadamard quotient class is continuous once the quotient topology is installed.
2. `J(1)=F₂⊗F₃` is equivalent to `F₆`. The exact index assignments `r=3p+2a` and `c=3q+4b` modulo six give
   \[
   e^{2\pi i rc/6}=(-1)^{pq}\omega^{ab}.
   \]
3. The cross ratio from rows `0,3` and columns `0,1`, defined as `H₀₀H₃₁/(H₀₁H₃₀)`, is `z`. Row/column phases cancel and permutations relabel the finite set of all such ratios. All Fourier ratios are sixth roots; all Tao ratios are third roots. Therefore `0<t<π/3` excludes both exceptional classes. This requires only a finite root-of-unity computation and an elementary fact about `exp(it)` on that interval.
4. Conjugation fixes the Fourier class, via the Fourier row permutation `r↦−r`.

For a completely algebraic parameterization near the joining point one can replace `e^{it}` with `z(x)=(1+ix)/(1-ix)`. At positive rational `x→0`, the same family converges to Fourier. An exact check that `z(x)^6≠1` on a fixed small positive rational interval replaces the trigonometric exclusion.

No upstream theorem is named “the Fourier joining family connects the two sheets.” The final conclusion uses the new reconstruction coverage: the punctured family belongs to `A∪B`, a subsequence lies in one image, conjugation gives the closure point for the other, and connected sets with a common closure point unite. If global MC5 supplies the positive sheet alone, the two-image subsequence step can be simplified accordingly.

## 7. Consequences for a minimal formal route

The existing classification gives a clean alternative **coverage interface**:

\[
\forall p,B,C,\quad
\mathrm{Retained}(p.\mathrm{matrix},B,C)\to
\neg\mathrm{IsTaoOrbit}(\mathrm{completion}(p.\mathrm{matrix},B,C))
\to\text{the required ball coverage of that output}.
\]

Combined with `paper_finite_corner_completeness` and equivalence invariance, this directly supplies matrix coverage. It genuinely avoids MC1–MC5 as hypotheses **if the new retained-output coverage theorem is proved**. Merely renaming that theorem as an assumption does not close Step 2 or the finite certificate obligation.

For the topological route, one may consider the new retained parameter space

\[
P_{\rm ret}=\{(p,B,C):\mathrm{Retained}(p.\mathrm{matrix},B,C)
\ \land\neg\mathrm{IsTaoOrbit}(\mathrm{completion}(p.\mathrm{matrix},B,C))\}.
\]

Completion is continuous there by nonsingular inverse continuity and matrix multiplication. Upstream proves its quotient image is the non-Tao space. It does **not** prove `P_ret` connected, nor any connected covering subspace/component-intersection alternative. The final flatness condition defining `Retained` is a genuine algebraic restriction; connectedness cannot be read off from the ambient seed torus. Asking for connectedness of this space simply relocates a substantial theorem unless a new proof is supplied.

For the original connectedness route, strict reconstruction needs less than every MC statement in its strongest campaign form: a continuous non-Tao quotient map or pair of maps on `S`, a proved componentwise common-image point (from the Step 1 maximum census plus exact frame identities), coverage of every non-Fourier class, and a Fourier closure/joining witness. The exact root enumerations and fixed-seed maximality/sorting transport can be omitted if those weaker global statements are proved directly. They are still new theorems over upstream.

The recommended direct coverage route in `MINIMAL_ROUTE.md` is smaller still. L1 and L2 produce a continuous matched class map into the full quotient `Q`. If the full Record boundary condition gives a clopen covered-class set in `Q`, a finite maximum census and its anchor memberships cover the entire matched image. Conjugation invariance, a Fourier anchor, and the separate density assertion D then cover every non-Tao class. This implication needs no image-avoids-Tao theorem, sheet parity, opposite-corner move, common-image point, or Fourier joining family. L1 and D are the remaining mathematical geometry gaps; L2 is paper-proved but not yet formalized.

## 8. Audit limitations and corrections to prevent

This audit found no counterexample to the stated connectedness theorem. It does establish the following precise restrictions on any status report:

- Do not report MC1–MC5, Claim B or Claim C as already proved by `PaperTheorem.lean`.
- Do not report `HasFiniteCorner` as the strict inequality `R>0`.
- Do not report `Retained` soundness as proof that a proposed matched pair is retained.
- Do not report the Fourier factor-equation theorem as a proved biconditional; its required necessary direction is proved.
- Do not report the two raw auxiliary square-root signs as universally regular; the strict `s=0` example above disproves that statement.
- Do not report bare quotient classification as connectedness, quotient metric compatibility, or Tao isolation.
- Do not report uniform necessary matching as proved by generic minus flatness plus a single nonzero plus specialization; the additional exceptional-zero exclusion is missing.
- Do not report the nonmatched-converse import list as literally complete without addressing `lem:supp-product-factor`.
- Do not report any uncompiled new Lean file or external Python certificate as a checked upstream theorem.

The source proof dossier distinguishes external exact computations and written algebraic arguments. A successful verifier can validate its stated identities and enumerations; the specialization, coverage and topology arguments still require their own proofs in the intended formal route.
