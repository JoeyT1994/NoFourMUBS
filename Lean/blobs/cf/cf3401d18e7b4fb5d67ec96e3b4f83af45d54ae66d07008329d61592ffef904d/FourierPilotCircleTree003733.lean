import FourierPilotCircleTree003734
import FourierPilotCircleTree003735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003733
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003734.state FourierPilotCircleTree003735.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003734.covered FourierPilotCircleTree003735.covered
#print axioms covered
end FourierPilotCircleTree003733
