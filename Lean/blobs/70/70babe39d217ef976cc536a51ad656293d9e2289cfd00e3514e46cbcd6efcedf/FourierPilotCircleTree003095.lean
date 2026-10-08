import FourierPilotCircleTree003096
import FourierPilotCircleTree003097
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003095
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![14, 9, 15, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003096.state FourierPilotCircleTree003097.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003096.covered FourierPilotCircleTree003097.covered
#print axioms covered
end FourierPilotCircleTree003095
