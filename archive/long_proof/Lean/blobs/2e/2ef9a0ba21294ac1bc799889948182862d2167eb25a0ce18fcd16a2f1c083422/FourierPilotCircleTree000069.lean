import FourierPilotCircleTree000070
import FourierPilotCircleTree000101
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000069
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![5, 7, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000070.state FourierPilotCircleTree000101.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000070.covered FourierPilotCircleTree000101.covered
#print axioms covered
end FourierPilotCircleTree000069
