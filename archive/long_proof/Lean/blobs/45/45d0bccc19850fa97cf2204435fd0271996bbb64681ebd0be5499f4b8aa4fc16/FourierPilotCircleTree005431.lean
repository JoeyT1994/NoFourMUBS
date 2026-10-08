import FourierPilotCircleTree005432
import FourierPilotCircleTree005433
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005431
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![5, 7, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005432.state FourierPilotCircleTree005433.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005432.covered FourierPilotCircleTree005433.covered
#print axioms covered
end FourierPilotCircleTree005431
