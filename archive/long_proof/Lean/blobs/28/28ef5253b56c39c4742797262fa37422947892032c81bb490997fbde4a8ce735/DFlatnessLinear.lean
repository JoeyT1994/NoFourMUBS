import FormalCore

/-! A conditional linear reduction only. The row/column margin hypotheses
must still be derived from an actual completed carrier; existence is not proved. -/
namespace Mub6.Numerical.RegularNonempty

theorem nine_flat_entries_of_four (p : Fin 3 → Fin 3 → ℝ)
    (rows : ∀ i, p i 0 + p i 1 + p i 2 = 3)
    (cols : ∀ j, p 0 j + p 1 j + p 2 j = 3)
    (h00 : p 0 0 = 1) (h01 : p 0 1 = 1)
    (h10 : p 1 0 = 1) (h11 : p 1 1 = 1) :
    ∀ i j, p i j = 1 := by
  have r0 := rows 0
  have r1 := rows 1
  have r2 := rows 2
  have c0 := cols 0
  have c1 := cols 1
  have c2 := cols 2
  have h02 : p 0 2 = 1 := by linarith
  have h12 : p 1 2 = 1 := by linarith
  have h20 : p 2 0 = 1 := by linarith
  have h21 : p 2 1 = 1 := by linarith
  have h22 : p 2 2 = 1 := by linarith
  intro i j
  fin_cases i <;> fin_cases j
  · exact h00
  · exact h01
  · exact h02
  · exact h10
  · exact h11
  · exact h12
  · exact h20
  · exact h21
  · exact h22

#print axioms nine_flat_entries_of_four
end Mub6.Numerical.RegularNonempty
