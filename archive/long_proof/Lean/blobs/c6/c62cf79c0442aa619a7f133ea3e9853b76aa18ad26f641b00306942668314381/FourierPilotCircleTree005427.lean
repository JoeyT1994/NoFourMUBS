import FourierPilotCircleTree005428
import FourierPilotCircleTree005431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005427
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005428.state FourierPilotCircleTree005431.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005428.covered FourierPilotCircleTree005431.covered
#print axioms covered
end FourierPilotCircleTree005427
