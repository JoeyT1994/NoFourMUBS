import FourierPilotCircleTree002056
import FourierPilotCircleTree002057
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002055
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 13, 8, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002056.state FourierPilotCircleTree002057.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002056.covered FourierPilotCircleTree002057.covered
#print axioms covered
end FourierPilotCircleTree002055
