import GlobalCornerRawSide
import Mathlib.Logic.Equiv.Fintype

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
namespace Mub6.Classification.GlobalCornerDomain
open Mub6 Mub6.Numerical Matrix
open Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
noncomputable section

/-- Every ordered triple of distinct columns can occupy the side positions.
No sorting, symmetry quotient, or phase convention is required. -/
theorem side_permutation_of_injective (c : Fin 3 → Fin 6)
    (hc : Function.Injective c) :
    ∃ q : Perm, ∀ j, q (back j) = c j := by
  apply Equiv.Perm.exists_extending_pair back c
  · intro i j hij
    apply Fin.ext
    have hv := congrArg Fin.val hij
    change 3 + i.val = 3 + j.val at hv
    omega
  · exact hc

/-- Full maximality caps a raw complementary radicand on any three distinct
columns of the first three rows, horizontally or vertically. -/
theorem globalMax_selected_columns_radicand {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (c : Fin 3 → Fin 6) (hc : Function.Injective c) :
    (ShoulderPhaseGate20261002.radicand
      ((oriented vertical H) 1 (c 0) + (oriented vertical H) 1 (c 1) +
        (oriented vertical H) 1 (c 2))
      ((oriented vertical H) 2 (c 0) + (oriented vertical H) 2 (c 1) +
        (oriented vertical H) 2 (c 2))
      (ShoulderPhaseGate20261002.overlap
        ((oriented vertical H) 1 (c 0)) ((oriented vertical H) 1 (c 1))
        ((oriented vertical H) 1 (c 2)) ((oriented vertical H) 2 (c 0))
        ((oriented vertical H) 2 (c 1)) ((oriented vertical H) 2 (c 2)))).re ≤ score H := by
  obtain ⟨q,hq⟩ := side_permutation_of_injective c hc
  exact globalMax_raw_oriented_radicand hH vertical q
    (fun j => (oriented vertical H) 1 (c j))
    (fun j => (oriented vertical H) 2 (c j))
    (fun j => congrArg ((oriented vertical H) 1) (hq j))
    (fun j => congrArg ((oriented vertical H) 2) (hq j))

/-- Exporter order: the ordered distinct seed pair followed by the actual
back column. This retains all three seed pairs and all three side columns. -/
def seedPairBack (j k ℓ : Fin 3) : Fin 3 → Fin 6 :=
  ![front j, front k, back ℓ]

theorem seedPairBack_injective (j k ℓ : Fin 3) (hjk : j ≠ k) :
    Function.Injective (seedPairBack j k ℓ) := by
  intro a b hab
  fin_cases a <;> fin_cases b <;> simp [seedPairBack] at hab ⊢
  all_goals
    have hv := congrArg Fin.val hab
    simp only [front,back,Fin.coe_castAdd,Fin.coe_natAdd] at hv
    first
    | exact False.elim (hjk (Fin.ext hv))
    | exact False.elim (hjk (Fin.ext hv.symm))
    | omega

/-- The concrete root0 complementary cap, with no permutation parameter. -/
theorem globalMax_seedPairBack_radicand {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (j k ℓ : Fin 3) (hjk : j ≠ k) :
    (ShoulderPhaseGate20261002.radicand
      ((oriented vertical H) 1 (front j) + (oriented vertical H) 1 (front k) +
        (oriented vertical H) 1 (back ℓ))
      ((oriented vertical H) 2 (front j) + (oriented vertical H) 2 (front k) +
        (oriented vertical H) 2 (back ℓ))
      (ShoulderPhaseGate20261002.overlap
        ((oriented vertical H) 1 (front j)) ((oriented vertical H) 1 (front k))
        ((oriented vertical H) 1 (back ℓ)) ((oriented vertical H) 2 (front j))
        ((oriented vertical H) 2 (front k)) ((oriented vertical H) 2 (back ℓ)))).re ≤ score H := by
  exact globalMax_selected_columns_radicand hH vertical (seedPairBack j k ℓ)
    (seedPairBack_injective j k ℓ hjk)

end
#print axioms side_permutation_of_injective
#print axioms globalMax_selected_columns_radicand
#print axioms seedPairBack_injective
#print axioms globalMax_seedPairBack_radicand
end Mub6.Classification.GlobalCornerDomain
