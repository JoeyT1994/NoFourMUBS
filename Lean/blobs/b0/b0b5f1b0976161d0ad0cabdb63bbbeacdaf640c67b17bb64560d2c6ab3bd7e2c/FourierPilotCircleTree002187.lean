import FourierPilotCircleTree002188
import FourierPilotCircleTree002197
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002187
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![111, 40, 63, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002188.state FourierPilotCircleTree002197.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002188.covered FourierPilotCircleTree002197.covered
#print axioms covered
end FourierPilotCircleTree002187
