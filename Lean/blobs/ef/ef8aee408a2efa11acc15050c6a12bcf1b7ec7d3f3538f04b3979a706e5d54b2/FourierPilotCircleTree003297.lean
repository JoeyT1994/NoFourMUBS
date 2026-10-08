import FourierPilotCircleTree003298
import FourierPilotCircleTree003347
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003297
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 5, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003298.state FourierPilotCircleTree003347.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003298.covered FourierPilotCircleTree003347.covered
#print axioms covered
end FourierPilotCircleTree003297
