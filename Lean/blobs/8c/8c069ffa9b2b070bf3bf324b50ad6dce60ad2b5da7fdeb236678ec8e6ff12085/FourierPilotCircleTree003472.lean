import FourierPilotCircleTree003473
import FourierPilotCircleTree003522
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003472
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003473.state FourierPilotCircleTree003522.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003473.covered FourierPilotCircleTree003522.covered
#print axioms covered
end FourierPilotCircleTree003472
