import FourierPilotCircleTree002756
import FourierPilotCircleTree002757
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002755
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![46, 24, 31, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002756.state FourierPilotCircleTree002757.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002756.covered FourierPilotCircleTree002757.covered
#print axioms covered
end FourierPilotCircleTree002755
