import NoFourMUBs.SeedAtlas.Edge
import NoFourMUBs.SeedAtlas.XShape

/-!
# Edge balls excluded by X

This statement variant keeps the geometric obligations of `SeedAtlas.EdgeBallCert`, replacing
Stage C by `XExclusion ρ` and a certified horizontal image bound. The namespace keeps the existing
Stage C route unchanged. `EdgeXFinal` assembles these balls with the seed and record certificates.
-/

open Matrix Hadamard6 Topology Filter Set NoFourMUBs.Step2

noncomputable section

namespace NoFourMUBs.SeedAtlas.EdgeX

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
  /-- **C1e**: Hadamard, with the phase enclosure retained for interoperability. -/
  hC1e : ∀ w : Fin 4 → ℝ, wnorm w ≤ r →
    Hadamard6.IsHadamard (phaseMat (Q w)) ∧ ∃ N : Matrix I6 I6 ℤ, frob (Q w - P - tang U w - wind N) ≤ n
  hcont : ContinuousOn Q {w | wnorm w ≤ r}
  /-- The radius in the independently proved X exclusion theorem. -/
  ρ : ℝ
  exclusion : XExclusion ρ
  /-- The horizontal phase image lies in the X neighbourhood, allowing windings. -/
  hX : ∀ w : Fin 4 → ℝ, wnorm w ≤ r →
    ∃ N : Matrix I6 I6 ℤ, frob (hor (Q w + wind N - F6phase)) ≤ ρ
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

/-! ### Exclusion -/

/-- X excludes the chart image, including arbitrary certified phase windings. -/
theorem EdgeBallCert.excludes (E : EdgeBallCert) {K : Mat6} (hK : E.Ball K) : ¬ QuartetEdge K := by
  obtain ⟨w, hw, rfl⟩ := hK
  obtain ⟨N, hN⟩ := E.hX w hw
  have he : Equivalent (phaseMat (F6phase + hor (E.Q w + wind N - F6phase)))
      (phaseMat (E.Q w)) := by
    have h := SeedAtlas.equivalent_hor_sub F6phase (E.Q w + wind N)
    simpa only [wind, phaseMat_add_winding] using h
  have hH := isHadamard_of_equivalent (equivalent_symm he) (E.isHadamard hw)
  exact fun hq => E.exclusion _ (hor_isHorizontal _) hN hH
    (quartetEdge_of_equivalent (equivalent_symm he) hq)

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

end NoFourMUBs.SeedAtlas.EdgeX
