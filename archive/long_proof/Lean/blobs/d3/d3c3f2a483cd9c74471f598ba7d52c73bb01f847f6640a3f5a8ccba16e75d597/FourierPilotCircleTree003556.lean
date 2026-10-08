import FourierPilotCircleTree003557
import FourierPilotCircleTree003558
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003556
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![96, 57, 32, 32, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003557.state FourierPilotCircleTree003558.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003557.covered FourierPilotCircleTree003558.covered
#print axioms covered
end FourierPilotCircleTree003556
