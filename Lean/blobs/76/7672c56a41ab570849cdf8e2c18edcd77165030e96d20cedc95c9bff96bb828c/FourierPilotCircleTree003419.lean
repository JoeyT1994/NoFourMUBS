import FourierPilotCircleTree003420
import FourierPilotCircleTree003467
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003419
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003420.state FourierPilotCircleTree003467.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003420.covered FourierPilotCircleTree003467.covered
#print axioms covered
end FourierPilotCircleTree003419
