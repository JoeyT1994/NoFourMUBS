import NoFourMUBs.SeedAtlas.Seed

/-!
# The open-map lemma (`proof/seed_atlas/SPEC.md` §5)

**Open-map lemma.** For `o = ±1` and an open set `V` of seed phases, the matrices equivalent to a matched completion
with orientation `o` at a strict seed of `V` form an open set of Hadamard matrices (`isOpen_matchedImage`); so
the classes `f_o(V ∩ Ω)` form an open set of the Hadamard quotient (`isOpen_classImage`), and `f_o` maps every
neighbourhood of a strict seed onto a neighbourhood of its class (`classImage_mem_nhds`).

*Proof* (the SPEC's sketch, with no further hypothesis).  Let `M₀` be equivalent to a matched completion `K₀` at the
strict seed `θ₀ ∈ V`, `K₀ = r M₀(σ·, τ·) c`.  For `M` near `M₀` put `Ψ(M) = r M(σ·, τ·) c` and `D(M) = dephase Ψ(M)`;
`D` is continuous with `D(M₀) = K₀` (`K₀` is dephased), and `D(M)` is equivalent to `M`, dephased and Hadamard.
* Its corner phases lift continuously: `θ(M)_i = θ₀_i + arg(z_i(M)/z_i(M₀))` for the four corner entries `z_i`,
  and `E(θ(M))` is the leading block of `D(M)`; `θ(M) → θ₀`, so `θ(M) ∈ V` and `R(θ(M)) > 0` near `M₀`.
* `Im Ψ` of the two sides of `D(M)` is continuous, with signs `o` and `−o` at `M₀` (`signs_of_matchedO`), so the
  signs persist near `M₀`; by the side formulas these signs make `D(M)` matched with orientation `o` at `θ(M)`
  (`matchedO_of_signs`: each signature is one of the two distinct roots `(χ ± i√R)/2`, and the sign picks it).
-/

open Matrix Hadamard6 ComplexConjugate Topology Filter Set NoFourMUBs.Step2 NoFourMUBs.Step2Topology

noncomputable section

namespace NoFourMUBs.SeedAtlas

/-- Matrices equivalent to a matched completion with orientation `o` at a strict seed with phases in `V`. -/
def MatchedImage (o : ℤˣ) (V : Set (Fin 4 → ℝ)) : Set Mat6 :=
  {M | ∃ θ ∈ V, 0 < seedR (seedOf θ) ∧ ∃ K, Hadamard6.IsHadamard K ∧ MatchedO o (seedOf θ) K ∧ Equivalent M K}

lemma continuous_dephase : Continuous dephase := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  simp only [dephase, phaseTransform, dephaseRowFactor, dephaseColumnFactor]
  fun_prop

lemma dephase_of_dephased {K : Mat6} (hd : Dephased K) : dephase K = K := by
  ext i j
  simp only [dephase, phaseTransform, dephaseRowFactor, dephaseColumnFactor, hd.1, hd.2, star_one, mul_one,
    one_mul]

/-- The four corner positions `(1,1), (1,2), (2,1), (2,2)` of the leading block. -/
def cornerIdx : Fin 4 → I3 × I3 := ![(1, 1), (1, 2), (2, 1), (2, 2)]

/-- A dephased matrix whose four corner entries are `e^{iθ}` has leading block `E(θ)`. -/
lemma leadingBlock_of_corner {D : Mat6} (hd : Dephased D) {θ : Fin 4 → ℝ}
    (h : ∀ i, D (.inl (cornerIdx i).1) (.inl (cornerIdx i).2) = (Circle.exp (θ i) : ℂ)) :
    leadingBlock D = seedCorner (seedOf θ) := by
  ext a b
  fin_cases a <;> fin_cases b
  · exact hd.1 _
  · exact hd.1 _
  · exact hd.1 _
  · exact hd.2 _
  · exact h 0
  · exact h 1
  · exact hd.2 _
  · exact h 2
  · exact h 3

/-- **The open-map lemma, matrix form.** -/
theorem isOpen_matchedImage (o : ℤˣ) {V : Set (Fin 4 → ℝ)} (hV : IsOpen V) :
    IsOpen {M : Had6 | M.1 ∈ MatchedImage o V} := by
  rw [isOpen_iff_mem_nhds]
  rintro M0 ⟨θ0, hθ0, hR0, K0, hK0, hm0, σ, τ, r, c, hr, hc, hK⟩
  -- the representative map and its dephasing
  set Ψ : Had6 → Mat6 := fun M => Matrix.of fun i j => r i * M.1 (σ i) (τ j) * c j
  have hΨc : Continuous Ψ := by
    refine continuous_pi fun i => continuous_pi fun j => ?_
    exact (continuous_const.mul ((continuous_apply_apply (σ i) (τ j)).comp
      (continuous_subtype_val : Continuous (Subtype.val : Had6 → Mat6)))).mul continuous_const
  have hΨe : ∀ M : Had6, Equivalent M.1 (Ψ M) := fun M => ⟨σ, τ, r, c, hr, hc, fun i j => rfl⟩
  have hΨ0 : Ψ M0 = K0 := by ext i j; exact (hK i j).symm
  set D : Had6 → Mat6 := fun M => dephase (Ψ M)
  have hDc : Continuous D := continuous_dephase.comp hΨc
  have hDH : ∀ M : Had6, Hadamard6.IsHadamard (D M) := fun M =>
    dephase_isHadamard (isHadamard_of_equivalent (hΨe M) M.2)
  have hDd : ∀ M : Had6, Dephased (D M) := fun M =>
    dephase_isDephased (isHadamard_of_equivalent (hΨe M) M.2).1
  have hDe : ∀ M : Had6, Equivalent M.1 (D M) := fun M =>
    equivalent_trans (hΨe M) (equivalent_dephase (isHadamard_of_equivalent (hΨe M) M.2).1)
  have hD0 : D M0 = K0 := by
    show dephase (Ψ M0) = K0
    rw [hΨ0]; exact dephase_of_dephased hm0.1
  -- the corner entries and the lift of their phases
  set z : Had6 → Fin 4 → ℂ := fun M i => D M (.inl (cornerIdx i).1) (.inl (cornerIdx i).2)
  have hz0 : ∀ i, z M0 i = (Circle.exp (θ0 i) : ℂ) := by
    intro i
    have h := congrFun (congrFun hm0.2.1 (cornerIdx i).1) (cornerIdx i).2
    simp only [leadingBlock] at h
    simp only [z, hD0, h]
    fin_cases i <;> rfl
  have hz0ne : ∀ i, z M0 i ≠ 0 := fun i => by rw [hz0]; exact Circle.coe_ne_zero _
  have hzu : ∀ M i, Complex.normSq (z M i) = 1 := fun M i => (hDH M).1 _ _
  set θ : Had6 → Fin 4 → ℝ := fun M i => θ0 i + Complex.arg (z M i / z M0 i)
  have hθ0' : θ M0 = θ0 := by
    funext i; simp only [θ, div_self (hz0ne i), Complex.arg_one, add_zero]
  have hθc : ContinuousAt θ M0 := by
    refine continuousAt_pi.2 fun i => continuousAt_const.add ?_
    have h1 : z M0 i / z M0 i = 1 := div_self (hz0ne i)
    have harg : ContinuousAt Complex.arg (z M0 i / z M0 i) := by
      rw [h1]; exact Complex.continuousAt_arg Complex.one_mem_slitPlane
    have hg : ContinuousAt (fun M => z M i / z M0 i) M0 :=
      (((continuous_apply_apply _ _).comp hDc).div_const _).continuousAt
    exact harg.comp (f := fun M => z M i / z M0 i) hg
  have hθz : ∀ M i, (Circle.exp (θ M i) : ℂ) = z M i := by
    intro M i
    have hq : Complex.normSq (z M i / z M0 i) = 1 := by
      rw [Complex.normSq_div, hzu, hzu, div_one]
    have hn : ‖z M i / z M0 i‖ = 1 := by
      rw [Complex.normSq_eq_norm_sq] at hq; nlinarith [norm_nonneg (z M i / z M0 i)]
    have h := Complex.norm_mul_exp_arg_mul_I (z M i / z M0 i)
    rw [hn, Complex.ofReal_one, one_mul] at h
    rw [Circle.coe_exp, Complex.ofReal_add, add_mul, Complex.exp_add, ← Circle.coe_exp, ← hz0, h]
    field_simp [hz0ne i]
  have hlead : ∀ M, leadingBlock (D M) = seedCorner (seedOf (θ M)) := fun M =>
    leadingBlock_of_corner (hDd M) fun i => (hθz M i).symm
  -- the four open conditions
  obtain ⟨sB, sC⟩ := signs_of_matchedO hR0 hm0
  have hθV : ∀ᶠ M in 𝓝 M0, θ M ∈ V := hθc.eventually (by rw [hθ0']; exact hV.mem_nhds hθ0)
  have hθR : ∀ᶠ M in 𝓝 M0, 0 < seedR (seedOf (θ M)) := by
    have hc : ContinuousAt (fun M => seedR (seedOf (θ M))) M0 :=
      (continuous_seedR.comp continuous_seedOf).continuousAt.comp hθc
    exact hc.eventually (lt_mem_nhds (by simp only [hθ0']; exact hR0))
  have hB : ∀ᶠ M in 𝓝 M0, 0 < osgn o * (psi (rightBlock (D M))).im := by
    have hc : Continuous fun M => osgn o * (psi (rightBlock (D M))).im := by
      have := continuous_psi.comp (continuous_rightBlock.comp hDc); fun_prop
    exact hc.continuousAt.eventually (lt_mem_nhds (by simp only [hD0]; exact sB))
  have hC : ∀ᶠ M in 𝓝 M0, 0 < -osgn o * (psi (lowerBlock (D M))).im := by
    have hc : Continuous fun M => -osgn o * (psi (lowerBlock (D M))).im := by
      have := continuous_psi.comp (continuous_lowerBlock.comp hDc); fun_prop
    exact hc.continuousAt.eventually (lt_mem_nhds (by simp only [hD0]; exact sC))
  filter_upwards [hθV, hB, hC] with M h1 h3 h4
  obtain ⟨hR, hm⟩ := matchedO_of_signs (hDH M) (hDd M) (hlead M) h3 h4
  exact ⟨θ M, h1, hR, D M, hDH M, hm, hDe M⟩

/-- The classes `f_o(V ∩ Ω)`: classes of matched completions with orientation `o` at strict seeds of `V`. -/
def ClassImage (o : ℤˣ) (V : Set (Fin 4 → ℝ)) : Set HadamardClass6 :=
  {q | ∃ θ ∈ V, 0 < seedR (seedOf θ) ∧ ∃ K : Had6, MatchedO o (seedOf θ) K.1 ∧ hadamardQuotient K = q}

lemma preimage_classImage (o : ℤˣ) (V : Set (Fin 4 → ℝ)) :
    hadamardQuotient ⁻¹' ClassImage o V = {M : Had6 | M.1 ∈ MatchedImage o V} := by
  ext M
  simp only [ClassImage, MatchedImage, Set.mem_preimage, Set.mem_ofPred_eq, hadamardQuotient_eq_iff]
  constructor
  · rintro ⟨θ, hθ, hR, K, hK, hKM⟩
    exact ⟨θ, hθ, hR, K.1, K.2, hK, equivalent_symm hKM⟩
  · rintro ⟨θ, hθ, hR, K, hKH, hK, hMK⟩
    exact ⟨θ, hθ, hR, ⟨K, hKH⟩, hK, equivalent_symm hMK⟩

/-- **The open-map lemma** (SPEC §5): `f_o` maps open sets of seed phases to open sets of classes. -/
theorem isOpen_classImage (o : ℤˣ) {V : Set (Fin 4 → ℝ)} (hV : IsOpen V) : IsOpen (ClassImage o V) := by
  rw [← isQuotientMap_hadamardQuotient.isOpen_preimage, preimage_classImage]
  exact isOpen_matchedImage o hV

/-- **The open-map lemma, pointwise:** for a strict seed `θ` and a matched completion `K` there, `f_o` maps every
neighbourhood of `θ` onto a neighbourhood of `[K] = f_o(θ)`. -/
theorem classImage_mem_nhds (o : ℤˣ) {θ : Fin 4 → ℝ} (hθ : 0 < seedR (seedOf θ)) {K : Had6}
    (hK : MatchedO o (seedOf θ) K.1) {V : Set (Fin 4 → ℝ)} (hV : V ∈ 𝓝 θ) :
    ClassImage o V ∈ 𝓝 (hadamardQuotient K) := by
  refine mem_of_superset ((isOpen_classImage o (V := interior V) isOpen_interior).mem_nhds ?_) ?_
  · exact ⟨θ, mem_interior_iff_mem_nhds.2 hV, hθ, K, hK, rfl⟩
  · rintro q ⟨θ', h', hR, K', hK', rfl⟩
    exact ⟨θ', interior_subset h', hR, K', hK', rfl⟩

end NoFourMUBs.SeedAtlas
