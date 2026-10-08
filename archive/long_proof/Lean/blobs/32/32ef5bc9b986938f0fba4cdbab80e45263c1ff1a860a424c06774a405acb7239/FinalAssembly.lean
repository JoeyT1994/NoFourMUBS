import CircleClosing

/-! Final integration interface. A future, independently checked chart/partition
module must supply `chartCoverObligation`; no such theorem is imported here. -/
namespace Mub6.Numerical.CircleClosing

open Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def chartCoverObligation : Prop :=
  CompleteUniformRayCover
    (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier)
    (fun v : Fin 90 => toRawRayBox CirclePrototype.Tao.R (CirclePrototype.Tao.targets v))

theorem raw_pair_excluded_from_chart_cover (hchart : chartCoverObligation)
    {H : BasisMatrix} (hH : PhaseHadamard H)
    (hE : CarrierBox (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier) H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w :=
  conditional_no_raw_five_pair hchart hH hE

theorem normalized_extension_excluded_from_chart_cover (hchart : chartCoverObligation)
    {B : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hE : CarrierBox (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier)
      (rawCarrierOfFlatBasis B)) :
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D :=
  conditional_no_normalized_two_basis_extension hchart hB hBflat hE

#print axioms raw_pair_excluded_from_chart_cover
#print axioms normalized_extension_excluded_from_chart_cover

end Mub6.Numerical.CircleClosing
