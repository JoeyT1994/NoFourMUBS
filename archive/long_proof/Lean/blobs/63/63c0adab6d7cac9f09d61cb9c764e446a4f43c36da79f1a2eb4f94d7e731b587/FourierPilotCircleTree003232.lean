import FourierPilotCircleTree003233
import FourierPilotCircleTree003234
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003232
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![19, 24, 8, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003233.state FourierPilotCircleTree003234.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003233.covered FourierPilotCircleTree003234.covered
#print axioms covered
end FourierPilotCircleTree003232
