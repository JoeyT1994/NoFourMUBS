import FourierPilotCircleTree000409
import FourierPilotCircleTree000438
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000408
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![9, 9, 8, 26, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000409.state FourierPilotCircleTree000438.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000409.covered FourierPilotCircleTree000438.covered
#print axioms covered
end FourierPilotCircleTree000408
