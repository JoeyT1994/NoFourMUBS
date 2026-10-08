import D0LiteralDataBinding
import D0GraphBinding
set_option autoImplicit false
namespace Mub6.Numerical.D0CircleBinding
open IntegerIntervals GraphKernel CirclePrototype.D0

theorem no_raw_five_pair_of_circle_cover
    (hcover : CompleteUniformRayCover (toCarrier R carrier)
      (fun v : Fin 120 => toRawRayBox R (targets v)))
    {H : BasisMatrix} (hH : PhaseHadamard H) (hE : CarrierBox (toCarrier R carrier) H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w := by
  apply D0Prototype.no_raw_five_pair_of_cover
  rw [← target_boxes_match]
  exact hcover H hH hE

theorem no_normalized_extension_of_circle_cover
    (hcover : CompleteUniformRayCover (toCarrier R carrier)
      (fun v : Fin 120 => toRawRayBox R (targets v)))
    {B : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hE : CarrierBox (toCarrier R carrier) (rawCarrierOfFlatBasis B)) :
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D := by
  rintro ⟨C, D, hC, hD, hCflat, hDflat, hBC, hBD, hCD⟩
  have hpair := normalized_flat_pair_gives_raw_pair hC hD hflat hCflat hDflat hBC hBD hCD
  exact no_raw_five_pair_of_circle_cover hcover
    (rawCarrierOfFlatBasis_isPhaseHadamard hB hflat) hE
    ⟨firstFiveRays C, firstFiveRays D, hpair⟩

#print axioms publishedD0_mem_carrier
#print axioms target_boxes_match
#print axioms no_raw_five_pair_of_circle_cover
#print axioms no_normalized_extension_of_circle_cover
end Mub6.Numerical.D0CircleBinding
