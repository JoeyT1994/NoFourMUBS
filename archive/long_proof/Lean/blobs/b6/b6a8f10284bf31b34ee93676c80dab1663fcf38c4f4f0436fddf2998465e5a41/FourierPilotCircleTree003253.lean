import FourierPilotCircleTree003254
import FourierPilotCircleTree003255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003253
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 5, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003254.state FourierPilotCircleTree003255.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003254.covered FourierPilotCircleTree003255.covered
#print axioms covered
end FourierPilotCircleTree003253
