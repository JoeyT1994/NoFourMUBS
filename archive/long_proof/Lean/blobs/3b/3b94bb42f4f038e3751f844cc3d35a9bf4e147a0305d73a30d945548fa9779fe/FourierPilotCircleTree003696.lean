import FourierPilotCircleTree003697
import FourierPilotCircleTree003698
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003696
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![98, 93, 64, 84, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003697.state FourierPilotCircleTree003698.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003697.covered FourierPilotCircleTree003698.covered
#print axioms covered
end FourierPilotCircleTree003696
