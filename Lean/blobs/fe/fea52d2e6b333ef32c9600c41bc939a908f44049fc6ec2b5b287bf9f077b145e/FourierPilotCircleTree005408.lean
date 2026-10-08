import FourierPilotCircleTree005409
import FourierPilotCircleTree005412
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005408
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![18, 27, 20, 25, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005409.state FourierPilotCircleTree005412.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005409.covered FourierPilotCircleTree005412.covered
#print axioms covered
end FourierPilotCircleTree005408
