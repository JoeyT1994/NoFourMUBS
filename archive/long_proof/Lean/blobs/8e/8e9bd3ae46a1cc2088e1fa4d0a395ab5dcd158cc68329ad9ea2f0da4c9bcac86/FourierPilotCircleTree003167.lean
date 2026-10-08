import FourierPilotCircleTree003168
import FourierPilotCircleTree003169
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003167
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![17, 27, 20, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003168.state FourierPilotCircleTree003169.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003168.covered FourierPilotCircleTree003169.covered
#print axioms covered
end FourierPilotCircleTree003167
