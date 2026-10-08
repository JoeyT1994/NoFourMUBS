import FourierPilotCircleTree003098
import FourierPilotCircleTree003117
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003097
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![14, 9, 15, 25, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003098.state FourierPilotCircleTree003117.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003098.covered FourierPilotCircleTree003117.covered
#print axioms covered
end FourierPilotCircleTree003097
