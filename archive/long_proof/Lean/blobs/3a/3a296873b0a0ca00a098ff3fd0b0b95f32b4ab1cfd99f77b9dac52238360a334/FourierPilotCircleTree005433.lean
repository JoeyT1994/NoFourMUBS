import FourierPilotCircleTree005434
import FourierPilotCircleTree005435
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005433
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![5, 7, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005434.state FourierPilotCircleTree005435.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005434.covered FourierPilotCircleTree005435.covered
#print axioms covered
end FourierPilotCircleTree005433
