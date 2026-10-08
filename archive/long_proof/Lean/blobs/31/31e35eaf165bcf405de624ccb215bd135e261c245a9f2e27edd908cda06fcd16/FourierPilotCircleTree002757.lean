import FourierPilotCircleTree002758
import FourierPilotCircleTree002759
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002757
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![46, 49, 31, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002758.state FourierPilotCircleTree002759.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002758.covered FourierPilotCircleTree002759.covered
#print axioms covered
end FourierPilotCircleTree002757
