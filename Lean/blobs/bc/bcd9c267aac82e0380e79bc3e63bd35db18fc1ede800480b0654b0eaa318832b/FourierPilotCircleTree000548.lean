import FourierPilotCircleTree000549
import FourierPilotCircleTree000558
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000548
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000549.state FourierPilotCircleTree000558.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000549.covered FourierPilotCircleTree000558.covered
#print axioms covered
end FourierPilotCircleTree000548
