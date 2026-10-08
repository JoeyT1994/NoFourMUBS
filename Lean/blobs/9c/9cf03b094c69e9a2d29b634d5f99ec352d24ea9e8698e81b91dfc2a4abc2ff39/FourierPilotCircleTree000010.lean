import FourierPilotCircleTree000011
import FourierPilotCircleTree000016
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000010
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000011.state FourierPilotCircleTree000016.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000011.covered FourierPilotCircleTree000016.covered
#print axioms covered
end FourierPilotCircleTree000010
