import FourierPilotCircleTree003767
import FourierPilotCircleTree003782
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003766
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![9, 14, 15, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003767.state FourierPilotCircleTree003782.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003767.covered FourierPilotCircleTree003782.covered
#print axioms covered
end FourierPilotCircleTree003766
