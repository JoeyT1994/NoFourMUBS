import FourierPilotCircleTree003643
import FourierPilotCircleTree003644
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003642
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![93, 98, 127, 107, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003643.state FourierPilotCircleTree003644.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003643.covered FourierPilotCircleTree003644.covered
#print axioms covered
end FourierPilotCircleTree003642
