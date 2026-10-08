import FourierPilotCircleTree003438
import FourierPilotCircleTree003459
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003437
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![9, 27, 10, 25, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003438.state FourierPilotCircleTree003459.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003438.covered FourierPilotCircleTree003459.covered
#print axioms covered
end FourierPilotCircleTree003437
