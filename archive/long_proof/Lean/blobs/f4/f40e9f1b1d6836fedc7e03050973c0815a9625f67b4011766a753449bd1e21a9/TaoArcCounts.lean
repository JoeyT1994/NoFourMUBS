import TaoCircleData

namespace Mub6.Numerical.CircleArc.TaoCounts
open CirclePrototype.Tao
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

theorem image_count :
    ((List.range heapBound).filter (fun h => (images h).isSome)).length = 263 := by
  decide +kernel

theorem term_count :
    ((List.range coefficientCount).map (fun c =>
      ((List.range heapBound).filter (fun h => (termBoxes c h).isSome)).length)).sum = 961 := by
  decide +kernel

#print axioms image_count
#print axioms term_count
end Mub6.Numerical.CircleArc.TaoCounts
