import FourierPilotCircleTree003433
import FourierPilotCircleTree003460
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003432
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![9, 13, 10, 12, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003433.state FourierPilotCircleTree003460.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003433.covered FourierPilotCircleTree003460.covered
#print axioms covered
end FourierPilotCircleTree003432
