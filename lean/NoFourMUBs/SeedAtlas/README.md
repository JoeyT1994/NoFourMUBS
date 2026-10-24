# Seed atlas in Lean (piece D of `proof/seed_atlas/SPEC.md`)

```lean
theorem NoFourMUBs.FinalSeed.no_four_mubs_seed (C : SeedAtlas.SeedAtlasCertificate) : ¬ FourMUBs
```

Only `propext`, `Classical.choice` and `Quot.sound` (audited by `SeedAtlas/Axioms.lean`, 16 theorems). The route is
`Final.no_four_mubs`'s: the covered classes `W` are clopen and contain `F6`, then
`Step2.coverage_of_matched_density` with `L1.matchedExistence`, `Step2.matchedUniqueness` and
`PRM.densityReach PRM.strictCornerCoverage` (the weaker classification `PRM.nonmatched_tao_or_fourier`).

## Modules

| Module | Content |
|---|---|
| `Seed` | `seedOf θ = e^{iθ}`, `wnorm`, `psi` (the SPEC's `Ψ`), the oriented matched relation `MatchedO o p H`, conjugation (`matchedO_conj`: `f₋(θ) = conj f₊(θ̄)`), uniqueness in both orientations (`matchedO_unique`), the side formulas `2 Re T = χ`, `R = 4 (Im T)²` for both sides of a dephased Hadamard matrix (`right_formula`, `lower_formula`), **signs decide the orientation** (`matchedO_of_signs`, `signs_of_matchedO`), closedness (`isClosed_matchedO`), corners (`cornerMat`, `matchedO_of_corner`) and the linear corner seed (`cornerTheta`, `leadingBlock_cornerMat_phaseMat`) |
| `OpenMap` | **The open-map lemma** (SPEC §5): `isOpen_matchedImage`, `isOpen_classImage`, `classImage_mem_nhds` |
| `Cert` | `SeedBallCert` (C1 as the hypothesis field `hC1`, Stage C as `StageCCert`), `enclosure`, `excludes` |
| `Transfer` | Targets `SeedTarget` (T0, T1, T2) and `RecTarget` (record, T1′), their semantic claims `SeedTargetHolds`, `RecTargetHolds`, `CornerIn`, and the transfer lemmas `transfer_t0`, `transfer_t1`, `transfer_t2`, `transfer_t1'` |
| `Atlas` | `SeedBoundaryCover`, `RecBoundaryCover` (C2), `SeedAtlasCertificate`, compactness (`isCompact_seedBall`), `covered_iff_interiorTarget`, `isOpen_interiorTarget`, **`SeedAtlasCertificate.clopen`** |
| `../FinalSeed` | `FinalSeed.no_four_mubs_seed` |
| `Axioms` | the axiom audit (31 theorems) |
| `Method/` | **Soundness of the C1 method** (not imported by `FinalSeed`; see below) |

No existing module is changed.

## Conventions the certifier must match

* **Indices.** `I6 = Fin 3 ⊕ Fin 3`: index `0..5` is `inl 0, inl 1, inl 2, inr 0, inr 1, inr 2`. Phase matrices
  are `RMat6`, `phaseMat Q = (e^{i Q_ab})`.
* **Seed.** `θ ∈ ℝ⁴`, `seedOf θ i = e^{iθ_i}`, corner `E = [[1,1,1],[1,a,b],[1,c,d]]` with `(a,b,c,d) = e^{iθ}`
  (`θ₁ ↔ E₁₁, θ₂ ↔ E₁₂, θ₃ ↔ E₂₁, θ₄ ↔ E₂₂`).
* **Orientation.** `o : ℤˣ` (`±1`), literally the SPEC's: `o = sign Im Ψ(B)` with
  `Ψ(X) = perm(X) det(X)² / ∏ X_ab` (`psi`, `= −Step2.sideSignature`), and matched means `sign Im Ψ(C) = −o`
  (`C` the lower-left block; `Ψ` is transpose-invariant). `MatchedO o p H` states it through the roots:
  `H` dephased, leading block `E(p)`, `2T(B) = χ − o i√R`, `2T(C) = χ + o i√R`, `T = −Ψ`.
  **Note:** `PROOF.md`'s `H₊` (`Step2.Matched`, `−Ψ(B) = ζ₊ = (χ + i√R)/2`, so `Im Ψ(B) < 0`) is **`o = −1`**
  here (`matchedO_neg_iff`). Both orientations are in the atlas, so the proof does not care, but the certificate's
  `o` must be computed as `sign Im Ψ(B)` with the SPEC's `Ψ`, not with `PROOF.md`'s `T`.
* **Ball.** `θ(w) = θ₀ + M_θ w`, `‖w‖ = wnorm w = √(Σ w_k²)`. `M_θ` must be invertible (`hMth : IsUnit Mth.det`).
* **Frame.** `U : Fin 4 → RMat6`, `U k` = column `k` of the SPEC's `36 × 4` matrix `U` (row-major `6 × 6`);
  `U w = tang U w = Σ_k w_k U k`.
* **Windings.** `wind N = 2π N` for `N : Matrix I6 I6 ℤ`; T0's winding is `N : Fin 4 → ℤ`.
* **Γ.** `k : Fin 4` with `gfun k = id, conj, ᵀ, conj ∘ ᵀ` (`k = 0, 1, 2, 3`); on phases `gphase k Q = Q, −Q, Qᵀ, −Qᵀ`.
* **Corners.** An ordered corner `(I, J)` is given by two permutations `σ τ : Equiv.Perm I6` with
  `I = (σ (inl 0), σ (inl 1), σ (inl 2))`, `J = (τ (inl 0), τ (inl 1), τ (inl 2))` (the rest of `σ`, `τ` is
  irrelevant). `cornerMat k σ τ K = dephase ((gfun k K).submatrix σ τ)`; its corner seed is
  `cornerTheta (gphase k Q) σ τ`, `θ'₁ = Q'_{i₁j₁} − Q'_{i₁j₀} − Q'_{i₀j₁} + Q'_{i₀j₀}` etc.
  (`leadingBlock_cornerMat_phaseMat`), and its two `Ψ` are those of `K[I, Jᶜ]` and `K[Iᶜ, J]` for `K = g · K₀`
  (`psi_rightBlock_cornerMat`, `psi_lowerBlock_cornerMat`), as FORMAT §4 computes them.

## What each hypothesis says (the certifier establishes these)

`SeedBallCert` (`Cert.lean`): data `theta0, Mth, r, o, P, U, n, t, lamF` and
* `hMth : IsUnit Mth.det`; `ht0 : 0 ≤ t`; `hF0 : 0 ≤ lamF`;
* `hcol : ∀ w i, colnorm (tang U w) i ≤ t * wnorm w` (`t ≥ maxᵢ ‖U_(i)‖₂`, `U_(i)` the `6 × 4` block of column `i`);
* `hfrob : ∀ w, frob (tang U w) ≤ lamF * wnorm w` (`lamF ≥ ‖U‖₂`);
* **`hC1`** (C1):
  ```lean
  ∀ w, wnorm w ≤ r → 0 < seedR (seedOf (theta0 + Mth *ᵥ w)) ∧
    ∃ Q N, IsHadamard (phaseMat Q) ∧ MatchedO o (seedOf (theta0 + Mth *ᵥ w)) (phaseMat Q) ∧
      frob (Q - P - tang U w - wind N) ≤ n
  ```
* `stageC : StageCCert ((1/2π) • P) U (r/2π) (n/2π) ((t r + n)/2π) ((lamF r + n)/2π)`
  (`stagec.stage_c(P/2π, rcol/2π, tang=(U, r/2π, n/2π), radius=label_radius, rF=rF/2π)`).

`SeedBoundaryCover S A j` (C2 for a seed ball): boxes `box b ⊆ ℝ⁴` covering `{wnorm w = r_j}`, and on each box,
for `wnorm w = r_j`, the target's claim `SeedTargetHolds`:
* **T0** `t0 l N`: `o_l = o_j` and `∃ w', wnorm w' < r_l ∧ θ_l(w') = θ_j(w) + 2πN`;
* **T1** `t1 l k σ τ`: `∃ K` Hadamard, `MatchedO o_j (seedOf (θ_j w)) K`, and `CornerIn (S l) k σ τ K`:
  `∃ w', wnorm w' < r_l ∧ leadingBlock (cornerMat k σ τ K) = seedCorner (seedOf (θ_l w'))`,
  `0 < o_l · Im Ψ(B)` and `0 < −o_l · Im Ψ(C)` for the blocks of `cornerMat k σ τ K`;
* **T2** `t2 l B N`: `∃ Q`, `phaseMat Q` Hadamard and `MatchedO o_j (seedOf (θ_j w))`, with
  `frob (hor (B.act Q + wind N − P_l)) < R_l` (`B : SignedPerm`, as in the current `BoundaryCover`).

`RecBoundaryCover S A l` (C2 for a record, FORMAT §6): `η`-boxes covering the shell
`{‖η‖ ≤ r_H, R² − n² ≤ ‖Tη‖² ≤ R²}`, each box with a target whose claim (`RecTargetHolds`) holds for `η` in the box
and in that shell:
* `record l' B N`: Lemma 4.1's inequality, as now;
* **T1′** `t1' j k σ τ`: for every `ν` in the complement `N` of the frame (`IsHorizontal ν`, `⟨T_k, ν⟩ = 0` for all
  `k`) with `frob ν ≤ n`, `frob (Tη + ν) = R` and `phaseMat (P + Tη + ν)` Hadamard,
  `CornerIn (S j) k σ τ (phaseMat (P + Tη + ν))`. These are exactly the record's boundary points
  (`RecordCert.decompN`), so a certifier may enclose their `ν` more tightly than `‖ν‖ ≤ n` (e.g. FORMAT's proposed
  Krawczyk refinement over the `η`-box) as long as it covers every such Hadamard point.
`RecBoundaryCover.ofBoundaryCover` converts a current `BoundaryCover`.

`SeedAtlasCertificate`: `σs` (finite) seed balls `S`, `ιr` (finite) records `A`, the two boundary covers,
`tao` and `fourier` exactly as in `AtlasCertificate` (Tao's and F6's records).

## The C1 method (`Method/`, the stretch goal)

Lemmas that make each step of SPEC §2's certification of C1 sound, so that `hC1` can later be replaced by finite
inequalities:

| Module | Content |
|---|---|
| `Method/Bounds` | `\|e^{ix} − 1 − ix + x²/2\| ≤ \|x\|³/6` (`norm_exp_I_taylor2_le`); `1 + u = \|1 + u\| e^{i(Im(u − u²/2) + R)}`, `\|R\| ≤ \|u\|³/(3(1 − \|u\|))` (`exists_arg_one_add`) |
| `Method/TaylorModel` | second-order Taylor models `TM`, `RTM` on a box and `Encl`: `add`, `smul`, `neg`, `sub`, `const`, `conj`, `re`, `im`, `mul` (the prototype's remainder exactly), `expI` (the SPEC's `ρ_new`), `arg` (step 4), `perturb` (ball coefficients), `congr_quad` (symmetrisation), `mono` |
| `Method/Krawczyk` | `krawczyk`: if `bᵢ + qᵢρ < ρ` (`b ≥ \|Y F(φ_p)\|`, `qᵢ ≥` row sums of `sup \|I − Y J\|` over the tube) then exactly one zero of `F` in `φ_p + [−ρ, ρ]ᵐ`, within `b + qρ`; `Y` invertible is a consequence; `krawczyk_param` over a box of parameters |
| `Method/Neumann` | `forced_mul` (`D B* = −C E*`), `residual_correction` (`D − X = −(C E* + X B*)(B*)⁻¹`), `neumann` (`‖I − A₀M‖_∞ ≤ q < 1 ⇒ \|(M⁻¹)ᵢⱼ\| ≤ \|(A₀)ᵢⱼ\| + q aⱼ/(1 − q)`), `norm_correction_le` |
| `Method/Box` | `le_of_vertices` (convex ⇒ max at the `2ᵈ` vertices), `box_bound` (step 5: vertex max of the affine part + `Σ ‖H_jl‖ hⱼh_l` + `ρ`) |
| `Method/Completion` | `matchedO_of_certified_sides`: sides solving the two Gram equations with `sign Im Ψ(B) = o`, `sign Im Ψ(V) = −o` give a Hadamard matrix `[[E, B], [Vᵀ, D]]` that is `MatchedO o` (L1's flatness with either root, then `matchedO_of_signs`) — so the matrix the method encloses is a representative of `f_o(θ)`, pointwise |

Not done: the side Gram residual `F(φ; G)` and its Jacobian as Lean functions (the `hF` input of `krawczyk`), and the
assembly of a per-box certificate format into a theorem `finite inequalities ⇒ hC1`.

## Build

From a built `NoFourMUBs.Final`, `lake build NoFourMUBs.FinalSeed` takes about 2 min (serial chain `Seed` 34 s,
`Cert` 16 s, `OpenMap` 17 s, `Transfer` 14 s, `Atlas` 21 s, `FinalSeed` 14 s), peak 5.9 GB; the `Method/` modules add
about 1 min (`Completion` 29 s, the others 13–15 s each, in parallel with the main chain) (24 Oct 2026, 18-core Apple
laptop, shared).

To audit with `check_axioms.py --full`, add after the `Final` build:
`build('NoFourMUBs.FinalSeed'); audit('NoFourMUBs/SeedAtlas/Axioms.lean')`.

## Edge balls (SPEC §10–10.2): `F6`'s 25-dim record replaced

```lean
theorem NoFourMUBs.EdgeFinal.no_four_mubs_seed (C : SeedAtlas.EdgeAtlasCertificate) : ¬ FourMUBs
```

Only `propext`, `Classical.choice` and `Quot.sound` (`SeedAtlas/EdgeAxioms.lean`). New modules:

| Module | Content |
|---|---|
| `EdgeGraph` | **(G)** `graph_unique`: two Hadamards `e^{i(P + δᵢ)}`, `‖δᵢ‖ ≤ R`, `2√3 R < σ`, `δ₁ − δ₂` in the frame's normal complement ⇒ `δ₁ = δ₂` (the mean value theorem along the segment, calculus-free) |
| `Edge` | `EdgeBallCert`, `excludes` (Stage C), `isCompact_ball`, `equivalent_of_eta` (the chart is unique near `F6`), **`isOpen_edgeInterior`** (openness at every interior point, `y = 0` included), `hopen_of_strictDeriv` (SPEC §10.1's IFT form of (D)) |
| `EdgeAtlas` | T3 (`EdgeInQ`, `edgeInterior_of_edgeInQ`), targets `SeedTargetE` (T0–T3), `RecTargetE` (Lemma 4.1, T1′, T3), `EdgeTarget` (T1, T2, T3), covers, `EdgeAtlasCertificate`, **`EdgeAtlasCertificate.clopen`** |
| `EdgeFinal` | `EdgeFinal.no_four_mubs_seed` |

`EdgeBallCert` (the certifier establishes these): data `r, Q, P, U, n, t, lamF, PF, TF, σF, RG, eta` and
* `hcol`, `hfrob`, `stageC`: as for a seed ball;
* **`hC1e`** (C1e): `∀ w, wnorm w ≤ r → IsHadamard (phaseMat (Q w)) ∧ ∃ N, frob (Q w − P − tang U w − wind N) ≤ n`;
  `Q w` is the phase matrix of `H(p)`, `p = M w`, in the gauge of `F6`'s record (its corner `(0,1,2)`);
* `hcont : ContinuousOn Q {w | wnorm w ≤ r}`;
* **(G)** `hσF : ∀ ν` horizontal with `⟨TF k, ν⟩ = 0`, `σF * frob ν ≤ outNorm (Jac PF ν)` (a record's `hσ`: the F6
  record supplies `P, T, σ, hσ`); `hRG : 2√3 · RG < σF`; `hG : ∀ w, wnorm w ≤ r → frob (hor (Q w − PF)) < RG`;
* `eta : RMat6 →L[ℝ] ℝ⁴` with `heta`: for horizontal `δ`, `δ − tang TF (eta δ)` is horizontal and orthogonal to every
  `TF k` (e.g. `eta = (TFᵀ TF)⁻¹ TFᵀ`, exact);
* **(D)** `hopen : ∀ w₀, wnorm w₀ < r → f '' {‖w‖ < r} ∈ 𝓝 (f w₀)`, `f w = eta (hor (Q w − PF))`.
  `hopen_of_strictDeriv` derives it from SPEC §10.1's hypothesis (an invertible strict derivative at each interior
  point); a slope Krawczyk solve of `f(w) = η` also gives it.

T3 (`EdgeInQ E B N Y`, on phases `Y` of the source point): `frob (hor (B.act Y + wind N − PF)) < RG` and
`eta (hor (B.act Y + wind N − PF)) ∈ f '' {‖w‖ < r}`; then `g · e^{iY} ≅ e^{iQ(w')}` by (G). From a seed ball the
claim is on a matched representative (as T2), from a record for every boundary `ν` (as T1′), from an edge ball on
`Q(w)`. The `F6` anchor: `fourier : ∃ e, CoveredMatrix (E e).Ball F6` (`fourier_of_edge` from `F6 ≅ e^{iQ(w)}`).

**Two departures from SPEC §10.** (i) T3 does not use positional tubes of the augmented systems: near `y = 0` a
source whose vertical side is on the nonmatched branch (`Ψ(C) = Ψ(B)`) sits inside the vertical tube, and only the
converse excludes it, so tube uniqueness does not give `K ≅ H(p_K)`. T3 goes through (G) instead, as the openness
does. (ii) (G) needs `2√3 R_G < σ`, the SPEC's `R_G < σ/L`; the edge image needs `‖h(Q − P_F)‖ < R_G`.
