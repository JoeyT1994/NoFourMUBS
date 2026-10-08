import FourierPilotCircleTree003439
import FourierPilotCircleTree003458
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003438
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![9, 27, 20, 25, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003439.state FourierPilotCircleTree003458.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003439.covered FourierPilotCircleTree003458.covered
#print axioms covered
end FourierPilotCircleTree003438
