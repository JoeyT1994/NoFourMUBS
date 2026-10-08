import FourierPilotCircleTree003027
import FourierPilotCircleTree003028
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003026
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 5, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003027.state FourierPilotCircleTree003028.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003027.covered FourierPilotCircleTree003028.covered
#print axioms covered
end FourierPilotCircleTree003026
