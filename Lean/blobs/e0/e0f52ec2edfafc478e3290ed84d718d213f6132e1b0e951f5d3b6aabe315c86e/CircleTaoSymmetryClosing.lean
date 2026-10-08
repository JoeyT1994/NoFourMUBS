import CircleTaoSymmetryData
import CircleForestRepresentatives

/-! Final application. Its imported representative theorems are generated
from the eight complete chart-root trees; this module is not valid until
those 53 modules have been kernel checked. -/
namespace Mub6.Numerical.CircleFullPrototype.TaoSymmetryClosing
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleFullPrototype
open Mub6.Numerical.CircleFullPrototype.TaoSymmetry
open Mub6.Numerical.CircleClosing

theorem routed_representative_roots : ∀ i : Fin 32,
    CoveredState taoTables (toCarrier R carrier) T R targets
      (signsOf (chosenRepresentative i)) rootState := by
  intro i
  fin_cases i
  · exact Forest.representative_root_0
  · exact Forest.representative_root_1
  · exact Forest.representative_root_1
  · exact Forest.representative_root_3
  · exact Forest.representative_root_1
  · exact Forest.representative_root_3
  · exact Forest.representative_root_6
  · exact Forest.representative_root_7
  · exact Forest.representative_root_1
  · exact Forest.representative_root_6
  · exact Forest.representative_root_6
  · exact Forest.representative_root_11
  · exact Forest.representative_root_3
  · exact Forest.representative_root_7
  · exact Forest.representative_root_11
  · exact Forest.representative_root_15
  · exact Forest.representative_root_1
  · exact Forest.representative_root_6
  · exact Forest.representative_root_3
  · exact Forest.representative_root_7
  · exact Forest.representative_root_6
  · exact Forest.representative_root_11
  · exact Forest.representative_root_11
  · exact Forest.representative_root_15
  · exact Forest.representative_root_3
  · exact Forest.representative_root_11
  · exact Forest.representative_root_7
  · exact Forest.representative_root_15
  · exact Forest.representative_root_7
  · exact Forest.representative_root_15
  · exact Forest.representative_root_15
  · exact Forest.representative_root_31

theorem all_32_roots : ∀ i : Fin 32,
    CoveredState taoTables (toCarrier R carrier) T R targets (signsOf i) rootState :=
  all_roots_from_routed routed_representative_roots

theorem complete_circle_cover : chartCoverObligation :=
  complete_from_32 all_32_roots

theorem tao_carrier_nonempty : ∃ H : BasisMatrix, PhaseHadamard H ∧
    CarrierBox (toCarrier R carrier) H := circle_carrier_contains_tao

theorem raw_five_pair_excluded {H : BasisMatrix}
    (hH : PhaseHadamard H)
    (hE : CarrierBox (toCarrier R carrier) H) :
    ¬ ∃ z w : Fin 5 → Vector, Mub6.Numerical.GraphKernel.IsRawFivePair H z w :=
  raw_pair_excluded_from_chart_cover complete_circle_cover hH hE

theorem tao_no_raw_five_pair : ¬ ∃ z w : Fin 5 → Vector,
    Mub6.Numerical.GraphKernel.IsRawFivePair TaoCalibration.tao z w :=
  conditional_tao_no_raw_five_pair complete_circle_cover

theorem normalized_extension_excluded
    {B : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hE : CarrierBox (toCarrier R carrier) (rawCarrierOfFlatBasis B)) :
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D :=
  normalized_extension_excluded_from_chart_cover complete_circle_cover
    hB hBflat hE

theorem tao_normalized_extension_excluded
    {B : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hBtao : rawCarrierOfFlatBasis B = TaoCalibration.tao) :
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D := by
  apply normalized_extension_excluded hB hBflat
  rw [hBtao, carrier_match]
  exact TaoCalibration.tao_memCarrier

#print axioms routed_representative_roots
#print axioms all_32_roots
#print axioms complete_circle_cover
#print axioms tao_carrier_nonempty
#print axioms raw_five_pair_excluded
#print axioms tao_no_raw_five_pair
#print axioms normalized_extension_excluded
#print axioms tao_normalized_extension_excluded
end Mub6.Numerical.CircleFullPrototype.TaoSymmetryClosing
