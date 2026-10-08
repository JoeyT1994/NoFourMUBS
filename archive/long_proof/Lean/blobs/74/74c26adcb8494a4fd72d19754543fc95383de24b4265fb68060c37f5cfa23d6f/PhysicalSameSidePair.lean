import PhysicalAdjugateLiteral
import Mathlib.Tactic.FinCases

/- The conjugated same-side condition used by native possible_pair.
Distinctness is of physical positions only; interval labels may repeat.
No inverse, nonzero determinant, radius or interval premise is introduced. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderSameSidePair20261008
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open ShoulderAdjugate20261008
open scoped ComplexConjugate BigOperators Matrix
noncomputable section

theorem physical_same_side_adjugate_pair {H : Mat6} (hH : Physical H)
    (i j : Fin 3) (hij : i ≠ j) :
    (∑ a : Fin 3, ∑ b : Fin 3,
      conj (blockB H a i) * (literalGram (blockE H)).adjugate a b *
        blockB H b j) = 0 := by
  have hm : ((blockB H)ᴴ * (blockB H * (blockB H)ᴴ).adjugate *
      blockB H) i j = 0 := by
    rw [gram_adjugate_sandwich]
    simp [Matrix.one_apply, hij]
  rw [physical_seed_complement hH] at hm
  change ((blockB H)ᴴ * (literalGram (blockE H)).adjugate * blockB H) i j = 0 at hm
  simpa only [Matrix.mul_apply, Matrix.conjTranspose_apply,
    Finset.sum_mul, Finset.sum_comm] using hm

def sideVector (x y : ℂ) : Fin 3 → ℂ := ![1, x, y]

theorem physical_B_column_dephased {H : Mat6} (hd : Dephased H)
    (a j : Fin 3) :
    blockB H a j =
      sideVector (H 1 (bottomIndex j)) (H 2 (bottomIndex j)) a := by
  fin_cases a <;> simp [blockB, upperIndex, sideVector, hd.1]

/-- The horizontal native side uses v=(1,x,y) and conjugates its first
vector in v_i† adj(G) v_j. The two physical slots are distinct. -/
theorem physical_horizontal_same_side_pair {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (i j : Fin 3) (hij : i ≠ j) :
    (∑ a : Fin 3, ∑ b : Fin 3,
      conj (sideVector (H 1 (bottomIndex i)) (H 2 (bottomIndex i)) a) *
        (literalGram (blockE H)).adjugate a b *
        sideVector (H 1 (bottomIndex j)) (H 2 (bottomIndex j)) b) = 0 := by
  simpa only [physical_B_column_dephased hd] using
    physical_same_side_adjugate_pair hH i j hij

/-- The vertical native side applies the horizontal test to the transposed
seed. This conjugation belongs to a same-side test, not the cross-side uWv. -/
theorem physical_vertical_same_side_pair {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (i j : Fin 3) (hij : i ≠ j) :
    (∑ a : Fin 3, ∑ b : Fin 3,
      conj (sideVector (H (bottomIndex i) 1) (H (bottomIndex i) 2) a) *
        (literalGram ((blockE H)ᵀ)).adjugate a b *
        sideVector (H (bottomIndex j) 1) (H (bottomIndex j) 2) b) = 0 := by
  exact physical_horizontal_same_side_pair (physical_transpose hH)
    ⟨hd.2, hd.1⟩ i j hij

end
#print axioms physical_same_side_adjugate_pair
#print axioms physical_B_column_dephased
#print axioms physical_horizontal_same_side_pair
#print axioms physical_vertical_same_side_pair
end ShoulderSameSidePair20261008
