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


/-- First argument permutes trailing columns; second permutes trailing rows. -/
def trailingReindex (p q : Equiv.Perm (Fin 3)) (H : Mat6) : Mat6 :=
  fun i j => H (trailingPerm q i) (trailingPerm p j)

theorem trailingPerm_apply_inverse (p : Equiv.Perm (Fin 3)) (i : Fin 6) :
    trailingPerm p (trailingPerm p.symm i) = i :=
  (trailingPerm p).apply_symm_apply i

theorem trailingPerm_inverse_apply (p : Equiv.Perm (Fin 3)) (i : Fin 6) :
    trailingPerm p.symm (trailingPerm p i) = i :=
  (trailingPerm p).symm_apply_apply i

theorem trailingReindex_inverse (p q : Equiv.Perm (Fin 3)) (H : Mat6) :
    trailingReindex p.symm q.symm (trailingReindex p q H) = H := by
  ext i j
  simp only [trailingReindex, trailingPerm_apply_inverse]

theorem trailingRay_inverse (q : Equiv.Perm (Fin 3)) (z : Vector) :
    permuteRay (trailingPerm q.symm) (permuteRay (trailingPerm q) z) = z := by
  funext i
  simp only [permuteRay, trailingPerm_apply_inverse]

theorem trailingReindex_PhaseHadamard (p q : Equiv.Perm (Fin 3))
    {H : Mat6} (hH : PhaseHadamard H) : PhaseHadamard (trailingReindex p q H) :=
  permuteRows_PhaseHadamard (trailingPerm q)
    (permuteCols_PhaseHadamard (trailingPerm p) hH)

theorem trailingReindex_commonRay (p q : Equiv.Perm (Fin 3))
    {H : Mat6} {z : Vector} (hz : IsRawCommonRay H z) :
    IsRawCommonRay (trailingReindex p q H) (permuteRay (trailingPerm q) z) :=
  permuteRows_commonRay (trailingPerm q) (trailingPerm_zero q)
    (permuteCols_commonRay (trailingPerm p) hz)

theorem trailingReindex_commonRay_iff (p q : Equiv.Perm (Fin 3)) (H : Mat6) (z : Vector) :
    IsRawCommonRay (trailingReindex p q H) (permuteRay (trailingPerm q) z) ↔
      IsRawCommonRay H z := by
  constructor
  · intro hz
    have hh := trailingReindex_commonRay p.symm q.symm hz
    simpa only [trailingReindex_inverse, trailingRay_inverse] using hh
  · exact trailingReindex_commonRay p q

theorem trailingRay_rawOverlap (q : Equiv.Perm (Fin 3)) (z w : Vector) :
    rawOverlap (permuteRay (trailingPerm q) z) (permuteRay (trailingPerm q) w) =
      rawOverlap z w := permuteRows_rawOverlap (trailingPerm q) z w

theorem carrierCandidate_commonRay_iff (a b c d : ℂ) (tag : CarrierTag) (z : Vector) :
    IsRawCommonRay (carrierCandidate a b c d tag) (permuteRay (trailingPerm tag.2.2.2) z) ↔
      IsRawCommonRay (reducedCandidate a b c d (reduceTag tag)) z := by
  rw [carrierCandidate_reduced]
  exact trailingReindex_commonRay_iff tag.1.2.2 tag.2.2.2 _ z

theorem normSq_det_column_permutation (A : Mat3) (p : Equiv.Perm (Fin 3)) :
    Complex.normSq (Matrix.det (fun i j => A i (p j))) = Complex.normSq A.det := by
  change Complex.normSq (A.submatrix id p).det = _
  rw [Matrix.det_permute']
  rcases Int.units_eq_one_or (Equiv.Perm.sign p) with h | h <;> simp [h]

theorem normSq_det_row_permutation (A : Mat3) (p : Equiv.Perm (Fin 3)) :
    Complex.normSq (Matrix.det (fun i j => A (p i) j)) = Complex.normSq A.det := by
  change Complex.normSq (A.submatrix p id).det = _
  rw [Matrix.det_permute]
  rcases Int.units_eq_one_or (Equiv.Perm.sign p) with h | h <;> simp [h]

theorem trailingReindex_northeast (p q : Equiv.Perm (Fin 3)) (H : Mat6) :
    northeast (trailingReindex p q H) = fun i j => northeast H i (p j) := by
  ext i j
  simp only [northeast, Matrix.submatrix_apply, trailingReindex,
    trailingPerm_front, trailingPerm_back]

theorem trailingReindex_southwest (p q : Equiv.Perm (Fin 3)) (H : Mat6) :
    southwest (trailingReindex p q H) = fun i j => southwest H (q i) j := by
  ext i j
  simp only [southwest, Matrix.submatrix_apply, trailingReindex,
    trailingPerm_front, trailingPerm_back]

theorem trailingReindex_normalized (p q : Equiv.Perm (Fin 3))
    {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    NormalizedGoodSideCarrier (trailingReindex p q H) := by
  refine ⟨trailingReindex_PhaseHadamard p q hH.1, ?_, ?_, ?_, ?_⟩
  · intro k
    change H (trailingPerm q 0) (trailingPerm p k) = 1
    rw [trailingPerm_zero]
    exact hH.2.1 _
  · intro r
    change H (trailingPerm q r) (trailingPerm p 0) = 1
    rw [trailingPerm_zero]
    exact hH.2.2.1 _
  · rw [trailingReindex_northeast, normSq_det_column_permutation]
    exact hH.2.2.2.1
  · rw [trailingReindex_southwest, normSq_det_row_permutation]
    exact hH.2.2.2.2

theorem trailingReindex_normalized_iff (p q : Equiv.Perm (Fin 3)) (H : Mat6) :
    NormalizedGoodSideCarrier (trailingReindex p q H) ↔ NormalizedGoodSideCarrier H := by
  constructor
  · intro hH
    have hh := trailingReindex_normalized p.symm q.symm hH
    simpa only [trailingReindex_inverse] using hh
  · exact trailingReindex_normalized p q

theorem carrierCandidate_physical_iff (a b c d : ℂ) (tag : CarrierTag) :
    CarrierPhysicalFilter a b c d tag ↔
      NormalizedGoodSideCarrier (reducedCandidate a b c d (reduceTag tag)) := by
  rw [CarrierPhysicalFilter, carrierCandidate_reduced]
  exact trailingReindex_normalized_iff tag.1.2.2 tag.2.2.2 _

/-- Sixteen radical families cover regular normalized carriers up to exact
trailing row/column permutations, retaining physicality and every guard. -/
theorem normalized_reduced_physical_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (hB : NoPoles (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
      (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)))
    (hC : NoPoles (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2))) :
    ∃ tag : ReducedTag, ∃ p q : Equiv.Perm (Fin 3),
      H = trailingReindex p q (reducedCandidate (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag) ∧
      ReducedGuards (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag ∧
      NormalizedGoodSideCarrier (reducedCandidate (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag) ∧
      ∀ z : Vector,
        IsRawCommonRay H (permuteRay (trailingPerm q) z) ↔
          IsRawCommonRay (reducedCandidate (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag) z := by
  obtain ⟨tag,he,hg,hf⟩ := normalized_four_phase_cover hH hB hC
  refine ⟨reduceTag tag,tag.1.2.2,tag.2.2.2,?_,hg,?_,?_⟩
  · exact he.trans (carrierCandidate_reduced _ _ _ _ tag)
  · exact (carrierCandidate_physical_iff _ _ _ _ tag).mp hf
  · intro z
    rw [he]
    exact carrierCandidate_commonRay_iff _ _ _ _ tag z

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
#check trailingPerm_apply_inverse
#print axioms trailingPerm_apply_inverse
#check trailingPerm_inverse_apply
#print axioms trailingPerm_inverse_apply
#check trailingReindex_inverse
#print axioms trailingReindex_inverse
#check trailingRay_inverse
#print axioms trailingRay_inverse
#check trailingReindex_PhaseHadamard
#print axioms trailingReindex_PhaseHadamard
#check trailingReindex_commonRay
#print axioms trailingReindex_commonRay
#check trailingReindex_commonRay_iff
#print axioms trailingReindex_commonRay_iff
#check trailingRay_rawOverlap
#print axioms trailingRay_rawOverlap
#check carrierCandidate_commonRay_iff
#print axioms carrierCandidate_commonRay_iff
#check normSq_det_column_permutation
#print axioms normSq_det_column_permutation
#check normSq_det_row_permutation
#print axioms normSq_det_row_permutation
#check trailingReindex_northeast
#print axioms trailingReindex_northeast
#check trailingReindex_southwest
#print axioms trailingReindex_southwest
#check trailingReindex_normalized
#print axioms trailingReindex_normalized
#check trailingReindex_normalized_iff
#print axioms trailingReindex_normalized_iff
#check carrierCandidate_physical_iff
#print axioms carrierCandidate_physical_iff
#check normalized_reduced_physical_cover
#print axioms normalized_reduced_physical_cover

end
end Mub6.Classification.FourPhase
