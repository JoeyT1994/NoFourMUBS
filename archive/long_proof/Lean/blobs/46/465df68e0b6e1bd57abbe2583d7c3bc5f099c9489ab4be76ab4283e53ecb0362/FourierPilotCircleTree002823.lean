import FourierPilotCircleTree002824
import FourierPilotCircleTree002827
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002823
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![98, 93, 32, 84, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002824.state FourierPilotCircleTree002827.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002824.covered FourierPilotCircleTree002827.covered
#print axioms covered
end FourierPilotCircleTree002823
