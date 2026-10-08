import FourierPilotCircleTree003847
import FourierPilotCircleTree003848
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003846
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![80, 111, 63, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003847.state FourierPilotCircleTree003848.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003847.covered FourierPilotCircleTree003848.covered
#print axioms covered
end FourierPilotCircleTree003846
