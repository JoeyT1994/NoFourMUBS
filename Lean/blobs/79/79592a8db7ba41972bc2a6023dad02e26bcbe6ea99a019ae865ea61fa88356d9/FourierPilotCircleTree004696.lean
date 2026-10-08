import FourierPilotCircleTree004697
import FourierPilotCircleTree004702
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004696
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![93, 91, 41, 61, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004697.state FourierPilotCircleTree004702.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004697.covered FourierPilotCircleTree004702.covered
#print axioms covered
end FourierPilotCircleTree004696
