import FourierPilotCircleTree000420
import FourierPilotCircleTree000431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000419
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![38, 38, 32, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000420.state FourierPilotCircleTree000431.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000420.covered FourierPilotCircleTree000431.covered
#print axioms covered
end FourierPilotCircleTree000419
