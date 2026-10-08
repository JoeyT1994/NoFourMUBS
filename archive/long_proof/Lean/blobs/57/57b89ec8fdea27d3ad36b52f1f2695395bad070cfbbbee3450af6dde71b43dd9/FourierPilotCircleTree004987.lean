import FourierPilotCircleTree004988
import FourierPilotCircleTree005031
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004987
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![12, 12, 13, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004988.state FourierPilotCircleTree005031.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004988.covered FourierPilotCircleTree005031.covered
#print axioms covered
end FourierPilotCircleTree004987
