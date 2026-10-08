import FourierPilotCircleTree003483
import FourierPilotCircleTree003484
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003482
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![7, 5, 6, 5, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003483.state FourierPilotCircleTree003484.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003483.covered FourierPilotCircleTree003484.covered
#print axioms covered
end FourierPilotCircleTree003482
