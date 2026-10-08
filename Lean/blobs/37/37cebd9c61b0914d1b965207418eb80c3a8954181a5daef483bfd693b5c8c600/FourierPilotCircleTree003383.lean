import FourierPilotCircleTree003384
import FourierPilotCircleTree003385
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003383
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![11, 9, 15, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003384.state FourierPilotCircleTree003385.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003384.covered FourierPilotCircleTree003385.covered
#print axioms covered
end FourierPilotCircleTree003383
