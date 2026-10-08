import D0CircleData
import D0GraphData
import ExceptionalControls
set_option autoImplicit false

namespace Mub6.Numerical.D0CircleBinding
open IntegerIntervals GraphKernel CirclePrototype.D0

theorem carrier_match : toCarrier R carrier = D0Local.carrier := by
  funext r k
  fin_cases r <;> fin_cases k <;> decide +kernel

theorem publishedD0_mem_carrier : CarrierBox (toCarrier R carrier) ExceptionalTerminals.D0Binding.publishedD0Phase := by
  rw [carrier_match, ← ExceptionalTerminals.d0_control_literal]
  exact D0Local.d0_mem_carrier

private def upscaleBox (q : ZBox) : ZBox :=
  ⟨⟨q.re.lo * 17592186044416, q.re.hi * 17592186044416⟩,
   ⟨q.im.lo * 17592186044416, q.im.hi * 17592186044416⟩⟩

private theorem target_integer_match : ∀ v : Fin 120, ∀ j : Fin 5,
    targets v j = upscaleBox (D0Prototype.zBoxes v j) := by
  intro v j
  fin_cases v <;> fin_cases j <;> decide +kernel

private theorem scale_coordinate (x : ℤ) :
    ((x * 17592186044416 : ℤ) : ℚ) / (R : ℕ) = (x : ℚ) / 16 := by
  norm_num [R]
  ring

private theorem upscale_rectangle (q : ZBox) :
    toRectangle R (upscaleBox q) = toRectangle 16 q := by
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

theorem target_boxes_match :
    (fun v : Fin 120 => toRawRayBox R (targets v)) = D0Prototype.boxes := by
  funext v j
  change toRectangle R (targets v j) = toRectangle 16 (D0Prototype.zBoxes v j)
  rw [target_integer_match, upscale_rectangle]


#print axioms publishedD0_mem_carrier
#print axioms target_boxes_match
end Mub6.Numerical.D0CircleBinding
