import FourierPilotCircleTree003061
import FourierPilotCircleTree003068
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003060
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![111, 80, 63, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003061.state FourierPilotCircleTree003068.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003061.covered FourierPilotCircleTree003068.covered
#print axioms covered
end FourierPilotCircleTree003060
