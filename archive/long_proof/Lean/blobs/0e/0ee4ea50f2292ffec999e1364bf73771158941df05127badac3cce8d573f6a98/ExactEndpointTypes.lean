import CircleTaoCompleteLocal

set_option autoImplicit false
namespace Mub6.Numerical.CircleFinalIndependentTypeReview
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleFullPrototype
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.GraphKernel

-- Bare @ constants preserve every implicit parameter. An unintended extra
-- Tables or proof parameter cannot be inserted silently by these assignments.
theorem exact_all_root_type : ∀ i : Fin 32,
    CoveredState Mub6.Numerical.CircleArc.TaoSoundness.taoTables
      (toCarrier R carrier) T R targets (signsOf i) rootState :=
  @TaoSymmetryClosing.all_32_roots

theorem exact_closed_cover_type : CompleteUniformRayCover (toCarrier R carrier)
    (fun v => toRawRayBox R (targets v)) :=
  @TaoSymmetryClosing.complete_circle_cover

theorem exact_generic_exclusion_type : ∀ B : BasisMatrix,
    IsOrthonormalBasis B →
    (∀ k, IsNormalizedFlatRay (fun r => B r k)) →
    CarrierBox (toCarrier R carrier) (rawCarrierOfFlatBasis B) →
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D :=
  @CompleteLocal.generic_relative_carrier_nonextension

theorem exact_closed_witness_type : ∃ B : BasisMatrix,
    IsOrthonormalBasis B ∧
    (∀ k, IsNormalizedFlatRay (fun r => B r k)) ∧
    rawCarrierOfFlatBasis B = TaoCalibration.tao :=
  @NormalizedWitness.tao_normalized_witness

theorem exact_closed_certificate_type : ∃ B : BasisMatrix,
    IsOrthonormalBasis B ∧
    (∀ k, IsNormalizedFlatRay (fun r => B r k)) ∧
    rawCarrierOfFlatBasis B = TaoCalibration.tao ∧
    CarrierBox (toCarrier R carrier) (rawCarrierOfFlatBasis B) ∧
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D :=
  @CompleteLocal.concrete_complete_local_certificate

set_option pp.fullNames true
set_option pp.explicit true
#check @TaoSymmetryClosing.routed_representative_roots
#check @TaoSymmetryClosing.all_32_roots
#check @TaoSymmetryClosing.complete_circle_cover
#check @NormalizedWitness.tao_normalized_witness
#check @CompleteLocal.generic_relative_carrier_nonextension
#check @CompleteLocal.concrete_complete_local_certificate
#print axioms exact_all_root_type
#print axioms exact_closed_cover_type
#print axioms exact_generic_exclusion_type
#print axioms exact_closed_witness_type
#print axioms exact_closed_certificate_type
end Mub6.Numerical.CircleFinalIndependentTypeReview
