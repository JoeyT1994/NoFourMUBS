import FourierPilotCircleTree000701
import FourierPilotCircleTree000702
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000700
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![3, 3, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000701.state FourierPilotCircleTree000702.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000701.covered FourierPilotCircleTree000702.covered
#print axioms covered
end FourierPilotCircleTree000700
