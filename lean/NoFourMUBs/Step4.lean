import NoFourMUBs.Atlas
import NoFourMUBs.Step2.Statements

/-!
# Step 4: certified Records cover a clopen set of classes

`recordClopen_of_atlas`: for a finite atlas whose boundaries transfer (every boundary Hadamard of a Record is, after
an operation of `Γ`, equivalent to an interior point of some Record), the set of covered classes is clopen in the
Hadamard quotient (`Step2.RecordClopen`).

* **Closed:** the covered matrices are a finite union of continuous images of compact sets (Record balls, unit phases,
  permutations, the four maps of `Γ`).
* **Open:** every covered matrix has an interior representative, by the boundary transfer.  Near an interior point
  `e^{i(P+δ₀)}` every Hadamard is exactly `e^{i(P+δ₀+w)}` with `w = arg(·/e^{i(P+δ₀)})` entrywise, and
  `‖δ₀ + h(w)‖ < R` nearby by continuity of `arg` at `1`.
-/

open Matrix Hadamard6 Topology Filter Set

namespace NoFourMUBs

/-! ### Horizontal facts -/

lemma isHorizontal_add {Y Z : RMat6} (hY : IsHorizontal Y) (hZ : IsHorizontal Z) : IsHorizontal (Y + Z) :=
  ⟨fun i => by simp [Matrix.add_apply, Finset.sum_add_distrib, hY.1 i, hZ.1 i],
   fun j => by simp [Matrix.add_apply, Finset.sum_add_distrib, hY.2 j, hZ.2 j]⟩

lemma hor_of_isHorizontal {Y : RMat6} (h : IsHorizontal Y) : hor Y = Y := by
  ext i j
  have hr : rowMean Y i = 0 := by simp [rowMean, h.1 i]
  have hc : colMean Y j = 0 := by simp [colMean, h.2 j]
  have ha : allMean Y = 0 := by simp [allMean, h.1]
  simp [hor, hr, hc, ha]

lemma continuous_sumsq : Continuous sumsq := by
  unfold sumsq
  exact continuous_finsetSum _ fun i _ => continuous_finsetSum _ fun j _ =>
    ((continuous_apply j).comp (continuous_apply i)).pow 2

lemma continuous_frob : Continuous frob := by
  have : frob = fun Y => Real.sqrt (sumsq Y) := funext frob_eq_sqrt
  rw [this]; exact continuous_sumsq.sqrt

lemma continuous_hor : Continuous hor := by
  have e : ∀ i j, Continuous fun Y : RMat6 => Y i j := fun i j => (continuous_apply j).comp (continuous_apply i)
  refine continuous_pi fun i => continuous_pi fun j => ?_
  simp only [hor, rowMean, colMean, allMean, of_apply]
  refine (((e i j).sub ?_).sub ?_).add ?_
  · exact (continuous_finsetSum _ fun k _ => e i k).div_const _
  · exact (continuous_finsetSum _ fun k _ => e k j).div_const _
  · exact (continuous_finsetSum _ fun k _ => continuous_finsetSum _ fun l _ => e k l).div_const _

/-! ### The local chart at an interior point -/

lemma phaseMat_add_arg {P : RMat6} {K : Mat6} (hK : K = phaseMat P) {M : Mat6} (hM : EntrywiseUnit M) :
    M = phaseMat (P + Matrix.of fun i j => Complex.arg (M i j / K i j)) := by
  ext i j
  have hKu : ‖K i j‖ = 1 := by
    rw [hK]; simp [phaseMat, Complex.norm_exp_ofReal_mul_I]
  have hK0 : K i j ≠ 0 := by intro h; rw [h, norm_zero] at hKu; exact zero_ne_one hKu
  have hMu : ‖M i j‖ = 1 := by
    have := hM i j; rw [Complex.normSq_eq_norm_sq] at this; nlinarith [norm_nonneg (M i j)]
  have hz : ‖M i j / K i j‖ = 1 := by rw [norm_div, hMu, hKu, div_one]
  have h := Complex.norm_mul_exp_arg_mul_I (M i j / K i j)
  rw [hz, Complex.ofReal_one, one_mul] at h
  simp only [phaseMat, of_apply, Matrix.add_apply]
  rw [Complex.ofReal_add, add_mul, Complex.exp_add, h]
  have : Complex.exp (↑(P i j) * Complex.I) = K i j := by rw [hK]; rfl
  rw [this]; field_simp

/-- Near an interior point, every unit matrix of a continuous family is equivalent to an interior point. -/
theorem eventually_interior {X : Type*} [TopologicalSpace X] {P δ0 : RMat6} {R : ℝ} (hδ0 : IsHorizontal δ0)
    (hR : frob δ0 < R) {Ψ : X → Mat6} (hΨc : Continuous Ψ) {x0 : X} (hΨ0 : Ψ x0 = phaseMat (P + δ0))
    (hΨu : ∀ x, EntrywiseUnit (Ψ x)) :
    ∀ᶠ x in 𝓝 x0, ∃ δ, IsHorizontal δ ∧ frob δ < R ∧ Equivalent (Ψ x) (phaseMat (P + δ)) := by
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
  set f : X → ℝ := fun x => frob (δ0 + hor (w x))
  have hf : ContinuousAt f x0 :=
    continuous_frob.continuousAt.comp ((continuousAt_const).add (continuous_hor.continuousAt.comp hw))
  have hf0 : f x0 = frob δ0 := by
    simp only [f, hw0]
    have : hor (0 : RMat6) = 0 := by ext i j; simp [hor, rowMean, colMean, allMean]
    rw [this, add_zero]
  have hev : ∀ᶠ x in 𝓝 x0, f x < R := hf.eventually (gt_mem_nhds (by rw [hf0]; exact hR))
  filter_upwards [hev] with x hx
  refine ⟨δ0 + hor (w x), isHorizontal_add hδ0 (hor_isHorizontal _), hx, ?_⟩
  have hΨx := phaseMat_add_arg (P := P + δ0) rfl (hΨu x)
  have hequiv := phaseMat_equivalent_add_hor (P + δ0) (w x)
  rw [← hΨx] at hequiv
  rw [← add_assoc]
  exact equivalent_equivalence.symm hequiv

/-! ### The four maps of `Γ` -/

/-- `Γ = {id, conj, ᵀ, conj ∘ ᵀ}` as functions. -/
def gfun : Fin 4 → Mat6 → Mat6 := ![id, conjM, transpose, fun H => conjM Hᵀ]

lemma inGamma_iff {H G : Mat6} : InGamma H G ↔ ∃ k, G = gfun k H := by
  constructor
  · rintro (h | h | h | h)
    exacts [⟨0, h⟩, ⟨1, h⟩, ⟨2, h⟩, ⟨3, h⟩]
  · rintro ⟨k, rfl⟩
    fin_cases k
    exacts [Or.inl rfl, Or.inr (Or.inl rfl), Or.inr (Or.inr (Or.inl rfl)), Or.inr (Or.inr (Or.inr rfl))]

lemma equivalent_gfun {A B : Mat6} (h : Equivalent A B) (k : Fin 4) : Equivalent (gfun k A) (gfun k B) := by
  fin_cases k
  · exact h
  · exact Step2.equivalent_conjugate h
  · exact Step2.equivalent_transposed h
  · exact Step2.equivalent_conjugate (Step2.equivalent_transposed h)

lemma gfun_comp (k k' : Fin 4) : ∃ k'', ∀ H, gfun k' (gfun k H) = gfun k'' H := by
  have c2 : ∀ H : Mat6, conjM (conjM H) = H := Step2.conjugate_conjugate
  have ct : ∀ H : Mat6, conjM Hᵀ = (conjM H)ᵀ := fun H => rfl
  fin_cases k <;> fin_cases k'
  · exact ⟨0, fun H => by simp [gfun, ct]⟩
  · exact ⟨1, fun H => by simp [gfun, ct]⟩
  · exact ⟨2, fun H => by simp [gfun, ct]⟩
  · exact ⟨3, fun H => by simp [gfun, ct]⟩
  · exact ⟨1, fun H => by simp [gfun, c2, ct]⟩
  · exact ⟨0, fun H => by simp [gfun, c2, ct]⟩
  · exact ⟨3, fun H => by simp [gfun, c2, ct]⟩
  · exact ⟨2, fun H => by simp [gfun, c2, ct]⟩
  · exact ⟨2, fun H => by simp [gfun, ct]⟩
  · exact ⟨3, fun H => by simp [gfun, ct]⟩
  · exact ⟨0, fun H => by simp [gfun, ct]⟩
  · exact ⟨1, fun H => by simp [gfun, ct]⟩
  · exact ⟨3, fun H => by simp [gfun, c2, ct]⟩
  · exact ⟨2, fun H => by simp [gfun, c2, ct]⟩
  · exact ⟨1, fun H => by simp [gfun, c2, ct]⟩
  · exact ⟨0, fun H => by simp [gfun, c2, ct]⟩

lemma continuous_conjM : Continuous conjM :=
  continuous_pi fun i => continuous_pi fun j =>
    Complex.continuous_conj.comp ((continuous_apply j).comp (continuous_apply i))

lemma continuous_gfun (k : Fin 4) : Continuous (gfun k) := by
  fin_cases k
  · exact continuous_id
  · exact continuous_conjM
  · exact continuous_id.matrix_transpose
  · exact continuous_conjM.comp continuous_id.matrix_transpose

lemma isHadamard_transpose {H : Mat6} (h : Hadamard6.IsHadamard H) : Hadamard6.IsHadamard Hᵀ := by
  rw [← conjM_conjTranspose_eq_transpose]; exact isHadamard_conjM (isHadamard_conjTranspose h)

lemma isHadamard_gfun {H : Mat6} (h : Hadamard6.IsHadamard H) (k : Fin 4) : Hadamard6.IsHadamard (gfun k H) := by
  fin_cases k
  · exact h
  · exact isHadamard_conjM h
  · exact isHadamard_transpose h
  · exact isHadamard_conjM (isHadamard_transpose h)

/-! ### Clopenness -/

section Clopen

variable {ι : Type*} (A : ι → RecordCert)

/-- Matrices with a `Γ`-image equivalent to an interior point of some Record. -/
def AtlasInterior : Set Mat6 :=
  {M | ∃ k l δ, IsHorizontal δ ∧ frob δ < (A l).R ∧ Equivalent (gfun k M) (phaseMat ((A l).P + δ))}

/-- Every boundary Hadamard of a Record is, after `Γ`, equivalent to an interior point of some Record
(Lemma 4.1, applied to the certified boundary cover). -/
def BoundaryTransfers : Prop :=
  ∀ l δ, IsHorizontal δ → frob δ = (A l).R → Hadamard6.IsHadamard (phaseMat ((A l).P + δ)) →
    ∃ G l' δ', InGamma (phaseMat ((A l).P + δ)) G ∧ IsHorizontal δ' ∧ frob δ' < (A l').R ∧
      Equivalent G (phaseMat ((A l').P + δ'))

theorem covered_iff_interior (hb : BoundaryTransfers A) {M : Mat6} (hM : Hadamard6.IsHadamard M) :
    Step2.CoveredMatrix (InAtlas A) M ↔ M ∈ AtlasInterior A := by
  constructor
  · rintro ⟨G, K, hG, ⟨l, δ, hδ, hR, rfl⟩, hGK⟩
    obtain ⟨k, rfl⟩ := inGamma_iff.mp hG
    rcases hR.lt_or_eq with hlt | heq
    · exact ⟨k, l, δ, hδ, hlt, hGK⟩
    · have hKH : Hadamard6.IsHadamard (phaseMat ((A l).P + δ)) := isHadamard_of_equivalent hGK (isHadamard_gfun hM k)
      obtain ⟨G', l', δ', hG', hδ', hlt', hG'K'⟩ := hb l δ hδ heq hKH
      obtain ⟨k', rfl⟩ := inGamma_iff.mp hG'
      obtain ⟨k'', hk''⟩ := gfun_comp k k'
      refine ⟨k'', l', δ', hδ', hlt', ?_⟩
      rw [← hk'']
      exact equivalent_equivalence.trans (equivalent_gfun hGK k') hG'K'
  · rintro ⟨k, l, δ, hδ, hlt, h⟩
    exact ⟨gfun k M, _, inGamma_iff.mpr ⟨k, rfl⟩, ⟨l, δ, hδ, hlt.le, rfl⟩, h⟩

lemma continuous_phaseMat : Continuous phaseMat :=
  continuous_pi fun i => continuous_pi fun j =>
    Complex.continuous_exp.comp ((Complex.continuous_ofReal.comp
      ((continuous_apply j).comp (continuous_apply i))).mul continuous_const)

theorem isOpen_atlasInterior : IsOpen {M : Had6 | M.1 ∈ AtlasInterior A} := by
  rw [isOpen_iff_mem_nhds]
  rintro M0 ⟨k, l, δ0, hδ0, hR, σ, τ, r, c, hr, hc, hK⟩
  set Ψ : Had6 → Mat6 := fun M => Matrix.of fun i j => r i * gfun k M.1 (σ i) (τ j) * c j
  have hΨc : Continuous Ψ := by
    refine continuous_pi fun i => continuous_pi fun j => ?_
    exact (continuous_const.mul ((continuous_apply (τ j)).comp ((continuous_apply (σ i)).comp
      ((continuous_gfun k).comp continuous_subtype_val)))).mul continuous_const
  have hΨ0 : Ψ M0 = phaseMat ((A l).P + δ0) := by ext i j; exact (hK i j).symm
  have hΨu : ∀ M, EntrywiseUnit (Ψ M) := by
    intro M i j
    simp only [Ψ, of_apply, Complex.normSq_mul, hr i, hc j, one_mul, mul_one]
    exact (isHadamard_gfun M.2 k).1 _ _
  filter_upwards [eventually_interior hδ0 hR hΨc hΨ0 hΨu] with M ⟨δ, hδ, hlt, hM⟩
  exact ⟨k, l, δ, hδ, hlt, equivalent_equivalence.trans ⟨σ, τ, r, c, hr, hc, fun i j => rfl⟩ hM⟩

lemma isCompact_recordBall (R : ℝ) : IsCompact {δ : RMat6 | IsHorizontal δ ∧ frob δ ≤ R} := by
  have hbox : IsCompact ((Icc (-R) R).matrix : Set (Matrix I6 I6 ℝ)) := isCompact_Icc.matrix
  refine hbox.of_isClosed_subset ?_ ?_
  · have hh : IsClosed {δ : RMat6 | IsHorizontal δ} := by
      have e : ∀ i j, Continuous fun Y : RMat6 => Y i j :=
        fun i j => (continuous_apply j).comp (continuous_apply i)
      simp only [IsHorizontal, Set.ofPred_and, Set.ofPred_forall]
      exact (isClosed_iInter fun i => isClosed_eq (continuous_finsetSum _ fun j _ => e i j) continuous_const).inter
        (isClosed_iInter fun j => isClosed_eq (continuous_finsetSum _ fun i _ => e i j) continuous_const)
    exact hh.inter (isClosed_le continuous_frob continuous_const)
  · rintro (δ : RMat6) ⟨-, hR⟩
    intro i j
    show δ i j ∈ Icc (-R) R
    rw [Set.mem_Icc]
    have hle : |δ i j| ≤ frob δ := by
      rw [frob_eq_sqrt]; apply Real.abs_le_sqrt
      calc δ i j ^ 2 ≤ ∑ c, δ i c ^ 2 :=
            Finset.single_le_sum (f := fun c => δ i c ^ 2) (fun _ _ => sq_nonneg _) (Finset.mem_univ j)
        _ ≤ sumsq δ := Finset.single_le_sum (f := fun a => ∑ c, δ a c ^ 2)
            (fun _ _ => Finset.sum_nonneg fun _ _ => sq_nonneg _) (Finset.mem_univ i)
    exact abs_le.mp (hle.trans hR)

lemma isCompact_unitVec : IsCompact {r : I6 → ℂ | ∀ i, Complex.normSq (r i) = 1} := by
  simpa [Set.pi, Set.ofPred_forall] using isCompact_univ_pi fun _ : I6 => Step2Topology.isCompact_unitPhases

theorem isClosed_covered [Finite ι] : IsClosed {M : Had6 | Step2.CoveredMatrix (InAtlas A) M.1} := by
  set Ball : Set Mat6 := ⋃ l, (fun δ => phaseMat ((A l).P + δ)) '' {δ | IsHorizontal δ ∧ frob δ ≤ (A l).R}
  have hBall : IsCompact Ball := isCompact_iUnion fun l =>
    (isCompact_recordBall _).image (continuous_phaseMat.comp (continuous_const.add continuous_id))
  set f : Equiv.Perm I6 × Equiv.Perm I6 → ((I6 → ℂ) × (I6 → ℂ)) × Mat6 → Mat6 :=
    fun στ x => Matrix.of fun i j => x.1.1 i * x.2 (στ.1 i) (στ.2 j) * x.1.2 j
  set Sat : Set Mat6 := ⋃ στ, f στ '' ((({r | ∀ i, Complex.normSq (r i) = 1} : Set (I6 → ℂ)) ×ˢ
    ({c | ∀ i, Complex.normSq (c i) = 1} : Set (I6 → ℂ))) ×ˢ Ball)
  have hSat : IsCompact Sat := isCompact_iUnion fun στ => by
    refine ((isCompact_unitVec.prod isCompact_unitVec).prod hBall).image ?_
    refine continuous_pi fun i => continuous_pi fun j => ?_
    exact (((continuous_apply i).comp (continuous_fst.comp continuous_fst)).mul
      ((continuous_apply (στ.2 j)).comp ((continuous_apply (στ.1 i)).comp continuous_snd))).mul
      ((continuous_apply j).comp (continuous_snd.comp continuous_fst))
  have hC : IsClosed (⋃ k, gfun k ⁻¹' Sat) :=
    isClosed_iUnion_of_finite fun k => hSat.isClosed.preimage (continuous_gfun k)
  have heq : {M : Had6 | Step2.CoveredMatrix (InAtlas A) M.1} = Subtype.val ⁻¹' (⋃ k, gfun k ⁻¹' Sat) := by
    ext M
    simp only [Set.mem_ofPred_eq, Set.mem_preimage]
    constructor
    · rintro ⟨G, K, hG, ⟨l, δ, hδ, hR, rfl⟩, hGK⟩
      obtain ⟨k, rfl⟩ := inGamma_iff.mp hG
      obtain ⟨σ, τ, r, c, hr, hc, h⟩ := equivalent_equivalence.symm hGK
      refine Set.mem_iUnion.mpr ⟨k, Set.mem_iUnion.mpr ⟨(σ, τ), ((r, c), phaseMat ((A l).P + δ)), ⟨⟨hr, hc⟩, ?_⟩, ?_⟩⟩
      · exact Set.mem_iUnion.mpr ⟨l, δ, ⟨hδ, hR⟩, rfl⟩
      · ext i j; exact (h i j).symm
    · intro hM
      obtain ⟨k, hk⟩ := Set.mem_iUnion.mp hM
      obtain ⟨στ, hστ⟩ := Set.mem_iUnion.mp hk
      obtain ⟨⟨⟨r, c⟩, K⟩, ⟨⟨hr, hc⟩, hK⟩, hfx⟩ := hστ
      obtain ⟨l, δ, ⟨hδ, hR⟩, rfl⟩ := Set.mem_iUnion.mp hK
      refine ⟨gfun k M.1, _, inGamma_iff.mpr ⟨k, rfl⟩, ⟨l, δ, hδ, hR, rfl⟩, ?_⟩
      refine equivalent_equivalence.symm ⟨στ.1, στ.2, r, c, hr, hc, fun i j => ?_⟩
      rw [← hfx]; rfl
  rw [heq]
  exact hC.preimage continuous_subtype_val

/-- **Step 4.**  A finite atlas with boundary transfers covers a clopen set of classes. -/
theorem recordClopen_of_atlas [Finite ι] (hb : BoundaryTransfers A) : Step2.RecordClopen (InAtlas A) := by
  have hpre : Step2Topology.hadamardQuotient ⁻¹' Step2.CoveredClasses (InAtlas A) =
      {M : Had6 | Step2.CoveredMatrix (InAtlas A) M.1} := rfl
  constructor
  · rw [← Step2Topology.isQuotientMap_hadamardQuotient.isClosed_preimage, hpre]
    exact isClosed_covered A
  · rw [← Step2Topology.isQuotientMap_hadamardQuotient.isOpen_preimage, hpre]
    convert isOpen_atlasInterior A using 1
    ext M
    exact covered_iff_interior A hb M.2

end Clopen

end NoFourMUBs
