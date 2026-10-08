import FourierPilotCircleTree001812
import FourierPilotCircleTree001829
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001811
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 4, 4, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001812.state FourierPilotCircleTree001829.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001812.covered FourierPilotCircleTree001829.covered
#print axioms covered
end FourierPilotCircleTree001811
