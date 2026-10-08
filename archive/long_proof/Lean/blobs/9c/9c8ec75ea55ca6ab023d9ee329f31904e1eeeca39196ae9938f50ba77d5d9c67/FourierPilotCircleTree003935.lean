import FourierPilotCircleTree003936
import FourierPilotCircleTree003937
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003935
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![14, 20, 8, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003936.state FourierPilotCircleTree003937.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003936.covered FourierPilotCircleTree003937.covered
#print axioms covered
end FourierPilotCircleTree003935
