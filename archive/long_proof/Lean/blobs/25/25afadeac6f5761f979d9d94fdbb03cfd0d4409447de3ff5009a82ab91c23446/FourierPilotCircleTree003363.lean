import FourierPilotCircleTree003364
import FourierPilotCircleTree003365
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003363
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003364.state FourierPilotCircleTree003365.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003364.covered FourierPilotCircleTree003365.covered
#print axioms covered
end FourierPilotCircleTree003363
