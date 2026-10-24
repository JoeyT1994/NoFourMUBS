import NoFourMUBs.SeedAtlas.EdgeGraph
import NoFourMUBs.SeedAtlas.Atlas

/-!
# Edge balls: the four-dimensional chart through `F6` (`proof/seed_atlas/SPEC.md` §10–10.2)

An `EdgeBallCert` replaces `F6`'s 25-dimensional record.  Its chart `w ↦ Q(w)` (`‖w‖ ≤ r`) gives the phases of the
completion `H(p)`, `p = M w`, of the augmented systems (U eq. 20); the certificate's statements are semantic:
* **C1e** (`hC1e`): `e^{iQ(w)}` is Hadamard and `‖Q(w) − P − U w − 2πN‖ ≤ n`; with the Stage C certificate
  (`stageC`, the same as a seed ball's) this excludes every point of the image (`EdgeBallCert.excludes`).
* **Continuity** of `Q` on the closed ball (`hcont`; the image is compact).
* **(G)** (§10.2): `F6`'s centre `P_F` and frame `T_F` with the normal bound `σ_F ‖ν‖ ≤ ‖J ν‖` on `T_F`'s horizontal
  complement (a record's `hσ`), a radius `R_G` with `2√3 R_G < σ_F`, and the image inside `‖h(Q(w) − P_F)‖ < R_G`.
  The uniqueness itself is a theorem (`graph_unique`).
* **(D)** (§10.1): a linear `η` with `δ − T_F η(δ) ∈ N_F` for horizontal `δ` (`heta`; e.g. `η = (T_FᵀT_F)⁻¹T_Fᵀ`), and
  the chart map `f(w) = η(h(Q(w) − P_F))` open at every interior `w`: `f(B_r)` is a neighbourhood of `f(w₀)`
  (`hopen`).  SPEC §10.1's form, `f` strictly differentiable with an invertible derivative, gives it by the inverse
  function theorem (`hopen_of_strictDeriv`, `HasStrictFDerivAt.map_nhds_eq_of_equiv`); a slope Krawczyk solve of
  `f(w) = η` over `w`-boxes gives it too, without differentiating the implicitly defined `Q`.

**The chart is unique near `F6`** (`EdgeBallCert.equivalent_of_eta`): a Hadamard `e^{i(P_F + δ)}`, `δ` horizontal,
`‖δ‖ ≤ R_G`, with `η(δ) = η(h(Q(w') − P_F))`, is equivalent to `e^{iQ(w')}` (by (G)).  This gives both the openness
below and the transfer T3 into the edge ball (`EdgeAtlas.lean`); no tube of the augmented systems is needed for
either (positional tubes cannot tell a nonmatched-type vertical side from the matched one near `y = 0`).

**Openness** (`isOpen_edgeInterior`).  The matrices equivalent to `e^{iQ(w)}`, `‖w‖ < r`, form an open set of Hadamard
matrices; `y = 0` points included, and no converse or labels are used.  Near `M₀ ≅ e^{iQ(w₀)} ≅ e^{i(P_F + δ₀)}`,
every Hadamard `M` is `≅ e^{i(P_F + δ)}` with `δ` horizontal and close to `δ₀` (the chart of `Step4`); by (D),
`η(δ) = η(δ')` for `δ' = h(Q(w') − P_F)` with `w'` near
`w₀`; then `δ − δ' ∈ N_F`, both are Hadamard displacements of norm `≤ R_G`, and (G) gives `δ = δ'`, so
`M ≅ e^{iQ(w')}`.
-/

open Matrix Hadamard6 Topology Filter Set NoFourMUBs.Step2

noncomputable section

namespace NoFourMUBs.SeedAtlas

open StageC

/-- **A certified edge ball** (SPEC §10). -/
structure EdgeBallCert where
  r : ℝ
  /-- The chart: the phases of `H(p(w))`. -/
  Q : (Fin 4 → ℝ) → RMat6
  P : RMat6
  U : Fin 4 → RMat6
  n : ℝ
  t : ℝ
  lamF : ℝ
  ht0 : 0 ≤ t
  hF0 : 0 ≤ lamF
  hcol : ∀ (w : Fin 4 → ℝ) (i : I6), colnorm (tang U w) i ≤ t * wnorm w
  hfrob : ∀ w : Fin 4 → ℝ, frob (tang U w) ≤ lamF * wnorm w
  /-- **C1e**: Hadamard, with the enclosure `‖Q − P − U w − 2πN‖ ≤ n`. -/
  hC1e : ∀ w : Fin 4 → ℝ, wnorm w ≤ r →
    Hadamard6.IsHadamard (phaseMat (Q w)) ∧ ∃ N : Matrix I6 I6 ℤ, frob (Q w - P - tang U w - wind N) ≤ n
  hcont : ContinuousOn Q {w | wnorm w ≤ r}
  stageC : StageCCert ((1 / (2 * Real.pi)) • P) U (r / (2 * Real.pi)) (n / (2 * Real.pi))
    ((t * r + n) / (2 * Real.pi)) ((lamF * r + n) / (2 * Real.pi))
  /-- (G): `F6`'s centre and frame, the normal bound and the radius `R_G`. -/
  PF : RMat6
  TF : Fin 4 → RMat6
  σF : ℝ
  hσF : ∀ ν, IsHorizontal ν → (∀ k, ∑ a, ∑ c, TF k a c * ν a c = 0) → σF * frob ν ≤ outNorm (Jac PF ν)
  RG : ℝ
  hRG : 2 * Real.sqrt 3 * RG < σF
  hG : ∀ w : Fin 4 → ℝ, wnorm w ≤ r → frob (hor (Q w - PF)) < RG
  /-- The frame coordinates `η` of a horizontal displacement: `δ − T_F η(δ) ∈ N_F`. -/
  eta : RMat6 →L[ℝ] (Fin 4 → ℝ)
  heta : ∀ δ, IsHorizontal δ →
    IsHorizontal (δ - tang TF (eta δ)) ∧ ∀ k, ∑ a, ∑ c, TF k a c * (δ - tang TF (eta δ)) a c = 0
  /-- (D), in the form the openness uses: the chart map `w ↦ η(h(Q(w) − P_F))` maps the open ball onto a
  neighbourhood of each of its values (`hopen_of_strictDeriv`: an invertible strict derivative gives it). -/
  hopen : ∀ w0 : Fin 4 → ℝ, wnorm w0 < r →
    (fun w => eta (hor (Q w - PF))) '' {w | wnorm w < r} ∈ 𝓝 (eta (hor (Q w0 - PF)))

namespace EdgeBallCert

variable (E : EdgeBallCert)

/-- The edge ball image: `e^{iQ(w)}`, `‖w‖ ≤ r`. -/
def Ball (K : Mat6) : Prop := ∃ w, wnorm w ≤ E.r ∧ K = phaseMat (E.Q w)

/-- The chart map `w ↦ η(h(Q(w) − P_F))`. -/
def chart (w : Fin 4 → ℝ) : Fin 4 → ℝ := E.eta (hor (E.Q w - E.PF))

lemma isHadamard {w : Fin 4 → ℝ} (hw : wnorm w ≤ E.r) : Hadamard6.IsHadamard (phaseMat (E.Q w)) := (E.hC1e w hw).1

end EdgeBallCert

/-- **(D) from the inverse function theorem** (SPEC §10.1): an invertible strict derivative at every point of the open
ball makes the chart map open there. -/
theorem hopen_of_strictDeriv {f : (Fin 4 → ℝ) → (Fin 4 → ℝ)} {r : ℝ}
    (hD : ∀ w : Fin 4 → ℝ, wnorm w < r → ∃ f' : (Fin 4 → ℝ) ≃L[ℝ] (Fin 4 → ℝ),
      HasStrictFDerivAt f (f' : (Fin 4 → ℝ) →L[ℝ] (Fin 4 → ℝ)) w) :
    ∀ w0 : Fin 4 → ℝ, wnorm w0 < r → f '' {w | wnorm w < r} ∈ 𝓝 (f w0) := by
  intro w0 hw0
  obtain ⟨f', hf'⟩ := hD w0 hw0
  have hball : {w : Fin 4 → ℝ | wnorm w < r} ∈ 𝓝 w0 := (isOpen_lt continuous_wnorm continuous_const).mem_nhds hw0
  have : f '' {w | wnorm w < r} ∈ map f (𝓝 w0) := image_mem_map hball
  rwa [hf'.map_nhds_eq_of_equiv] at this

/-! ### Exclusion -/

/-- Stage C with a frame `U`: `e^{i(P + U w + ν)}`, `‖w‖ ≤ r`, `‖ν‖ ≤ n`, is not a quartet edge (the argument of
`SeedBallCert.excludes`, for any data with the column and Frobenius bounds). -/
theorem excludes_tang {P : RMat6} {U : Fin 4 → RMat6} {r n t lamF : ℝ} (ht0 : 0 ≤ t) (hF0 : 0 ≤ lamF)
    (hcol : ∀ (w : Fin 4 → ℝ) (i : I6), colnorm (tang U w) i ≤ t * wnorm w)
    (hfrob : ∀ w : Fin 4 → ℝ, frob (tang U w) ≤ lamF * wnorm w)
    (stageC : StageCCert ((1 / (2 * Real.pi)) • P) U (r / (2 * Real.pi)) (n / (2 * Real.pi))
      ((t * r + n) / (2 * Real.pi)) ((lamF * r + n) / (2 * Real.pi)))
    {w : Fin 4 → ℝ} {ν : RMat6} (hw : wnorm w ≤ r) (hν : frob ν ≤ n) :
    ¬ QuartetEdge (phaseMat (P + (tang U w + ν))) := by
  intro hq'
  set δ := tang U w + ν
  have hpi := Real.pi_pos
  set c := 1 / (2 * Real.pi)
  have hc0 : 0 < c := by positivity
  have hcabs : |c| = c := abs_of_pos hc0
  have hadm : Admissible U (r / (2 * Real.pi)) (n / (2 * Real.pi)) ((t * r + n) / (2 * Real.pi))
      ((lamF * r + n) / (2 * Real.pi)) (c • δ) := by
    refine ⟨⟨fun k => c * w k, c • ν, ?_, ?_, ?_⟩, fun i => ?_, ?_⟩
    · simp only [δ, tang, smul_add, Finset.smul_sum]; congr 1
      exact Finset.sum_congr rfl fun k _ => by rw [smul_smul]
    · have : Real.sqrt (∑ k, (c * w k) ^ 2) = c * wnorm w := by
        simp only [mul_pow, ← Finset.mul_sum]
        rw [Real.sqrt_mul (sq_nonneg c), Real.sqrt_sq hc0.le]; rfl
      rw [this, div_eq_mul_one_div, mul_comm r]
      exact mul_le_mul_of_nonneg_left hw hc0.le
    · rw [frob_smul, hcabs, div_eq_mul_one_div, mul_comm n]
      exact mul_le_mul_of_nonneg_left hν hc0.le
    · rw [colnorm_smul, hcabs, div_eq_mul_one_div, mul_comm _ (1 / (2 * Real.pi))]
      refine mul_le_mul_of_nonneg_left ?_ hc0.le
      calc colnorm δ i ≤ colnorm (tang U w) i + colnorm ν i := colnorm_add_le _ _ _
        _ ≤ t * wnorm w + frob ν := add_le_add (hcol w i) (colnorm_le_frob _ _)
        _ ≤ t * r + n := add_le_add (mul_le_mul_of_nonneg_left hw ht0) hν
    · rw [frob_smul, hcabs, div_eq_mul_one_div, mul_comm _ (1 / (2 * Real.pi))]
      refine mul_le_mul_of_nonneg_left ?_ hc0.le
      calc frob δ ≤ frob (tang U w) + frob ν := frob_add_le _ _
        _ ≤ lamF * wnorm w + frob ν := add_le_add (hfrob w) le_rfl
        _ ≤ lamF * r + n := add_le_add (mul_le_mul_of_nonneg_left hw hF0) hν
  rw [phaseMat_eq_E, smul_add] at hq'
  exact stageC.excludes hadm hq'

/-- **Stage C exclusion on an edge ball.** -/
theorem EdgeBallCert.excludes (E : EdgeBallCert) {K : Mat6} (hK : E.Ball K) : ¬ QuartetEdge K := by
  obtain ⟨w, hw, rfl⟩ := hK
  obtain ⟨-, N, hn⟩ := E.hC1e w hw
  have e : phaseMat (E.Q w) = phaseMat (E.P + (tang E.U w + (E.Q w - E.P - tang E.U w - wind N))) := by
    rw [← phaseMat_add_winding (E.P + (tang E.U w + (E.Q w - E.P - tang E.U w - wind N))) N]
    congr 1
    simp only [wind]; abel
  rw [e]
  exact excludes_tang E.ht0 E.hF0 E.hcol E.hfrob E.stageC hw hn

/-- **The edge ball image is compact.** -/
theorem EdgeBallCert.isCompact_ball (E : EdgeBallCert) : IsCompact {K : Mat6 | E.Ball K} := by
  have h := (isCompact_wball E.r).image_of_continuousOn (continuous_phaseMat.comp_continuousOn E.hcont)
  convert h using 1
  ext K
  simp only [EdgeBallCert.Ball, Set.mem_ofPred_eq, Set.mem_image, Function.comp_apply]
  constructor
  · rintro ⟨w, hw, rfl⟩; exact ⟨w, hw, rfl⟩
  · rintro ⟨w, hw, rfl⟩; exact ⟨w, hw, rfl⟩

/-! ### Openness -/

/-- `M` is equivalent to an interior point `e^{iQ(w)}`, `‖w‖ < r`, of the edge ball. -/
def EdgeInterior (E : EdgeBallCert) (M : Mat6) : Prop := ∃ w, wnorm w < E.r ∧ Equivalent M (phaseMat (E.Q w))

lemma EdgeInterior.of_equivalent {E : EdgeBallCert} {M M' : Mat6} (h : EdgeInterior E M') (hM : Equivalent M M') :
    EdgeInterior E M := by
  obtain ⟨w, hw, he⟩ := h
  exact ⟨w, hw, equivalent_trans hM he⟩

lemma EdgeInterior.ball {E : EdgeBallCert} {M : Mat6} (h : EdgeInterior E M) : ∃ K, E.Ball K ∧ Equivalent M K := by
  obtain ⟨w, hw, he⟩ := h
  exact ⟨_, ⟨w, hw.le, rfl⟩, he⟩

lemma isHorizontal_sub {Y Z : RMat6} (hY : IsHorizontal Y) (hZ : IsHorizontal Z) : IsHorizontal (Y - Z) :=
  ⟨fun i => by simp [Matrix.sub_apply, Finset.sum_sub_distrib, hY.1 i, hZ.1 i],
   fun j => by simp [Matrix.sub_apply, Finset.sum_sub_distrib, hY.2 j, hZ.2 j]⟩

/-- The chart of `Step4` near an interior point, with the displacement close to `δ₀`: near `x₀` with
`Ψ(x₀) = e^{i(P + δ₀)}`, `Ψ(x) ≅ e^{i(P + δ)}` with `δ` horizontal in any given neighbourhood of `δ₀`. -/
theorem eventually_near {X : Type*} [TopologicalSpace X] {P δ0 : RMat6} (hδ0 : IsHorizontal δ0)
    {Ψ : X → Mat6} (hΨc : Continuous Ψ) {x0 : X} (hΨ0 : Ψ x0 = phaseMat (P + δ0))
    (hΨu : ∀ x, EntrywiseUnit (Ψ x)) {V : Set RMat6} (hV : V ∈ 𝓝 δ0) :
    ∀ᶠ x in 𝓝 x0, ∃ δ ∈ V, IsHorizontal δ ∧ Equivalent (Ψ x) (phaseMat (P + δ)) := by
  set K0 := phaseMat (P + δ0)
  set w : X → RMat6 := fun x => Matrix.of fun i j => Complex.arg (Ψ x i j / K0 i j)
  have hK0ne : ∀ i j, K0 i j ≠ 0 := fun i j => by
    simp [K0, phaseMat, Complex.exp_ne_zero]
  have hw : ContinuousAt w x0 := by
    refine continuousAt_pi.mpr fun i => continuousAt_pi.mpr fun j => ?_
    have h1 : Ψ x0 i j / K0 i j = 1 := by rw [hΨ0]; exact div_self (hK0ne i j)
    have harg : ContinuousAt Complex.arg (Ψ x0 i j / K0 i j) := by
      rw [h1]; exact Complex.continuousAt_arg Complex.one_mem_slitPlane
    have hg : ContinuousAt (fun x => Ψ x i j / K0 i j) x0 :=
      (((continuous_apply j).comp ((continuous_apply i).comp hΨc)).div_const (K0 i j)).continuousAt
    show ContinuousAt (fun x => Complex.arg (Ψ x i j / K0 i j)) x0
    exact ContinuousAt.comp (g := Complex.arg) harg hg
  have hw0 : w x0 = 0 := by
    ext i j
    simp only [w, of_apply, Matrix.zero_apply]
    rw [hΨ0, div_self (hK0ne i j), Complex.arg_one]
  have hd : ContinuousAt (fun x => δ0 + hor (w x)) x0 :=
    continuousAt_const.add (continuous_hor.continuousAt.comp hw)
  have hd0 : δ0 + hor (w x0) = δ0 := by rw [hw0, hor_zero, add_zero]
  have hev : ∀ᶠ x in 𝓝 x0, δ0 + hor (w x) ∈ V := hd.eventually_mem (by rw [hd0]; exact hV)
  filter_upwards [hev] with x hx
  refine ⟨δ0 + hor (w x), hx, isHorizontal_add hδ0 (hor_isHorizontal _), ?_⟩
  have hΨx := phaseMat_add_arg (P := P + δ0) rfl (hΨu x)
  have hequiv := phaseMat_equivalent_add_hor (P + δ0) (w x)
  rw [← hΨx] at hequiv
  rw [← add_assoc]
  exact equivalent_equivalence.symm hequiv

/-- `e^{i(P_F + h(Q − P_F))} ≅ e^{iQ}`. -/
lemma equivalent_hor_sub (PF Q : RMat6) : Equivalent (phaseMat (PF + hor (Q - PF))) (phaseMat Q) := by
  have h := phaseMat_equivalent_add_hor PF (Q - PF)
  rwa [add_sub_cancel] at h

/-- **The chart is unique near `F6`** ((G) applied to the chart): a Hadamard `e^{i(P_F + δ)}` with `δ` horizontal,
`‖δ‖ ≤ R_G` and the frame coordinates `η(δ)` of a chart point `w'` is that chart point. -/
theorem EdgeBallCert.equivalent_of_eta (E : EdgeBallCert) {δ : RMat6} (hδh : IsHorizontal δ) (hδR : frob δ ≤ E.RG)
    (hH : Hadamard6.IsHadamard (phaseMat (E.PF + δ))) {w' : Fin 4 → ℝ} (hw' : wnorm w' ≤ E.r)
    (hη : E.chart w' = E.eta δ) : Equivalent (phaseMat (E.PF + δ)) (phaseMat (E.Q w')) := by
  set δ' := hor (E.Q w' - E.PF)
  have hH' : Hadamard6.IsHadamard (phaseMat (E.PF + δ')) :=
    isHadamard_of_equivalent (equivalent_symm (equivalent_hor_sub E.PF (E.Q w'))) (E.isHadamard hw')
  have hηe : E.eta δ' = E.eta δ := hη
  obtain ⟨hνh, hνT⟩ := E.heta δ hδh
  obtain ⟨hνh', hνT'⟩ := E.heta δ' (hor_isHorizontal _)
  have hdiff : δ - δ' = (δ - tang E.TF (E.eta δ)) - (δ' - tang E.TF (E.eta δ')) := by rw [hηe]; abel
  have hvh : IsHorizontal (δ - δ') := by rw [hdiff]; exact isHorizontal_sub hνh hνh'
  have hvT : ∀ k, ∑ a, ∑ c, E.TF k a c * (δ - δ') a c = 0 := by
    intro k
    rw [hdiff]
    simp only [Matrix.sub_apply, mul_sub, Finset.sum_sub_distrib]
    have h1 := hνT k
    have h2 := hνT' k
    simp only [Matrix.sub_apply, mul_sub, Finset.sum_sub_distrib] at h1 h2
    linarith
  have heq : δ = δ' := graph_unique E.hσF E.hRG hH hH' hδR (E.hG w' hw').le hvh hvT
  rw [heq]
  exact equivalent_hor_sub E.PF (E.Q w')

/-- **The edge-ball open-map lemma** (SPEC §10.1): the interior points of an edge ball form an open set of Hadamard
matrices, at every point of the open ball (`y = 0` included). -/
theorem isOpen_edgeInterior (E : EdgeBallCert) : IsOpen {M : Had6 | EdgeInterior E M.1} := by
  rw [isOpen_iff_mem_nhds]
  rintro M0 ⟨w0, hw0, hM0⟩
  set δ0 := hor (E.Q w0 - E.PF)
  have hδ0 : IsHorizontal δ0 := hor_isHorizontal _
  have hM0' : Equivalent M0.1 (phaseMat (E.PF + δ0)) :=
    equivalent_trans hM0 (equivalent_symm (equivalent_hor_sub E.PF (E.Q w0)))
  obtain ⟨σ, τ, r, c, hr, hc, hK⟩ := hM0'
  set Ψ : Had6 → Mat6 := fun M => Matrix.of fun i j => r i * M.1 (σ i) (τ j) * c j
  have hΨc : Continuous Ψ := by
    refine continuous_pi fun i => continuous_pi fun j => ?_
    exact (continuous_const.mul ((continuous_apply_apply (σ i) (τ j)).comp
      (continuous_subtype_val : Continuous (Subtype.val : Had6 → Mat6)))).mul continuous_const
  have hΨ0 : Ψ M0 = phaseMat (E.PF + δ0) := by ext i j; exact (hK i j).symm
  have hΨe : ∀ M : Had6, Equivalent M.1 (Ψ M) := fun M => ⟨σ, τ, r, c, hr, hc, fun i j => rfl⟩
  have hΨu : ∀ M : Had6, EntrywiseUnit (Ψ M) := fun M => (isHadamard_of_equivalent (hΨe M) M.2).1
  -- (D) at `w₀`
  have himg : E.chart '' {w | wnorm w < E.r} ∈ 𝓝 (E.chart w0) := E.hopen w0 hw0
  -- the neighbourhood of `δ₀`
  set V : Set RMat6 := E.eta ⁻¹' (E.chart '' {w | wnorm w < E.r}) ∩ {δ | frob δ < E.RG}
  have hV : V ∈ 𝓝 δ0 := by
    refine Filter.inter_mem (E.eta.continuous.continuousAt.preimage_mem_nhds himg) ?_
    exact (isOpen_lt continuous_frob continuous_const).mem_nhds (E.hG w0 hw0.le)
  filter_upwards [eventually_near hδ0 hΨc hΨ0 hΨu hV] with M ⟨δ, ⟨⟨w', hw', hη⟩, hδR⟩, hδh, hMe⟩
  have hMδ : Equivalent M.1 (phaseMat (E.PF + δ)) := equivalent_trans (hΨe M) hMe
  have hH : Hadamard6.IsHadamard (phaseMat (E.PF + δ)) := isHadamard_of_equivalent hMδ M.2
  exact ⟨w', hw', equivalent_trans hMδ (E.equivalent_of_eta hδh hδR.le hH hw'.le hη)⟩

/-- `F6`'s membership via the edge ball: the chart's centre. -/
theorem EdgeBallCert.ball_of_center (E : EdgeBallCert) (hr : 0 ≤ E.r) : E.Ball (phaseMat (E.Q 0)) :=
  ⟨0, by simp [wnorm, hr], rfl⟩

end NoFourMUBs.SeedAtlas
