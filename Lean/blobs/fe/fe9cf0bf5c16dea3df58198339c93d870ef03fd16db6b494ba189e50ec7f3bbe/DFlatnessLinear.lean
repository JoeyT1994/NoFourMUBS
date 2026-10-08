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
  intro i j
  fin_cases i <;> fin_cases j <;> linarith

#print axioms nine_flat_entries_of_four
end Mub6.Numerical.RegularNonempty
