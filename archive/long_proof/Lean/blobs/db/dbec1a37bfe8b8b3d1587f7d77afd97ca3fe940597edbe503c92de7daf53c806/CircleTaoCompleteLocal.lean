import CircleTaoSymmetryClosing
import CircleTaoNormalizedWitness

/-! A concrete normalized Tao member of the checked local carrier exists and
cannot be extended by two normalized flat bases. This is a local Tao
calibration certificate, not a global no-four-MUB theorem. -/
namespace Mub6.Numerical.CircleFullPrototype.CompleteLocal
open Mub6
open Mub6.Numerical
open Mub6.Numerical.CircleFullPrototype
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CirclePrototype.Tao

theorem generic_relative_carrier_nonextension
    {B : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hflat : ∀ k, IsNormalizedFlatRay (fun r => B r k))
    (hE : CarrierBox (toCarrier R carrier) (rawCarrierOfFlatBasis B)) :
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D :=
  TaoSymmetryClosing.normalized_extension_excluded hB hflat hE

theorem concrete_complete_local_certificate : ∃ B : BasisMatrix,
    IsOrthonormalBasis B ∧
    (∀ k, IsNormalizedFlatRay (fun r => B r k)) ∧
    rawCarrierOfFlatBasis B = TaoCalibration.tao ∧
    CarrierBox (toCarrier R carrier) (rawCarrierOfFlatBasis B) ∧
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D := by
  obtain ⟨B, hB, hflat, hraw⟩ := NormalizedWitness.tao_normalized_witness
  have hE : CarrierBox (toCarrier R carrier) (rawCarrierOfFlatBasis B) := by
    rw [hraw, CircleClosing.carrier_match]
    exact TaoCalibration.tao_memCarrier
  exact ⟨B, hB, hflat, hraw, hE,
    generic_relative_carrier_nonextension hB hflat hE⟩

#print axioms generic_relative_carrier_nonextension
#print axioms concrete_complete_local_certificate
end Mub6.Numerical.CircleFullPrototype.CompleteLocal
