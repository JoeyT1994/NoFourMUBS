import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod

/-! Finite combinatorics of four remaining row orientations. The geometric
compatibility and no-three premises are explicit in this finite module.
The finite decision proof is kernel evaluated, not native_decide.
-/

set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
set_option synthInstance.maxSize 10000

namespace Seed0024.Orientation

def SameType (s t : Fin 4 → Bool) (i j : Fin 4) : Prop :=
  s i = s j ∧ t i = t j

def Compatible (s t : Fin 4 → Bool) : Prop :=
  ∀ i j : Fin 4, s i = s j ↔ t i = t j

def NoThreeSame (s t : Fin 4 → Bool) : Prop :=
  ∀ i j k : Fin 4, i ≠ j → i ≠ k → j ≠ k →
    ¬ (SameType s t i j ∧ SameType s t i k)

/-- Common relative orientation and exactly two rows in each complementary
type. All 256 Boolean labelings are checked by Lean's ordinary kernel reduction.
-/
theorem four_orientation_count :
    ∀ s t : Fin 4 → Bool, Compatible s t → NoThreeSame s t →
      ∃ κ : Bool,
        (∀ i, t i = Bool.xor (s i) κ) ∧
        (Finset.univ.filter (fun i : Fin 4 => s i = false)).card = 2 ∧
        (Finset.univ.filter (fun i : Fin 4 => s i = true)).card = 2 ∧
        (Finset.univ.filter (fun i : Fin 4 => (s i, t i) = (false, κ))).card = 2 ∧
        (Finset.univ.filter (fun i : Fin 4 => (s i, t i) = (true, !κ))).card = 2 := by
  unfold Compatible NoThreeSame SameType
  decide

/-- Every actual row belongs to one of those complementary types. -/
theorem complementary_type_cover (s t : Fin 4 → Bool)
    (hc : Compatible s t) (hn : NoThreeSame s t) :
    ∃ κ : Bool, (∀ i, (s i, t i) = (false, κ) ∨ (s i, t i) = (true, !κ)) ∧
      (Finset.univ.filter (fun i : Fin 4 => (s i, t i) = (false, κ))).card = 2 ∧
      (Finset.univ.filter (fun i : Fin 4 => (s i, t i) = (true, !κ))).card = 2 := by
  obtain ⟨κ, hrel, _, _, hfalse, htrue⟩ := four_orientation_count s t hc hn
  refine ⟨κ, ?_, hfalse, htrue⟩
  intro i
  have hi := hrel i
  cases hs : s i <;> cases hk : κ <;> simp [hs, hk] at hi ⊢ <;> simp [hi]

#print axioms four_orientation_count
#print axioms complementary_type_cover

end Seed0024.Orientation
