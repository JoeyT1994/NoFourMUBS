import FourierPilotCircleTree005007
import FourierPilotCircleTree005020
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005006
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![50, 49, 54, 43, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005007.state FourierPilotCircleTree005020.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005007.covered FourierPilotCircleTree005020.covered
#print axioms covered
end FourierPilotCircleTree005006
