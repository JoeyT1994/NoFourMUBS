import NoFourMUBs.Reuse.Archive.LiftedSheetGuards

/-! Only the archived phase helpers needed by physical rational reconstruction.
The original seed and strict-side construction closure is not imported. -/

noncomputable section
namespace FourierSeedBinding

def IsPhase (z : ℂ) : Prop := Complex.normSq z = 1

theorem phase_ne_zero {z : ℂ} (hz : IsPhase z) : z ≠ 0 := by
  intro h
  simp [IsPhase, h] at hz

theorem phase_star {z : ℂ} (hz : IsPhase z) : star z = z⁻¹ := by
  have hn : star z * z = 1 := by
    calc
      star z * z = (Complex.normSq z : ℂ) :=
        (Complex.normSq_eq_conj_mul_self (z := z)).symm
      _ = 1 := by exact_mod_cast hz
  exact (eq_inv_of_mul_eq_one_left hn)

theorem phase_conj {z : ℂ} (hz : IsPhase z) : (starRingEnd ℂ) z = z⁻¹ := by
  simpa only [Complex.star_def] using phase_star hz

theorem phase_mul_conj {z : ℂ} (hz : IsPhase z) :
    z * (starRingEnd ℂ) z = 1 := by
  calc
    z * (starRingEnd ℂ) z = (starRingEnd ℂ) z * z := mul_comm _ _
    _ = (Complex.normSq z : ℂ) := (Complex.normSq_eq_conj_mul_self (z := z)).symm
    _ = 1 := by exact_mod_cast hz

theorem phase_div {x y : ℂ} (hx : IsPhase x) (hy : IsPhase y) : IsPhase (x/y) := by
  simp only [IsPhase, Complex.normSq_div]
  rw [hx, hy, div_one]

#print axioms phase_ne_zero
#print axioms phase_star
#print axioms phase_conj
#print axioms phase_mul_conj
#print axioms phase_div
end FourierSeedBinding
