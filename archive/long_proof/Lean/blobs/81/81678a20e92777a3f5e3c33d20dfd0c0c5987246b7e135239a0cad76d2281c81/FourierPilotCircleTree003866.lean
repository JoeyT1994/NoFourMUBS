import FourierPilotCircleTree003867
import FourierPilotCircleTree003988
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003866
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003867.state FourierPilotCircleTree003988.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003867.covered FourierPilotCircleTree003988.covered
#print axioms covered
end FourierPilotCircleTree003866
