import FourierPilotCircleSound
import AdaptiveCircleTree
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000188
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![29, 23, 15, 21, 15]
def tree : Tree 48 := (.reject ⟨5, by decide⟩)
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000188
