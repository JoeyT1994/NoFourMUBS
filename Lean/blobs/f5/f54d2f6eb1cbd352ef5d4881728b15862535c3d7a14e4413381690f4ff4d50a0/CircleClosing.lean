import TaoCircleData
import TaoGraphBinding
import TaoCarrierWitness

/-! Exact binding of the circle producer's Tao data to the previously checked
graph and physical Tao carrier. The circle partition cover is an explicit
premise, not a theorem of this module. -/
namespace Mub6.Numerical.CircleClosing

open Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals
set_option maxHeartbeats 2000000

private theorem carrier_coordinate_match : ∀ r k : Fin 6,
    toRectangle CirclePrototype.Tao.R (CirclePrototype.Tao.carrier r k) =
      TaoCalibration.carrier r k := by
  intro r k
  fin_cases r <;> fin_cases k <;> decide +kernel

theorem carrier_match :
    toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier =
      TaoCalibration.carrier := by
  funext r k
  exact carrier_coordinate_match r k

private def upscaleBox (q : ZBox) : ZBox :=
  ⟨⟨q.re.lo * 17592186044416, q.re.hi * 17592186044416⟩,
   ⟨q.im.lo * 17592186044416, q.im.hi * 17592186044416⟩⟩

private theorem target_integer_match : ∀ v : Fin 90, ∀ j : Fin 5,
    CirclePrototype.Tao.targets v j = upscaleBox (TaoCatalogue.zBoxes v j) := by
  intro v j
  fin_cases v <;> fin_cases j <;> decide +kernel

private theorem scale_coordinate (x : ℤ) :
    ((x * 17592186044416 : ℤ) : ℚ) / (CirclePrototype.Tao.R : ℕ) =
      (x : ℚ) / 16 := by
  norm_num [CirclePrototype.Tao.R]
  ring

private theorem upscale_rectangle (q : ZBox) :
    toRectangle CirclePrototype.Tao.R (upscaleBox q) = toRectangle 16 q := by
  cases q with
  | mk re im =>
    cases re with
    | mk reLo reHi =>
      cases im with
      | mk imLo imHi =>
        simp [toRectangle, upscaleBox]
        exact ⟨by simpa only [Int.cast_mul, Int.cast_ofNat] using scale_coordinate reLo,
          by simpa only [Int.cast_mul, Int.cast_ofNat] using scale_coordinate reHi,
          by simpa only [Int.cast_mul, Int.cast_ofNat] using scale_coordinate imLo,
          by simpa only [Int.cast_mul, Int.cast_ofNat] using scale_coordinate imHi⟩

private theorem target_coordinate_match : ∀ v : Fin 90, ∀ j : Fin 5,
    toRectangle CirclePrototype.Tao.R (CirclePrototype.Tao.targets v j) =
      TaoCatalogue.boxes v j := by
  intro v j
  calc
    toRectangle CirclePrototype.Tao.R (CirclePrototype.Tao.targets v j) =
        toRectangle CirclePrototype.Tao.R (upscaleBox (TaoCatalogue.zBoxes v j)) := by
          rw [target_integer_match v j]
    _ = toRectangle 16 (TaoCatalogue.zBoxes v j) := upscale_rectangle _
    _ = TaoCatalogue.boxes v j := by
      simpa only [toRawRayBox] using congrFun (TaoCatalogue.integer_raw_boxes_match v) j

theorem target_boxes_match :
    (fun v : Fin 90 => toRawRayBox CirclePrototype.Tao.R (CirclePrototype.Tao.targets v)) =
      TaoCatalogue.boxes := by
  funext v j
  exact target_coordinate_match v j

theorem circle_carrier_contains_tao :
    ∃ H : BasisMatrix, PhaseHadamard H ∧
      CarrierBox (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier) H := by
  rw [carrier_match]
  exact TaoCalibration.carrier_contains_physical_matrix

/-- The complete circle cover is the one remaining premise. The finite graph
refutation and its physical graph semantics are inherited from TaoGraphBinding. -/
theorem conditional_no_raw_five_pair
    (hcover : CompleteUniformRayCover
      (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier)
      (fun v : Fin 90 => toRawRayBox CirclePrototype.Tao.R (CirclePrototype.Tao.targets v)))
    {H : BasisMatrix} (hH : PhaseHadamard H)
    (hE : CarrierBox (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier) H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w := by
  have hlocal := hcover H hH hE
  have hlocalOld : CompleteRayCover H TaoCatalogue.boxes := by
    rw [← target_boxes_match]
    exact hlocal
  exact TaoCatalogue.conditional_no_raw_five_pair hlocalOld

/-- A concrete physical member of the circle carrier is Tao's phase Hadamard.
The conclusion still depends on `hcover`; it is not an unconditional exclusion. -/
theorem conditional_tao_no_raw_five_pair
    (hcover : CompleteUniformRayCover
      (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier)
      (fun v : Fin 90 => toRawRayBox CirclePrototype.Tao.R (CirclePrototype.Tao.targets v))) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair TaoCalibration.tao z w := by
  have hE : CarrierBox
      (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier) TaoCalibration.tao := by
    rw [carrier_match]
    exact TaoCalibration.tao_memCarrier
  exact conditional_no_raw_five_pair hcover TaoCalibration.tao_isPhaseHadamard hE

/-- Physical normalized-flat two-basis extension endpoint, conditional on
complete uniform circle coverage for every phase Hadamard in this carrier. -/
theorem conditional_no_normalized_two_basis_extension
    (hcover : CompleteUniformRayCover
      (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier)
      (fun v : Fin 90 => toRawRayBox CirclePrototype.Tao.R (CirclePrototype.Tao.targets v)))
    {B : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hE : CarrierBox (toCarrier CirclePrototype.Tao.R CirclePrototype.Tao.carrier)
      (rawCarrierOfFlatBasis B)) :
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D := by
  rintro ⟨C, D, hC, hD, hCflat, hDflat, hBC, hBD, hCD⟩
  have hpair := normalized_flat_pair_gives_raw_pair hC hD hBflat hCflat hDflat
    hBC hBD hCD
  exact conditional_no_raw_five_pair hcover
    (rawCarrierOfFlatBasis_isPhaseHadamard hB hBflat) hE
    ⟨firstFiveRays C, firstFiveRays D, hpair⟩

#print axioms carrier_match
#print axioms target_boxes_match
#print axioms circle_carrier_contains_tao
#print axioms conditional_no_raw_five_pair
#print axioms conditional_tao_no_raw_five_pair
#print axioms conditional_no_normalized_two_basis_extension

end Mub6.Numerical.CircleClosing
