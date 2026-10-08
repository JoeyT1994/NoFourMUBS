import FourierPilotCircleTree003017
import FourierPilotCircleTree003024
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003016
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 9, 15, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003017.state FourierPilotCircleTree003024.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003017.covered FourierPilotCircleTree003024.covered
#print axioms covered
end FourierPilotCircleTree003016
