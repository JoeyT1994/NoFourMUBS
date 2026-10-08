import FourierPilotCircleTree003032
import FourierPilotCircleTree003033
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003031
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 5, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003032.state FourierPilotCircleTree003033.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003032.covered FourierPilotCircleTree003033.covered
#print axioms covered
end FourierPilotCircleTree003031
