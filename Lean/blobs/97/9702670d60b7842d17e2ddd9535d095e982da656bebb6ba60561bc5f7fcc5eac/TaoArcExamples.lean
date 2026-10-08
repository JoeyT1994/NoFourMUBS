import CircleArcTables
import TaoCircleData

namespace Mub6.Numerical.CircleArc.TaoExamples
open IntegerIntervals CircleCharts CircleCharts.Partition CirclePrototype.Tao
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

theorem image2_checked : checkImageOption T R (parameters 2) (images 2) = true := by
  decide +kernel

theorem nontrivial_term2_checked :
    checkTermOption T R (parameters 2) (midpointRe 2) (midpointIm 2)
      (coefficients 2) (images 2) (centres 2 2) (termBoxes 2 2) = true := by
  decide +kernel

theorem nontrivial_term2_physical {t : ℝ}
    (ht : Mem (intervalValue (parameters 2)) ((T : ℝ) * t))
    {c : ℂ} (hc : MemBox (boxValue (coefficients 2)) ((R : ℂ) * c)) :
    MemBox (boxValue (termBoxes 2 2)) ((R : ℂ) * (c * circlePoint t)) := by
  exact checkTermOption_sound (by decide) (by decide) image2_checked nontrivial_term2_checked
    ht hc (by decide +kernel)

#print axioms image2_checked
#print axioms nontrivial_term2_checked
#print axioms nontrivial_term2_physical
end Mub6.Numerical.CircleArc.TaoExamples
