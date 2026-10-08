import FourierPilotCircleTree005008
import FourierPilotCircleTree005019
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005007
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![50, 49, 54, 43, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005008.state FourierPilotCircleTree005019.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005008.covered FourierPilotCircleTree005019.covered
#print axioms covered
end FourierPilotCircleTree005007
