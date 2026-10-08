import FourierPilotCircleTree003285
import FourierPilotCircleTree003296
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003284
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 4, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003285.state FourierPilotCircleTree003296.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003285.covered FourierPilotCircleTree003296.covered
#print axioms covered
end FourierPilotCircleTree003284
