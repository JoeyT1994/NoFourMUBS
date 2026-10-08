import FourierPilotCircleTree002810
import FourierPilotCircleTree002833
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002809
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![24, 23, 8, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002810.state FourierPilotCircleTree002833.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002810.covered FourierPilotCircleTree002833.covered
#print axioms covered
end FourierPilotCircleTree002809
