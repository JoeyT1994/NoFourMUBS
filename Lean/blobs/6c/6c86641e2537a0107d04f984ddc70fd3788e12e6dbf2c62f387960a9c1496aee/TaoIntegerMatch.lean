import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

def rationalizeBox (q : IntegerIntervals.ZBox) : RationalRectangle :=
  ⟨(q.re.lo : ℚ) / 16, (q.re.hi : ℚ) / 16,
   (q.im.lo : ℚ) / 16, (q.im.hi : ℚ) / 16⟩

theorem integer_boxes_match : ∀ v : Fin 90, ∀ j : Fin 5,
    rationalizeBox (zBoxes v j) = boxes v j := by
  intro v j
  fin_cases v <;> fin_cases j <;> decide +kernel

theorem integer_raw_boxes_match : ∀ v : Fin 90,
    IntegerIntervals.toRawRayBox 16 (zBoxes v) = boxes v := by
  intro v
  funext j
  exact integer_boxes_match v j

#print axioms integer_boxes_match
#print axioms integer_raw_boxes_match

end Mub6.Numerical.GraphKernel.TaoCatalogue
