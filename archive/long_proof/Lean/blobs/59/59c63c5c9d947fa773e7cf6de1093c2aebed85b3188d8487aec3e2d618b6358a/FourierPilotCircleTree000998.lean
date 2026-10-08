import FourierPilotCircleTree000999
import FourierPilotCircleTree001000
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000998
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000999.state FourierPilotCircleTree001000.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000999.covered FourierPilotCircleTree001000.covered
#print axioms covered
end FourierPilotCircleTree000998
