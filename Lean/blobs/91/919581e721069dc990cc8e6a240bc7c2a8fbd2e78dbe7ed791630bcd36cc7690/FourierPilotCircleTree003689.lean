import FourierPilotCircleTree003690
import FourierPilotCircleTree003701
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003689
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![49, 46, 32, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003690.state FourierPilotCircleTree003701.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003690.covered FourierPilotCircleTree003701.covered
#print axioms covered
end FourierPilotCircleTree003689
