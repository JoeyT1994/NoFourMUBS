import FourierPilotCircleTree003089
import FourierPilotCircleTree003090
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003088
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![7, 4, 7, 12, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003089.state FourierPilotCircleTree003090.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003089.covered FourierPilotCircleTree003090.covered
#print axioms covered
end FourierPilotCircleTree003088
