import IntegerPartition
namespace Mub6.Numerical.IntegerIntervals.Examples

def scale : ℕ := 16
def carrier : ZCarrier := fun _ _ => ⟨⟨-16,16⟩,⟨-16,16⟩⟩
def negative : ZRayBox := fun j =>
  if j = 0 then ⟨⟨-16,0⟩,⟨-16,16⟩⟩ else ⟨⟨-16,16⟩,⟨-16,16⟩⟩
def positive : ZRayBox := fun j =>
  if j = 0 then ⟨⟨0,16⟩,⟨-16,16⟩⟩ else ⟨⟨-16,16⟩,⟨-16,16⟩⟩
def boxes (v : Fin 2) : ZRayBox := if v = 0 then negative else positive

theorem left_checked : checkZPartition scale carrier boxes negative (.keep 0) = true := by
  decide +kernel

theorem right_checked : checkZPartition scale carrier boxes positive (.keep 1) = true := by
  decide +kernel

theorem assembled_cover : CoveredBy scale carrier boxes (fullRoot scale) := by
  apply coveredBy_split_literal (fullRoot scale) negative positive 0 false 0
  · decide +kernel
  · decide +kernel
  · exact coveredBy_of_check (by decide) left_checked
  · exact coveredBy_of_check (by decide) right_checked

theorem physical_fullRoot_cover {H : BasisMatrix} (hH : CarrierBox (toCarrier scale carrier) H)
    {z : Vector} (hz : IsRawCommonRay H z) :
    ∃ v, MemRawRayBox (toRawRayBox scale (boxes v)) z :=
  coveredBy_fullRoot (by decide) assembled_cover hH hz

def imaginary : ZRayBox := fun _ => boxPoint 0 16

theorem conjugation_control : overlapBox 16 imaginary imaginary = boxPoint 1536 0 := by
  decide +kernel

theorem self_not_orthogonal : orthPossible 16 imaginary imaginary = false := by
  decide +kernel

theorem self_not_unbiased : unbiasedPossible 16 imaginary imaginary = false := by
  decide +kernel

#print axioms assembled_cover
#print axioms physical_fullRoot_cover
#print axioms conjugation_control
#print axioms self_not_orthogonal
#print axioms self_not_unbiased
end Mub6.Numerical.IntegerIntervals.Examples
