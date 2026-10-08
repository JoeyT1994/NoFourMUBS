import FourierPilotCircleTree002412
import FourierPilotCircleTree002425
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002411
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002412.state FourierPilotCircleTree002425.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002412.covered FourierPilotCircleTree002425.covered
#print axioms covered
end FourierPilotCircleTree002411
