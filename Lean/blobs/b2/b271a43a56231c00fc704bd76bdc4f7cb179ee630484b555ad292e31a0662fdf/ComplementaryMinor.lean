import GoodMinorPhysical

/-! Equal determinant magnitudes for complementary half-size corners. -/
namespace Mub6.Classification.GoodMinor
open scoped BigOperators
open Matrix Mub6.Numerical
noncomputable section

/-- The last three indices of six, in increasing order. -/
def back (j : Fin 3) : Fin 6 := Fin.natAdd 3 j

theorem back_injective : Function.Injective back := by
  intro a b h
  apply Fin.ext
  have hv := congrArg (fun x : Fin 6 => x.val) h
  exact Nat.add_left_cancel hv

def northwest (H : Matrix (Fin 6) (Fin 6) ℂ) := H.submatrix front front
def northeast (H : Matrix (Fin 6) (Fin 6) ℂ) := H.submatrix front back
def southeast (H : Matrix (Fin 6) (Fin 6) ℂ) := H.submatrix back back

set_option maxHeartbeats 0 in
/-- Equal-size determinant interchange with a scalar shift. -/
theorem det_scalar_sub_mul_comm {R : Type*} [CommRing R] (c : R)
    (X Y : Matrix (Fin 3) (Fin 3) R) :
    (c • 1 - X * Y).det = (c • 1 - Y * X).det := by
  simp [Matrix.det_fin_three, Matrix.mul_apply, Fin.sum_univ_succ,
    Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply]
  ring

/-- The top block row inherits the row-Gram identity. -/
theorem top_block_rowGram (H : Matrix (Fin 6) (Fin 6) ℂ) (c : ℂ)
    (hrow : H * Hᴴ = c • (1 : Matrix (Fin 6) (Fin 6) ℂ)) :
    northwest H * (northwest H)ᴴ + northeast H * (northeast H)ᴴ =
      c • (1 : Matrix (Fin 3) (Fin 3) ℂ) := by
  ext i j
  have h := congrFun (congrFun hrow (front i)) (front j)
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply] at h
  rw [Fin.sum_univ_add (a := 3) (b := 3)] at h
  simpa only [northwest, northeast, Matrix.add_apply, Matrix.mul_apply,
    Matrix.conjTranspose_apply, Matrix.submatrix_apply, Matrix.smul_apply,
    smul_eq_mul, Matrix.one_apply, front_injective.eq_iff, front, back,
    Fin.castAdd_inj] using h

/-- The right block column inherits the column-Gram identity. -/
theorem right_block_columnGram (H : Matrix (Fin 6) (Fin 6) ℂ) (c : ℂ)
    (hcol : Hᴴ * H = c • (1 : Matrix (Fin 6) (Fin 6) ℂ)) :
    (northeast H)ᴴ * northeast H + (southeast H)ᴴ * southeast H =
      c • (1 : Matrix (Fin 3) (Fin 3) ℂ) := by
  ext i j
  have h := congrFun (congrFun hcol (back i)) (back j)
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply] at h
  rw [Fin.sum_univ_add (a := 3) (b := 3)] at h
  simpa only [northeast, southeast, Matrix.add_apply, Matrix.mul_apply,
    Matrix.conjTranspose_apply, Matrix.submatrix_apply, Matrix.smul_apply,
    smul_eq_mul, Matrix.one_apply, back_injective.eq_iff, front, back,
    Fin.natAdd_inj] using h

theorem det_mul_conjTranspose (X : Matrix (Fin 3) (Fin 3) ℂ) :
    (X * Xᴴ).det = (Complex.normSq X.det : ℂ) := by
  rw [Matrix.det_mul, Matrix.det_conjTranspose, Complex.normSq_eq_conj_mul_self]
  exact mul_comm _ _

theorem det_conjTranspose_mul (X : Matrix (Fin 3) (Fin 3) ℂ) :
    (Xᴴ * X).det = (Complex.normSq X.det : ℂ) := by
  rw [Matrix.det_mul, Matrix.det_conjTranspose, Complex.normSq_eq_conj_mul_self]
  rfl

/-- Complementary 3 by 3 corners have equal determinant norm squared.
Both Gram identities are explicit; no entry-phase assumption is needed. -/
theorem complementary_normSq (H : Matrix (Fin 6) (Fin 6) ℂ) (c : ℂ)
    (hrow : H * Hᴴ = c • (1 : Matrix (Fin 6) (Fin 6) ℂ))
    (hcol : Hᴴ * H = c • (1 : Matrix (Fin 6) (Fin 6) ℂ)) :
    Complex.normSq (northwest H).det = Complex.normSq (southeast H).det := by
  have hr : northwest H * (northwest H)ᴴ =
      c • 1 - northeast H * (northeast H)ᴴ :=
    eq_sub_iff_add_eq.mpr (top_block_rowGram H c hrow)
  have hc : (southeast H)ᴴ * southeast H =
      c • 1 - (northeast H)ᴴ * northeast H := by
    apply eq_sub_iff_add_eq.mpr
    rw [add_comm]
    exact right_block_columnGram H c hcol
  apply Complex.ofReal_injective
  rw [← det_mul_conjTranspose, ← det_conjTranspose_mul, hr, hc]
  exact det_scalar_sub_mul_comm c _ _

theorem phaseHadamard_complementary_normSq {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) :
    Complex.normSq (northwest H).det = Complex.normSq (southeast H).det :=
  complementary_normSq H 6 (phaseHadamard_rowGram hH) hH.2

/-- One of the twenty column permutations makes both complementary corners good. -/
theorem phaseHadamard_good_complementary_corners {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) :
    ∃ k : Fin 20,
      PhaseHadamard (H.submatrix id (columnPermutation k)) ∧
      (54 / 5 : ℝ) ≤ Complex.normSq (northwest (H.submatrix id (columnPermutation k))).det ∧
      (54 / 5 : ℝ) ≤ Complex.normSq (southeast (H.submatrix id (columnPermutation k))).det := by
  obtain ⟨k, hp, hk, _⟩ := phaseHadamard_good_corner_cover hH
  refine ⟨k, hp, hk, ?_⟩
  rw [← phaseHadamard_complementary_normSq hp]
  exact hk

end
end Mub6.Classification.GoodMinor

#print axioms Mub6.Classification.GoodMinor.back_injective
#print axioms Mub6.Classification.GoodMinor.det_scalar_sub_mul_comm
#print axioms Mub6.Classification.GoodMinor.top_block_rowGram
#print axioms Mub6.Classification.GoodMinor.right_block_columnGram
#print axioms Mub6.Classification.GoodMinor.det_mul_conjTranspose
#print axioms Mub6.Classification.GoodMinor.det_conjTranspose_mul
#print axioms Mub6.Classification.GoodMinor.complementary_normSq
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_complementary_normSq
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_complementary_corners
