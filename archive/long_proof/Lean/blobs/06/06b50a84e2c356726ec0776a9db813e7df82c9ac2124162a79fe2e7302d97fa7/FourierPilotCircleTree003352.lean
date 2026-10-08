import FourierPilotCircleTree003353
import FourierPilotCircleTree003354
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003352
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![3, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003353.state FourierPilotCircleTree003354.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003353.covered FourierPilotCircleTree003354.covered
#print axioms covered
end FourierPilotCircleTree003352
