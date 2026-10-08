import FourierPilotCircleTree003436
import FourierPilotCircleTree003437
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003435
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![9, 13, 10, 25, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003436.state FourierPilotCircleTree003437.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003436.covered FourierPilotCircleTree003437.covered
#print axioms covered
end FourierPilotCircleTree003435
