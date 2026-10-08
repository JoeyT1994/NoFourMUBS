import FourierPilotCircleTree003157
import FourierPilotCircleTree003194
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003156
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 13, 10, 10, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003157.state FourierPilotCircleTree003194.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003157.covered FourierPilotCircleTree003194.covered
#print axioms covered
end FourierPilotCircleTree003156
