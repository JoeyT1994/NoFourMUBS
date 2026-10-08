import FourierPilotCircleTree003173
import FourierPilotCircleTree003178
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003172
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![17, 55, 20, 43, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003173.state FourierPilotCircleTree003178.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003173.covered FourierPilotCircleTree003178.covered
#print axioms covered
end FourierPilotCircleTree003172
