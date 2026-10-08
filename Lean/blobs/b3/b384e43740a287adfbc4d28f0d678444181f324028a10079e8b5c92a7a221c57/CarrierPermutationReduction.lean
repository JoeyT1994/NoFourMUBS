import FourPhaseCarrier
import SymmetryTransport

/-! The side-column permutations are trailing physical row/column symmetries. -/
namespace Mub6.Classification.FourPhase
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover FourierSeedBinding
open Hadamard6Extensions.FourPhaseGram Hadamard6Extensions.FourPhaseCatalogue
noncomputable section

abbrev ReducedTag := (Bool × Bool) × (Bool × Bool)

def reduceTag (tag : CarrierTag) : ReducedTag :=
  ((tag.1.1,tag.1.2.1),(tag.2.1,tag.2.2.1))

def embedReducedTag (tag : ReducedTag) : CarrierTag :=
  ((tag.1.1,tag.1.2,Equiv.refl _),(tag.2.1,tag.2.2,Equiv.refl _))

def reducedCandidate (a b c d : ℂ) (tag : ReducedTag) : Mat6 :=
  carrierCandidate a b c d (embedReducedTag tag)

def ReducedGuards (a b c d : ℂ) (tag : ReducedTag) : Prop :=
  CarrierGuards a b c d (embedReducedTag tag)

/-- Extend a permutation of the last three coordinates while fixing the first three. -/
def trailingPerm (p : Equiv.Perm (Fin 3)) : Equiv.Perm (Fin 6) where
  toFun := fun i => Fin.addCases (m:=3) (n:=3) front (fun j => back (p j)) i
  invFun := fun i => Fin.addCases (m:=3) (n:=3) front (fun j => back (p.symm j)) i
  left_inv := by
    intro i
    refine Fin.addCases (m:=3) (n:=3) (fun j => ?_) (fun j => ?_) i <;>
      simp only [front, back, Fin.addCases_left, Fin.addCases_right,
        Equiv.symm_apply_apply, Equiv.apply_symm_apply]
  right_inv := by
    intro i
    refine Fin.addCases (m:=3) (n:=3) (fun j => ?_) (fun j => ?_) i <;>
      simp only [front, back, Fin.addCases_left, Fin.addCases_right,
        Equiv.symm_apply_apply, Equiv.apply_symm_apply]

theorem trailingPerm_front (p : Equiv.Perm (Fin 3)) (j : Fin 3) :
    trailingPerm p (front j) = front j := by
  simp only [trailingPerm, Equiv.coe_fn_mk, front, Fin.addCases_left]

theorem trailingPerm_back (p : Equiv.Perm (Fin 3)) (j : Fin 3) :
    trailingPerm p (back j) = back (p j) := by
  simp only [trailingPerm, Equiv.coe_fn_mk, back, Fin.addCases_right]

theorem trailingPerm_zero (p : Equiv.Perm (Fin 3)) : trailingPerm p 0 = 0 :=
  trailingPerm_front p 0

theorem reduced_tag_count : Fintype.card ReducedTag = 16 := by
  simp [ReducedTag, Fintype.card_prod]

theorem forcedD_permutations (E B C : Mat3) (p q : Equiv.Perm (Fin 3)) :
    forcedD E (fun i j => B i (p j)) (fun i j => C (q i) j) =
      fun i j => forcedD E B C (q i) (p j) := by
  ext i j
  rfl

theorem blockCarrier_permutations (E B C D : Mat3) (p q : Equiv.Perm (Fin 3)) :
    blockCarrier E (fun i j => B i (p j)) (fun i j => C (q i) j)
      (fun i j => D (q i) (p j)) =
      fun i j => blockCarrier E B C D (trailingPerm q i) (trailingPerm p j) := by
  ext i j
  refine Fin.addCases (m:=3) (n:=3) (fun a => ?_) (fun a => ?_) i <;>
    refine Fin.addCases (m:=3) (n:=3) (fun b => ?_) (fun b => ?_) j <;>
    simp only [blockCarrier, trailingPerm, Equiv.coe_fn_mk, front, back,
      Fin.addCases_left, Fin.addCases_right]

theorem reconstructedCarrier_permutations (E B C : Mat3) (p q : Equiv.Perm (Fin 3)) :
    reconstructedCarrier E (fun i j => B i (p j)) (fun i j => C (q i) j) =
      fun i j => reconstructedCarrier E B C (trailingPerm q i) (trailingPerm p j) := by
  rw [reconstructedCarrier, forcedD_permutations]
  exact blockCarrier_permutations E B C (forcedD E B C) p q

theorem carrierCandidate_reduced (a b c d : ℂ) (tag : CarrierTag) :
    carrierCandidate a b c d tag =
      fun i j => reducedCandidate a b c d (reduceTag tag)
        (trailingPerm tag.2.2.2 i) (trailingPerm tag.1.2.2 j) := by
  simpa only [carrierCandidate, reducedCandidate, reduceTag, embedReducedTag,
    sideCandidate, Equiv.refl_apply, Matrix.transpose_apply] using
    reconstructedCarrier_permutations (seed a b c d)
      (sideBase (rowS a b) (rowT c d) (rowR a b c d) tag.1.1 tag.1.2.1)
      (sideBase (rowS a c) (rowT b d) (rowR a c b d) tag.2.1 tag.2.2.1)ᵀ
      tag.1.2.2 tag.2.2.2

theorem carrier_guards_reduce (a b c d : ℂ) (tag : CarrierTag) :
    CarrierGuards a b c d tag ↔ ReducedGuards a b c d (reduceTag tag) := Iff.rfl

theorem normalized_reduced_four_phase_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (hB : NoPoles (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
      (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)))
    (hC : NoPoles (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2))) :
    ∃ tag : ReducedTag, ∃ p q : Equiv.Perm (Fin 3),
      H = (fun i j => reducedCandidate (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag
        (trailingPerm q i) (trailingPerm p j)) ∧
      ReducedGuards (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag := by
  obtain ⟨tag,he,hg,_⟩ := normalized_four_phase_cover hH hB hC
  refine ⟨reduceTag tag, tag.1.2.2, tag.2.2.2, ?_, hg⟩
  exact he.trans (carrierCandidate_reduced _ _ _ _ tag)

#check trailingPerm_front
#print axioms trailingPerm_front
#check trailingPerm_back
#print axioms trailingPerm_back
#check trailingPerm_zero
#print axioms trailingPerm_zero
#check reduced_tag_count
#print axioms reduced_tag_count
#check forcedD_permutations
#print axioms forcedD_permutations
#check blockCarrier_permutations
#print axioms blockCarrier_permutations
#check reconstructedCarrier_permutations
#print axioms reconstructedCarrier_permutations
#check carrierCandidate_reduced
#print axioms carrierCandidate_reduced
#check carrier_guards_reduce
#print axioms carrier_guards_reduce
#check normalized_reduced_four_phase_cover
#print axioms normalized_reduced_four_phase_cover

end
end Mub6.Classification.FourPhase
