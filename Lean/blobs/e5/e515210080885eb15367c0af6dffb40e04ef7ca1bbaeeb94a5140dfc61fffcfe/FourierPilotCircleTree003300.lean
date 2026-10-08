import FourierPilotCircleTree003301
import FourierPilotCircleTree003344
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003300
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 5, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003301.state FourierPilotCircleTree003344.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003301.covered FourierPilotCircleTree003344.covered
#print axioms covered
end FourierPilotCircleTree003300
