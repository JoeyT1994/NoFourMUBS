import FourierPilotCircleTree003559
import FourierPilotCircleTree003560
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003558
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![96, 57, 32, 32, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003559.state FourierPilotCircleTree003560.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003559.covered FourierPilotCircleTree003560.covered
#print axioms covered
end FourierPilotCircleTree003558
