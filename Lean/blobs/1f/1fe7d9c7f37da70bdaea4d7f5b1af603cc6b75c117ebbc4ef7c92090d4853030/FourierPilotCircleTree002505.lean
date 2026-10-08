import FourierPilotCircleTree002506
import FourierPilotCircleTree002507
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002505
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![11, 4, 7, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002506.state FourierPilotCircleTree002507.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002506.covered FourierPilotCircleTree002507.covered
#print axioms covered
end FourierPilotCircleTree002505
