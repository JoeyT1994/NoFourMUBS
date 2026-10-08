import SeedBinding

/-! All six actual cofactor denominators on the strict horizontal sheet domain.
No horizontal/vertical invariant equality or side-block construction is claimed. -/

namespace FourierSeedBinding

open Matrix
noncomputable section

def qV (a b c d : ℂ) (i : Fin 3) : ℝ :=
  ((gramV a b c d).adjugate i i).re

theorem gramV_hermitian (a b c d : ℂ) :
    (gramV a b c d).IsHermitian := by
  unfold gramV
  apply Matrix.IsHermitian.sub
  · change (((6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ))ᴴ) = _
    simp
  · exact Matrix.isHermitian_mul_conjTranspose_self _

theorem vertical_adjugate_diag_real (a b c d : ℂ) (i : Fin 3) :
    (qV a b c d i : ℂ) = (gramV a b c d).adjugate i i := by
  exact (gramV_hermitian a b c d).adjugate.coe_re_apply_self i

theorem strict_vertical_denominator (a b c d : ℂ) (i : Fin 3)
    (hR : 0 < radicand a b c d) :
    (g a b c d : ℂ) +
      FourierRadicalGuards.sheet (g a b c d) (chi a b c d)
        (-Real.sqrt (radicand a b c d)) *
      (gramV a b c d).adjugate i i ≠ 0 := by
  have hw : (-Real.sqrt (radicand a b c d)) ^ 2 =
      4 * (g a b c d) ^ 2 * eta a b c d - (chi a b c d) ^ 2 := by
    rw [neg_sq, Real.sq_sqrt (le_of_lt hR)]
    rfl
  have hwn : -Real.sqrt (radicand a b c d) ≠ 0 :=
    neg_ne_zero.mpr (ne_of_gt (Real.sqrt_pos.2 hR))
  have hden := FourierRadicalGuards.denominator_ne_zero_of_nonzero_sheet
    (g a b c d) (chi a b c d) (eta a b c d)
    (-Real.sqrt (radicand a b c d)) (qV a b c d i) hw hwn
  rwa [vertical_adjugate_diag_real a b c d i] at hden

/-- All three horizontal and all three vertical actual diagonal-cofactor
denominators are nonzero whenever the concrete strict radicand is positive. -/
theorem strict_six_denominators (a b c d : ℂ)
    (hR : 0 < radicand a b c d) :
    (∀ i : Fin 3,
      (g a b c d : ℂ) +
        FourierRadicalGuards.sheet (g a b c d) (chi a b c d)
          (Real.sqrt (radicand a b c d)) *
        (gramH a b c d).adjugate i i ≠ 0) ∧
    (∀ i : Fin 3,
      (g a b c d : ℂ) +
        FourierRadicalGuards.sheet (g a b c d) (chi a b c d)
          (-Real.sqrt (radicand a b c d)) *
        (gramV a b c d).adjugate i i ≠ 0) := by
  constructor
  · intro i
    exact strict_horizontal_denominator a b c d i hR
  · intro i
    exact strict_vertical_denominator a b c d i hR

#print axioms gramV_hermitian
#print axioms vertical_adjugate_diag_real
#print axioms strict_vertical_denominator
#print axioms strict_six_denominators

end
end FourierSeedBinding
