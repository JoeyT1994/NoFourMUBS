import NoFourMUBs.Step2.Statements

/-!
# The Fourier family lies in every clopen set of classes containing `F6`

`fourierFamily ω x y = K(x, y) = [[F, F], [F D, −F D]]` (`F = (ω^{ij})`, `D = diag(1, x, y)`) is Hadamard for
unit `x, y` (`fourierFamily_isHadamard`) and continuous in `(x, y)`, and `K(1, 1)` is a row and column
reordering of `F6` (`family11_equiv_F6`).  So for each primitive cubic `ω` the classes `[K(x, y)]`, and the
classes of the transposes, are continuous images of the torus: connected sets containing `[F6]` (`F6` is
symmetric).  Hence **a clopen set of classes that contains `[F6]` contains every Fourier class**
(`fourierClasses_subset`).  This replaces any classification of the Fourier family's corners.
-/

open Set Matrix Hadamard6 NoFourMUBs.Step2Topology

noncomputable section

namespace NoFourMUBs.Step2

variable {ω x y : ℂ}

theorem fourierFamily_isHadamard (hω : IsPrimitiveCubicPhase ω) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) : Hadamard6.IsHadamard (fourierFamily ω x y) := by
  have hsc : (starRingEnd ℂ) ω = ω ^ 2 := primitiveCubicPhase_star hω
  have h3 : ω ^ 3 = 1 := primitiveCubicPhase_cube hω
  have h2 := hω.2
  have hx0 : x ≠ 0 := Complex.normSq_pos.1 (by rw [hx]; norm_num)
  have hy0 : y ≠ 0 := Complex.normSq_pos.1 (by rw [hy]; norm_num)
  have hxc : (starRingEnd ℂ) x = x⁻¹ :=
    eq_inv_of_mul_eq_one_right (by rw [Complex.mul_conj, hx, Complex.ofReal_one])
  have hyc : (starRingEnd ℂ) y = y⁻¹ :=
    eq_inv_of_mul_eq_one_right (by rw [Complex.mul_conj, hy, Complex.ofReal_one])
  refine ⟨fun i j => ?_, ?_⟩
  · rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
      simp [fourierFamily, Complex.normSq_mul, hω.1, hx, hy, primitiveCubicPhase_sq_norm hω]
  · ext i j
    rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
      simp [fourierFamily, Matrix.mul_apply, Fin.sum_univ_three, hsc, hxc, hyc, hx0, hy0] <;> grind

/-! ### `K(1, 1)` is `F6` -/

/-- Reorderings taking `K(1, 1)` to `affineFourierMatrix ω 1 1` and to `affineFourierMatrix ω² 1 1`. -/
def famPermA : Equiv.Perm I6 :=
  Equiv.ofBijective (Sum.elim ![.inl 0, .inr 0, .inl 1] ![.inr 1, .inl 2, .inr 2]) (by decide)
def famPermB : Equiv.Perm I6 :=
  Equiv.ofBijective (Sum.elim ![.inl 0, .inr 0, .inl 2] ![.inr 2, .inl 1, .inr 1]) (by decide)

theorem aff_eq_family (hω : ω ^ 2 + ω + 1 = 0) :
    affineFourierMatrix ω 1 1 = (fourierFamily ω 1 1).submatrix famPermA famPermA := by
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierFamily, famPermA, affineFourierMatrix] <;> grind

theorem aff_sq_eq_family (hω : ω ^ 2 + ω + 1 = 0) :
    affineFourierMatrix (ω ^ 2) 1 1 = (fourierFamily ω 1 1).submatrix famPermA famPermB := by
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierFamily, famPermA, famPermB, affineFourierMatrix] <;> grind

/-- `K(1, 1)` is equivalent to `F6`. -/
theorem family11_equiv_F6 (hω : IsPrimitiveCubicPhase ω) :
    Equivalent (fourierFamily ω 1 1) fourierHadamard.1 := by
  change Equivalent _ (affineFourierMatrix standardOmega 1 1)
  rcases primitiveCubicPhase_eq_standard_or_sq hω with h | h
  · rw [← h, aff_eq_family hω.2]; exact equivalent_reindexMatrix _ _ _
  · have hs : standardOmega = ω ^ 2 := by
      have h3 := primitiveCubicPhase_cube standardOmega_isPrimitiveCubicPhase
      rw [h]; linear_combination (-standardOmega) * h3
    rw [hs, aff_sq_eq_family hω.2]; exact equivalent_reindexMatrix _ _ _

/-- `F6` is symmetric. -/
theorem fourierHadamard_transpose : (fourierHadamard.1)ᵀ = fourierHadamard.1 := by
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierHadamard, affineFourierMatrix]

/-! ### Membership is an equivalence and transposition invariant -/

theorem InFourierFamily.of_equivalent {H K : Mat6} (hK : InFourierFamily K) (hHK : Equivalent H K) :
    InFourierFamily H := by
  obtain ⟨ω, x, y, hω, hx, hy, h | h⟩ := hK
  · exact ⟨ω, x, y, hω, hx, hy, Or.inl (equivalent_trans hHK h)⟩
  · exact ⟨ω, x, y, hω, hx, hy, Or.inr (equivalent_trans hHK h)⟩

theorem InFourierFamily.transpose {H : Mat6} (h : InFourierFamily Hᵀ) : InFourierFamily H := by
  obtain ⟨ω, x, y, hω, hx, hy, h | h⟩ := h
  · refine ⟨ω, x, y, hω, hx, hy, Or.inr ?_⟩
    simpa using equivalent_transpose h
  · refine ⟨ω, x, y, hω, hx, hy, Or.inl ?_⟩
    simpa using equivalent_transpose h

/-! ### The family over the torus -/

@[fun_prop] theorem continuous_fourierFamily (ω : ℂ) :
    Continuous fun z : ℂ × ℂ => fourierFamily ω z.1 z.2 := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierFamily] <;> fun_prop

/-- A unit complex number as a point of the circle. -/
def circleOf (z : ℂ) (h : Complex.normSq z = 1) : Circle :=
  ⟨z, by rw [Submonoid.unitSphere, Submonoid.mem_mk, Subsemigroup.mem_mk, mem_sphere_zero_iff_norm,
    Complex.norm_def, h, Real.sqrt_one]⟩

/-- The family over the torus (`t = false`) and its transpose (`t = true`), as Hadamard matrices. -/
def familyHad (hω : IsPrimitiveCubicPhase ω) (t : Bool) (z : Circle × Circle) : Had6 :=
  if t then ⟨(fourierFamily ω z.1 z.2)ᵀ, transpose_isHadamard
      (fourierFamily_isHadamard hω (Circle.normSq_coe _) (Circle.normSq_coe _))⟩
  else ⟨fourierFamily ω z.1 z.2, fourierFamily_isHadamard hω (Circle.normSq_coe _) (Circle.normSq_coe _)⟩

theorem continuous_familyHad (hω : IsPrimitiveCubicPhase ω) (t : Bool) :
    Continuous (familyHad hω t) := by
  have hc : Continuous fun z : Circle × Circle => fourierFamily ω z.1 z.2 :=
    (continuous_fourierFamily ω).comp (f := fun z : Circle × Circle => ((z.1 : ℂ), (z.2 : ℂ)))
      ((continuous_subtype_val.comp continuous_fst).prodMk (continuous_subtype_val.comp continuous_snd))
  cases t
  · exact hc.subtype_mk _
  · exact (Continuous.matrix_transpose hc).subtype_mk _

/-- **The Fourier classes lie in every clopen set of classes that contains `[F6]`.** -/
theorem fourierClasses_subset {W : Set HadamardClass6} (hW : IsClopen W) (hF : fourierClass ∈ W) :
    FourierClasses ⊆ W := by
  rintro q ⟨H, ⟨ω, x, y, hω, hx, hy, hK⟩, rfl⟩
  obtain ⟨t, ht⟩ : ∃ t, Equivalent H.1 (familyHad hω t (circleOf x hx, circleOf y hy)).1 :=
    hK.elim (fun h => ⟨false, h⟩) (fun h => ⟨true, h⟩)
  have h11 : Equivalent (familyHad hω t (1, 1)).1 fourierHadamard.1 := by
    cases t
    · exact family11_equiv_F6 hω
    · have := equivalent_transpose (family11_equiv_F6 hω)
      rwa [fourierHadamard_transpose] at this
  have hsub : range (hadamardQuotient ∘ familyHad hω t) ⊆ W :=
    (isPreconnected_range (continuous_hadamardQuotient.comp (continuous_familyHad hω t))).subset_isClopen
      hW ⟨fourierClass, ⟨(1, 1), (hadamardQuotient_eq_iff _ _).2 h11⟩, hF⟩
  rw [(hadamardQuotient_eq_iff _ _).2 ht]
  exact hsub ⟨_, rfl⟩

end NoFourMUBs.Step2
