import PartitionKernel

/-! Closed kernel-evaluated controls for the generic checker.
These examples do not refute a quartet or claim a complete local exclusion. -/

namespace Mub6.Numerical.IntervalKernel.Examples

def columnOneRegion : CarrierRegion := fun _ k =>
  if k = 0 then boxPoint 1 0 else ⟨-1, 1, -1, 1⟩

theorem rootZero_computed_rejection :
    rejectRayBox columnOneRegion rootZeroBox (.amplitude 0) = true := by decide +kernel

theorem rootZero_physical_exclusion {H : BasisMatrix} (hH : CarrierBox columnOneRegion H)
    {z : Vector} (hz : MemRawRayBox rootZeroBox z) : ¬ IsRawCommonRay H z :=
  rejectRayBox_sound (.amplitude 0) rootZero_computed_rejection hH hz

def centralBox : RawRayBox := fun _ => ⟨-1/2, 1/2, -1/2, 1/2⟩

theorem central_computed_rejection :
    rejectRayBox columnOneRegion centralBox (.unit 0) = true := by decide +kernel

def twoBoxes : Fin 2 → RawRayBox := fun v => if v = 0 then leftChild fullRoot 0 false 0
  else rightChild fullRoot 0 false 0

def twoBoxTree : RayPartition 2 := .split 0 false 0 (.keep 0) (.keep 1)

theorem twoBox_computed_cover : checkPartition columnOneRegion twoBoxes fullRoot twoBoxTree = true :=
  by decide +kernel

theorem twoBox_physical_cover {H : BasisMatrix} (hH : CarrierBox columnOneRegion H)
    {z : Vector} (hz : IsRawCommonRay H z) : ∃ v, MemRawRayBox (twoBoxes v) z :=
  checkPartition_fullRoot_sound twoBox_computed_cover hH hz

def oneRayBox : RawRayBox := fun _ => boxPoint 1 0
def imaginaryRayBox : RawRayBox := fun _ => boxPoint 0 1
def balancedRayBox : RawRayBox := fun j => if j.val < 2 then boxPoint 1 0 else boxPoint (-1) 0

theorem self_overlap_computed : overlapBox imaginaryRayBox imaginaryRayBox = boxPoint 6 0 := by decide +kernel
theorem self_orth_flag_false : orthPossible oneRayBox oneRayBox = false := by decide +kernel
theorem self_unbiased_flag_false : unbiasedPossible oneRayBox oneRayBox = false := by decide +kernel
theorem balanced_orth_flag_true : orthPossible oneRayBox balancedRayBox = true := by decide +kernel

#print axioms rootZero_computed_rejection
#print axioms rootZero_physical_exclusion
#print axioms central_computed_rejection
#print axioms twoBox_computed_cover
#print axioms twoBox_physical_cover
#print axioms self_overlap_computed
#print axioms self_orth_flag_false
#print axioms self_unbiased_flag_false
#print axioms balanced_orth_flag_true

end Mub6.Numerical.IntervalKernel.Examples
