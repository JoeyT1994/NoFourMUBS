import FourierPilotCircleTree003951
import FourierPilotCircleTree003984
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003950
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 4, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003951.state FourierPilotCircleTree003984.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003951.covered FourierPilotCircleTree003984.covered
#print axioms covered
end FourierPilotCircleTree003950
