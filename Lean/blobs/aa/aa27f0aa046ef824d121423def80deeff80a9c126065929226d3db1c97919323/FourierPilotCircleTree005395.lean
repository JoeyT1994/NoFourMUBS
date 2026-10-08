import FourierPilotCircleTree005396
import FourierPilotCircleTree005417
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005395
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![4, 13, 10, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005396.state FourierPilotCircleTree005417.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005396.covered FourierPilotCircleTree005417.covered
#print axioms covered
end FourierPilotCircleTree005395
