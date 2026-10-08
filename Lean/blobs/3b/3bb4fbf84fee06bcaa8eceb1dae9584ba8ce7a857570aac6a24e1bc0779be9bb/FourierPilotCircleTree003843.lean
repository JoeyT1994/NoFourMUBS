import FourierPilotCircleTree003844
import FourierPilotCircleTree003855
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003843
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![40, 55, 63, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003844.state FourierPilotCircleTree003855.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003844.covered FourierPilotCircleTree003855.covered
#print axioms covered
end FourierPilotCircleTree003843
