import NoFourMUBs.Reuse.Archive.CriticalZeroModuli

/-! The p=7 specialization; reuse the existing repeated-root assignment. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical.P7

theorem modulus_root (X Y Z : ℝ)
    (hp : X + Y + Z = 7)
    (hw : X * Y + X * Z + Y * Z - X * Y * Z = 6)
    (hk : X * Y * Z = 5) : X = 1 ∨ X = 5 := by
  have hf : (X - 1) ^ 2 * (X - 5) = 0 := by
    linear_combination X ^ 2 * hp - X * hw + (1 - X) * hk
  rcases mul_eq_zero.mp hf with h | h
  · left; nlinarith only [h]
  · right; linarith only [h]

theorem moduli_permutation (X Y Z : ℝ)
    (hp : X + Y + Z = 7)
    (hw : X * Y + X * Z + Y * Z - X * Y * Z = 6)
    (hk : X * Y * Z = 5) :
    (X = 1 ∧ Y = 1 ∧ Z = 5) ∨ (X = 1 ∧ Y = 5 ∧ Z = 1) ∨
      (X = 5 ∧ Y = 1 ∧ Z = 1) := by
  exact CriticalScalarReduction20261003.repeated_modulus_assignment 1 5 X Y Z
    (modulus_root X Y Z hp hw hk)
    (modulus_root Y X Z (by linarith only [hp])
      (by linear_combination hw) (by linear_combination hk))
    (modulus_root Z X Y (by linarith only [hp])
      (by linear_combination hw) (by linear_combination hk))
    (by linarith only [hp])

end NoFourMUBs.Step2.Critical.P7
