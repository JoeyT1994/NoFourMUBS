import FourierPilotCircleTree003736
import FourierPilotCircleTree003737
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003735
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003736.state FourierPilotCircleTree003737.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003736.covered FourierPilotCircleTree003737.covered
#print axioms covered
end FourierPilotCircleTree003735
