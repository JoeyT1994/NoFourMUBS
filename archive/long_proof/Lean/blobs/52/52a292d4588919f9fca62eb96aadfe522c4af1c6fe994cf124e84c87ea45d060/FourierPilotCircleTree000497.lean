import FourierPilotCircleTree000498
import FourierPilotCircleTree000537
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000497
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 7, 10, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000498.state FourierPilotCircleTree000537.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000498.covered FourierPilotCircleTree000537.covered
#print axioms covered
end FourierPilotCircleTree000497
