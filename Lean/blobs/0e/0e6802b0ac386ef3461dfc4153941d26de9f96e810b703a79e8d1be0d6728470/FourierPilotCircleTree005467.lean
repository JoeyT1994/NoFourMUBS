import FourierPilotCircleTree005468
import FourierPilotCircleTree005509
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005467
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005468.state FourierPilotCircleTree005509.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005468.covered FourierPilotCircleTree005509.covered
#print axioms covered
end FourierPilotCircleTree005467
