import FourierPilotCircleTree002726
import FourierPilotCircleTree002727
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002725
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002726.state FourierPilotCircleTree002727.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002726.covered FourierPilotCircleTree002727.covered
#print axioms covered
end FourierPilotCircleTree002725
