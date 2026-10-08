import FourierPilotCircleTree002761
import FourierPilotCircleTree002762
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002760
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![46, 49, 31, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002761.state FourierPilotCircleTree002762.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002761.covered FourierPilotCircleTree002762.covered
#print axioms covered
end FourierPilotCircleTree002760
