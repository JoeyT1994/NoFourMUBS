import FourierPilotCircleTree000001
import FourierPilotCircleTree000008
import FourierPilotCircleTree000199
import FourierPilotCircleTree000386
import FourierPilotCircleTree000541
import FourierPilotCircleTree000588
import FourierPilotCircleTree000791
import FourierPilotCircleTree000994
import FourierPilotCircleTree001121
import FourierPilotCircleTree001392
import FourierPilotCircleTree001615
import FourierPilotCircleTree001842
import FourierPilotCircleTree001985
import FourierPilotCircleTree002260
import FourierPilotCircleTree002483
import FourierPilotCircleTree002710
import FourierPilotCircleTree002857
import FourierPilotCircleTree003132
import FourierPilotCircleTree003355
import FourierPilotCircleTree003582
import FourierPilotCircleTree003729
import FourierPilotCircleTree004000
import FourierPilotCircleTree004223
import FourierPilotCircleTree004450
import FourierPilotCircleTree004593
import FourierPilotCircleTree004640
import FourierPilotCircleTree004843
import FourierPilotCircleTree005046
import FourierPilotCircleTree005173
import FourierPilotCircleTree005180
import FourierPilotCircleTree005371
import FourierPilotCircleTree005558
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleCover
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
theorem all_roots : ∀ signs, CoveredState tab physicalCarrier T R targets signs rootState := by
  intro signs
  have hs : signs = ![signs 0, signs 1, signs 2, signs 3, signs 4] := by funext j; fin_cases j <;> rfl
  rw [hs]
  cases h0 : signs 0 <;> cases h1 : signs 1 <;> cases h2 : signs 2 <;> cases h3 : signs 3 <;> cases h4 : signs 4
  · exact FourierPilotCircleTree000001.root_covered
  · exact FourierPilotCircleTree002857.root_covered
  · exact FourierPilotCircleTree001121.root_covered
  · exact FourierPilotCircleTree004593.root_covered
  · exact FourierPilotCircleTree000541.root_covered
  · exact FourierPilotCircleTree003729.root_covered
  · exact FourierPilotCircleTree001985.root_covered
  · exact FourierPilotCircleTree005173.root_covered
  · exact FourierPilotCircleTree000199.root_covered
  · exact FourierPilotCircleTree003355.root_covered
  · exact FourierPilotCircleTree001615.root_covered
  · exact FourierPilotCircleTree004843.root_covered
  · exact FourierPilotCircleTree000791.root_covered
  · exact FourierPilotCircleTree004223.root_covered
  · exact FourierPilotCircleTree002483.root_covered
  · exact FourierPilotCircleTree005371.root_covered
  · exact FourierPilotCircleTree000008.root_covered
  · exact FourierPilotCircleTree003132.root_covered
  · exact FourierPilotCircleTree001392.root_covered
  · exact FourierPilotCircleTree004640.root_covered
  · exact FourierPilotCircleTree000588.root_covered
  · exact FourierPilotCircleTree004000.root_covered
  · exact FourierPilotCircleTree002260.root_covered
  · exact FourierPilotCircleTree005180.root_covered
  · exact FourierPilotCircleTree000386.root_covered
  · exact FourierPilotCircleTree003582.root_covered
  · exact FourierPilotCircleTree001842.root_covered
  · exact FourierPilotCircleTree005046.root_covered
  · exact FourierPilotCircleTree000994.root_covered
  · exact FourierPilotCircleTree004450.root_covered
  · exact FourierPilotCircleTree002710.root_covered
  · exact FourierPilotCircleTree005558.root_covered
theorem complete_cover : CompleteUniformRayCover physicalCarrier boxes :=
  all_chart_roots_sound (by decide +kernel) (by decide +kernel) (by decide +kernel) all_roots
#print axioms all_roots
#print axioms complete_cover
end FourierPilotCircleCover
