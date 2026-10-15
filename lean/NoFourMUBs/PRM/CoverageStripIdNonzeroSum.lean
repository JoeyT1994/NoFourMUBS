import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckS0
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckSA
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckS1
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckS2
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckS3
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckS4
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckSF

/-! The nonzero-`J` square sum from the group checks and their sum:
`momentPolyQ mD = n / (2⁵ h⁴ Π ℓ⁵)` in value. -/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker StripMoments

theorem sum_eq {ρ : Fin 3 → ℂ} {ζ : ℂ} (h : QF.Good C1 ρ ζ) :
    (momentPolyQ mD).val ρ ζ = (⟨⟨nC, ![0, 0, 4, 5, 5, 5, 5, 5, 5, 5]⟩, 0⟩ : Q).val ρ ζ := by
  obtain ⟨e0, e1, e2, e3, e4⟩ := val_partQ h mD
  have g1 : partC1 (fun p => (mD p).val ρ ζ) = partD1.val ρ ζ := by
    rw [← QF.eq_of_validD h part1_valid]
    simp only [QF.val_add h, QF.val_mul h, QF.val_neg, QF.val_one', ← QF.eq_of_validD h pA_valid,
      ← QF.eq_of_validD h pB_valid, partC1]
    ring
  rw [val_momentPolyQ h, momentPoly_parts, ← e0, g1, ← e2, ← e3, ← e4,
    QF.eq_of_validD h part0_valid, QF.eq_of_validD h part2_valid,
    QF.eq_of_validD h part3_valid, QF.eq_of_validD h part4_valid,
    ← QF.val_add h, ← QF.val_add h, ← QF.val_add h, ← QF.val_add h]
  exact QF.eq_of_validD h parts_sum_valid

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
