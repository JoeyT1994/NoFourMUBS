import NoFourMUBs.Step2.SidePerm
import Hadamard6.HaagerupFromFibre

set_option autoImplicit false
set_option maxHeartbeats 1000000
open scoped ComplexConjugate
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction
open NoFourMUBs.Side Hadamard6

/-- The original entry cubic is Vieta's formula for the actual three entries. -/
theorem side_entry_cubic {x : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1) (j : Fin 3) :
    x j^3 - sS x * x j^2 + uS x * conj (sS x) * x j - uS x = 0 := by
  calc
    _ = (x j - x 0) * (x j - x 1) * (x j - x 2) := by
      rw [← e2S_unit hx]
      simp only [sS,e2S,uS]
      ring
    _ = 0 := by fin_cases j <;> simp

/-- Adapt the repository's existing Haagerup theorem to the current side
coordinates. The statement includes repeated entries and singular sides. -/
theorem side_entry_eliminant {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (j : Fin 3) :
    eliminantA (sS x) (conj (sS x)) (sS y) (conj (sS y))
      (rS x y) (conj (rS x y)) (x j) +
    eliminantB (sS x) (conj (sS x)) (sS y) (conj (sS y))
      (rS x y) (conj (rS x y)) (x j) * y j = 0 := by
  have hp : (x j,y j) ∈ ({(x 0,y 0),(x 1,y 1),(x 2,y 2)} : Set (ℂ × ℂ)) := by
    fin_cases j <;> simp
  obtain ⟨hf,hg⟩ := clearedHaagerup_all_coordinates
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) (x j,y j) hp
  simpa only [fibreS,fibreT,fibreR,sS,rS,Complex.star_def,mul_comm] using
    eliminant_eq_zero hf hg

/-- The generic companion formula is valid for the actual paired entry;
its denominator guard is explicit and remains to be supplied in the dense proof. -/
theorem side_entry_companion {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (j : Fin 3)
    (hB : eliminantB (sS x) (conj (sS x)) (sS y) (conj (sS y))
      (rS x y) (conj (rS x y)) (x j) ≠ 0) :
    y j = -eliminantA (sS x) (conj (sS x)) (sS y) (conj (sS y))
      (rS x y) (conj (rS x y)) (x j) /
      eliminantB (sS x) (conj (sS x)) (sS y) (conj (sS y))
        (rS x y) (conj (rS x y)) (x j) := by
  apply (eq_div_iff hB).2
  linear_combination side_entry_eliminant hx hy j

end NoFourMUBs.Step2.Reconstruction
