import FourierPilotCircleTree002717
import FourierPilotCircleTree002724
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002716
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002717.state FourierPilotCircleTree002724.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002717.covered FourierPilotCircleTree002724.covered
#print axioms covered
end FourierPilotCircleTree002716
