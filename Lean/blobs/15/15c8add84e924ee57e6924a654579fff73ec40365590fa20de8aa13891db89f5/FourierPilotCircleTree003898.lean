import FourierPilotCircleTree003899
import FourierPilotCircleTree003900
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003898
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![55, 40, 32, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003899.state FourierPilotCircleTree003900.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003899.covered FourierPilotCircleTree003900.covered
#print axioms covered
end FourierPilotCircleTree003898
