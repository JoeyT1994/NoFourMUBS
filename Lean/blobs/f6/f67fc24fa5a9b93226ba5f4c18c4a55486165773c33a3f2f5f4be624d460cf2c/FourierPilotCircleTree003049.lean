import FourierPilotCircleTree003050
import FourierPilotCircleTree003051
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003049
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![27, 20, 31, 17, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003050.state FourierPilotCircleTree003051.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003050.covered FourierPilotCircleTree003051.covered
#print axioms covered
end FourierPilotCircleTree003049
