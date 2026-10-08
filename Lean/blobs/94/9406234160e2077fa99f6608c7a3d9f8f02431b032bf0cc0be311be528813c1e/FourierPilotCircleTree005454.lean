import FourierPilotCircleTree005455
import FourierPilotCircleTree005456
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005454
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![23, 28, 31, 31, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005455.state FourierPilotCircleTree005456.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005455.covered FourierPilotCircleTree005456.covered
#print axioms covered
end FourierPilotCircleTree005454
