# Seed atlas in Lean

This folder proves the main theorem from the atlas certificate. It follows the specification
[`proof/seed_atlas/SPEC.md`](../../../proof/seed_atlas/SPEC.md) and the certificate format
[`proof/seed_atlas/FORMAT.md`](../../../proof/seed_atlas/FORMAT.md), referred to below as SPEC and FORMAT.

```lean
theorem NoFourMUBs.EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs
```

The theorem depends only on the axioms `propext`, `Classical.choice` and `Quot.sound` (`EdgeXAxioms.lean`).

The proof uses three kinds of objects.

* A seed is a point `θ ∈ ℝ⁴`. It fixes the leading `3 × 3` block of a dephased Hadamard matrix.
* A seed ball is a ball in seed space together with an orientation `o = ±1`. It stands for the matched Hadamard
  matrices whose seeds lie in the ball.
* A record is a ball of full `6 × 6` phase matrices (SPEC §3). In the final certificate the only record is the
  one around Tao's matrix.

Each seed ball carries two certified claims.

* The enclosure (claim C1 of SPEC §2) bounds the distance from each matched Hadamard matrix over the ball to an
  affine phase model.
* The local tests (Stage C in the code, [`proof/atlas/STAGEC.md`](../../../proof/atlas/STAGEC.md)) are finite
  rejection tests run inside each ball. They show that no matrix H in the ball is extendable, that is, that
  {I₆, H/√6} does not extend to four MUBs (`QuartetEdge` in Lean).

The boundary transfers (claim C2 of SPEC §4) show that every boundary point of a ball lies in the interior of
another ball or record. The ball at F₆ (the X-ball in the code) is a ball in a four-dimensional chart through F₆
(SPEC §10). It contains no extendable matrix because its image lies within phase distance ρ = 7/40 of F₆, where the
exclusion of [`../X/`](../X/README.md) applies.

The proof follows the route of `Final.no_four_mubs`. The set `W` of covered classes is shown to be clopen and to
contain `F6`. The theorem then follows from `Step2.coverage_of_matched_density`, with `L1.matchedExistence`,
`Step2.matchedUniqueness` and `PRM.densityReach PRM.strictCornerCoverage`. The density step needs only the weaker
classification `PRM.nonmatched_tao_or_fourier`.

## Modules

| Module | Content |
|---|---|
| `Seed` | `seedOf θ = e^{iθ}`, `wnorm`, `psi` (SPEC's `Ψ`) and the oriented matched relation `MatchedO o p H`. Conjugation (`matchedO_conj`: f₋(θ) = conj f₊(−θ), with the orientation convention below) and uniqueness in both orientations (`matchedO_unique`). The side formulas χ = −2 Re Ψ(B) and R = 4(Im Ψ(B))², and the same for C, of a dephased Hadamard matrix (`right_formula`, `lower_formula`). The signs decide the orientation (`matchedO_of_signs`, `signs_of_matchedO`). Closedness (`isClosed_matchedO`), corners (`cornerMat`, `matchedO_of_corner`) and the linear corner seed (`cornerTheta`, `leadingBlock_cornerMat_phaseMat`) |
| `OpenMap` | The open-map lemma of SPEC §5: `isOpen_matchedImage`, `isOpen_classImage`, `classImage_mem_nhds` |
| `Cert` | `SeedBallCert` (the enclosure as the hypothesis field `hC1`, the local tests as `StageCCert`), `enclosure`, `excludes` |
| `Transfer` | The targets `SeedTarget` (T0 same corner, T1 corner change, T2 into a record) and `RecTarget` (record, T1′), their semantic claims `SeedTargetHolds`, `RecTargetHolds` and `CornerIn`, and the transfer lemmas `transfer_t0`, `transfer_t1`, `transfer_t2`, `transfer_t1'` |
| `Atlas` | `SeedBoundaryCover` and `RecBoundaryCover` (the boundary transfers), `SeedAtlasCertificate`, compactness (`isCompact_seedBall`), `covered_iff_interiorTarget`, `isOpen_interiorTarget` and `SeedAtlasCertificate.clopen` |
| `Method/NormalTube` | The analytic lemmas on the normal component of a phase matrix near a centre, used by the graph property (G) |
| `EdgeGraph` | The graph property (G). `graph_unique`: two Hadamard matrices `e^{i(P + δᵢ)}` with `‖δᵢ‖ ≤ R`, `2√3 R < σ` and `δ₁ − δ₂` in the frame's normal complement satisfy `δ₁ = δ₂`. The proof is the mean value theorem along the segment, in a calculus-free form |
| `Edge` | `EdgeBallCert`, `isCompact_ball`, `equivalent_of_eta` (the chart is unique near F₆), `isOpen_edgeInterior` (openness at every interior point, including `y = 0`) and `hopen_of_strictDeriv` (the implicit-function form of (D) in SPEC §10.1) |
| `XShape` | `XExclusion ρ`, the form in which the ball at F₆ uses the exclusion near F₆ |
| `EdgeX` | The ball at F₆, `EdgeX.EdgeBallCert`, and `excludes` |
| `EdgeXAtlas` | Transfers into the chart at F₆, T3 (`EdgeInQ`, `edgeInterior_of_edgeInQ`), the targets with T3 added, the covers, `EdgeAtlasCertificate` and `EdgeAtlasCertificate.clopen` |
| `EdgeXFinal` | `EdgeXFinal.no_four_mubs_seed` |
| `EdgeXAxioms` | The axiom audit |

## Conventions the certifier must match

* Indices. `I6 = Fin 3 ⊕ Fin 3`. The indices `0..5` are `inl 0, inl 1, inl 2, inr 0, inr 1, inr 2`. Phase
  matrices are `RMat6`, and `phaseMat Q = (e^{i Q_ab})`.
* Seed. `θ ∈ ℝ⁴` and `seedOf θ i = e^{iθ_i}`. The corner is `E = [[1,1,1],[1,a,b],[1,c,d]]`, where
  a, b, c, d = e^{iθ₁}, …, e^{iθ₄} in the code. Matrix indices are 0-based, as in Lean
  (`θ₁ ↔ E₁₁, θ₂ ↔ E₁₂, θ₃ ↔ E₂₁, θ₄ ↔ E₂₂`).
* Orientation. `o : ℤˣ` (`±1`) is defined exactly as in SPEC, as `o = sign Im Ψ(B)` with
  `Ψ(X) = perm(X) det(X)² / ∏ X_ab` (`psi`, `= −Step2.sideSignature`). Matched means `sign Im Ψ(C) = −o`, where
  `C` is the lower-left block. `Ψ` is transpose-invariant. `MatchedO o p H` states this through the labels: `H` is
  dephased with leading block `E(p)`, 2Ψ(B) = −χ + o i√R and 2Ψ(C) = −χ − o i√R. Lean writes these for
  `T = −Ψ` (`Step2.sideSignature`), as `2T(B) = χ − o i√R` and `2T(C) = χ + o i√R`.
* Orientation in `PROOF.md` and the paper. `PROOF.md`'s H₊ is the paper's H₊ (`Step2.Matched`,
  Ψ(B) = Ψ₋ = −(χ + i√R)/2, so Im Ψ(B) < 0), which is `o = −1` here (`matchedO_neg_iff`). The stored balls use
  `o = +1`, which is conj H₊(−θ). The covered set contains the conjugate of every ball, which has the other orientation, so the proof does not
  depend on this choice.
  The certificate's `o` must still be computed as `sign Im Ψ(B)` with SPEC's `Ψ`, not with Lean's `T = −Ψ`.
* Ball. `θ(w) = θ₀ + M_θ w` and `‖w‖ = wnorm w = √(Σ w_k²)`. The fields `Mth` and `r` are the paper's M_{θ₀} and
  r_H. `M_θ` must be invertible (`hMth : IsUnit Mth.det`).
* Frame. `U : Fin 4 → RMat6`, where `U k` is column `k` of SPEC's `36 × 4` matrix `U` (row-major `6 × 6`). Then
  `U w = tang U w = Σ_k w_k U k`.
* Windings. `wind N = 2π N` for `N : Matrix I6 I6 ℤ`. The winding of T0 is `N : Fin 4 → ℤ`.
* Symmetries Γ. `k : Fin 4` with `gfun k = id, conj, ᵀ, conj ∘ ᵀ` (`k = 0, 1, 2, 3`). On phases,
  `gphase k Q = Q, −Q, Qᵀ, −Qᵀ`.
* Corners. An ordered corner `(I, J)` is given by two permutations `σ τ : Equiv.Perm I6` with
  `I = (σ (inl 0), σ (inl 1), σ (inl 2))` and `J = (τ (inl 0), τ (inl 1), τ (inl 2))`. The rest of `σ` and `τ` is
  irrelevant. `cornerMat k σ τ K = dephase ((gfun k K).submatrix σ τ)`. Its corner seed is
  `cornerTheta (gphase k Q) σ τ`, with `θ'₁ = Q'_{i₁j₁} − Q'_{i₁j₀} − Q'_{i₀j₁} + Q'_{i₀j₀}` and so on
  (`leadingBlock_cornerMat_phaseMat`). Its two `Ψ` are those of `K[I, Jᶜ]` and `K[Iᶜ, J]` for `K = g · K₀`
  (`psi_rightBlock_cornerMat`, `psi_lowerBlock_cornerMat`), as computed in FORMAT §4.

## The hypotheses the certifier establishes

`SeedBallCert` (`Cert.lean`) has the data `theta0, Mth, r, o, P, U, n, t, lamF` and the following fields.

* `hMth : IsUnit Mth.det`.
* `ht0 : 0 ≤ t`.
* `hF0 : 0 ≤ lamF`.
* `hcol : ∀ w i, colnorm (tang U w) i ≤ t * wnorm w`. Here `t ≥ maxᵢ ‖U_(i)‖₂`, where `U_(i)` is the `6 × 4` block
  of column `i`.
* `hfrob : ∀ w, frob (tang U w) ≤ lamF * wnorm w`, with `lamF ≥ ‖U‖₂`.
* `hC1`, the enclosure in either gauge (SPEC §11):
  ```lean
  ∀ w, wnorm w ≤ r → 0 < seedR (seedOf (theta0 + Mth *ᵥ w)) ∧
    ∃ Q N, RepO o (seedOf (theta0 + Mth *ᵥ w)) (phaseMat Q) ∧ frob (Q - P - tang U w - wind N) ≤ n
  ```
  `RepO o p K` means `K = D_r H D_c` (`RowColEquiv H K`, with unit diagonal phases) for a Hadamard `H` with
  `MatchedO o p H`. In the dephased gauge, `H = e^{iQ}` and `D_r = D_c = 1` (`RepO.of_matched`). In the horizontal
  gauge (`"gauge": "hor"`), `Q = h(Q_g)` and `e^{iQ} = D_r e^{iQ_g} D_c`, with `P = h(P_g)` and `U = h(T) M_θ`
  stored horizontal.
* `stageC : StageCCert ((1/2π) • P) U (r/2π) (n/2π) ((t r + n)/2π) ((lamF r + n)/2π)`, the local tests. The
  certifier checks them with
  `stagec.stage_c(P/2π, rcol/2π, tang=(U, r/2π, n/2π), radius=label_radius, rF=rF/2π)`.

`SeedBoundaryCover S A j` is the boundary transfer for a seed ball. It consists of boxes `box b ⊆ ℝ⁴` covering
`{wnorm w = r_j}`. On each box, the target's claim `SeedTargetHolds` holds for `wnorm w = r_j`. The targets are
the following.

* T0 (same corner), `t0 l N`: `o_l = o_j` and `∃ w', wnorm w' < r_l ∧ θ_l(w') = θ_j(w) + 2πN`.
* T1 (corner change), `t1 l k σ τ`: `∃ K`, `RepO o_j (seedOf (θ_j w)) K`, and `CornerIn (S l) k σ τ K`. Corner seeds and the signs
  of `Ψ` are invariant under row and column phases, so the `e^{iQ}` of either gauge will do. `CornerIn` states
  `∃ w', wnorm w' < r_l ∧ leadingBlock (cornerMat k σ τ K) = seedCorner (seedOf (θ_l w'))`,
  `0 < o_l · Im Ψ(B)` and `0 < −o_l · Im Ψ(C)` for the blocks of `cornerMat k σ τ K`.
* T2 (into a record, not used by the final certificate), `t2 l B N`: `∃ Q`, `RepO o_j (seedOf (θ_j w)) (phaseMat Q)`, with
  `frob (hor (B.act Q + wind N − P_l)) < R_l`. Here `B : SignedPerm`, as in `BoundaryCover`.

`RecBoundaryCover S A l` is the boundary transfer for a record (FORMAT §6). It consists of `η`-boxes covering the
shell `{‖η‖ ≤ r_H, R² − n² ≤ ‖Tη‖² ≤ R²}`. Each box has a target whose claim (`RecTargetHolds`) holds for `η` in
the box and in the shell. The targets are the following. The final certificate uses neither of them.

* `record l' B N`: the record-to-record transfer inequality
  `frob (hor (B.act P + wind N − P_l') + hor (B.act (Tη))) + n < R_l'`, as in `BoundaryCover`.
* T1′, `t1' j k σ τ`: `CornerIn (S j) k σ τ (phaseMat (P + Tη + ν))` for every `ν` with the following properties.
  `ν` lies in the complement `N` of the frame (`IsHorizontal ν`, and `⟨T_k, ν⟩ = 0` for all `k`), `frob ν ≤ n`,
  `frob (Tη + ν) = R`, and `phaseMat (P + Tη + ν)` is Hadamard. These are exactly the record's boundary points
  (`RecordCert.decompN`). A certifier may therefore enclose their `ν` more tightly than `‖ν‖ ≤ n`, for example by
  the Krawczyk refinement over the `η`-box proposed in FORMAT, as long as it covers every such Hadamard point.

`RecBoundaryCover.ofBoundaryCover` converts a `BoundaryCover`.

`SeedAtlasCertificate` (`Atlas.lean`) consists of the seed balls `S` (indexed by the finite type `σs`), the records
`A` (indexed by the finite type `ιr`), the two boundary covers, and the records of Tao's matrix and of F₆. The
certificate of the main theorem, `EdgeX.EdgeAtlasCertificate` (`EdgeXAtlas.lean`), has the ball at F₆ in place of
F₆'s record.

## The ball at F₆ (SPEC §10–10.2)

The code calls this ball the X-ball, or an edge ball.

`EdgeBallCert` has the data `r, Q, P, U, n, t, lamF, PF, TF, σF, RG, eta`. The certifier establishes the following
fields.

* `hcol` and `hfrob`, as for a seed ball.
* `hC1e`, the enclosure for the ball at F₆:
  `∀ w, wnorm w ≤ r → IsHadamard (phaseMat (Q w)) ∧ ∃ N, frob (Q w − P − tang U w − wind N) ≤ n`. Here `Q w` is
  the phase matrix of `H(p)`, with `p = M w`, in the gauge of F₆'s record (its corner `(0,1,2)`, 0-based). The ball at
  F₆ stays in the dephased gauge (SPEC §11).
* `hcont : ContinuousOn Q {w | wnorm w ≤ r}`.
* The graph property (G), in three fields. The first is `hσF : ∀ ν` horizontal with `⟨TF k, ν⟩ = 0`,
  `σF * frob ν ≤ outNorm (Jac PF ν)`. This is a record's `hσ`, and the F₆ record supplies `P, T, σ, hσ`. The others
  are `hRG : 2√3 · RG < σF` and `hG : ∀ w, wnorm w ≤ r → frob (hor (Q w − PF)) < RG`.
* `eta : RMat6 →L[ℝ] ℝ⁴` with `heta`: for horizontal `δ`, `δ − tang TF (eta δ)` is horizontal and orthogonal to
  every `TF k`. For example, `eta = (TFᵀ TF)⁻¹ TFᵀ` (exact).
* The openness property (D), `hopen : ∀ w₀, wnorm w₀ < r → f '' {‖w‖ < r} ∈ 𝓝 (f w₀)`, where
  `f w = eta (hor (Q w − PF))`. `hopen_of_strictDeriv` derives it from the hypothesis of SPEC §10.1, an invertible
  strict derivative at each interior point. A slope Krawczyk solve of `f(w) = η` also gives it.

The transfer into the chart at F₆, T3, is `EdgeInQ E B N Y`, stated on the phases `Y` of the source point. It requires
`frob (hor (B.act Y + wind N − PF)) < RG` and `eta (hor (B.act Y + wind N − PF)) ∈ f '' {‖w‖ < r}`. Then
`g · e^{iY} ∼ e^{iQ(w')}` by (G). From a seed ball, the claim is on a representative `RepO` (as for T2). From a
record, it is for every boundary `ν` (as for T1′). From the ball at F₆, it is on `Q(w)`. The anchor at `F6` is
`fourier : ∃ e, CoveredMatrix (E e).Ball F6` (`fourier_of_edge`, from `F6 ∼ e^{iQ(w)}`).

The ball at F₆ of the main theorem, `EdgeX.EdgeBallCert`, has every geometric field of `EdgeBallCert`: the enclosure
`hC1e`, (G), (D), `hcol` and `hfrob`. In place of local tests it has three fields.

- A radius `ρ`.
- `exclusion : XExclusion ρ`. It states that no Hadamard matrix within phase distance ρ of F₆ is
  extendable. It is supplied by the displacement form `core0175` of `NoFourMUBs.X.Radius0175` at ρ = 7/40.
- `hX : ∀ w, wnorm w ≤ r → ∃ N, frob (hor (Q w + wind N − F6phase)) ≤ ρ`. It states that the image of the ball at
  F₆ lies within phase distance ρ of F₆. The certifiers check it as `image_delta_max < x_radius`.

`EdgeX.EdgeBallCert.excludes` derives from these fields that no matrix in the ball at F₆ is extendable. The
transfers into the chart at F₆ (T3), the openness and the anchor at F₆ are in `EdgeXAtlas`.

## Two departures from SPEC §10

First, T3 does not use positional tubes of the augmented systems. Near `y = 0`, a source whose vertical side is on
the nonmatched branch (`Ψ(C) = Ψ(B)`) sits inside the vertical tube, and only the strict-corner converse (SM
Proposition S.4) excludes it. Tube uniqueness therefore does not give `K ∼ H(p_K)`. T3 goes through (G) instead, as the openness does.

Second, (G) needs `2√3 R_G < σ`, where SPEC has `R_G < σ/L`. The image of the ball at F₆ needs `‖h(Q − P_F)‖ < R_G`.
