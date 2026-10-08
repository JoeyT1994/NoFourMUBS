import FourierPilotCircleTree003503
import FourierPilotCircleTree003504
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003502
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![58, 20, 27, 44, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003503.state FourierPilotCircleTree003504.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003503.covered FourierPilotCircleTree003504.covered
#print axioms covered
end FourierPilotCircleTree003502
