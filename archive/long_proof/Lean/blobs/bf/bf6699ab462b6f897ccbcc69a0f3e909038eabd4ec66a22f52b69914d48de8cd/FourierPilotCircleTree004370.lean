import FourierPilotCircleTree004371
import FourierPilotCircleTree004372
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004370
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![55, 17, 40, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004371.state FourierPilotCircleTree004372.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004371.covered FourierPilotCircleTree004372.covered
#print axioms covered
end FourierPilotCircleTree004370
