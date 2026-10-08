import FourierPilotCircleTree003627
import FourierPilotCircleTree003648
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003626
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![23, 24, 31, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003627.state FourierPilotCircleTree003648.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003627.covered FourierPilotCircleTree003648.covered
#print axioms covered
end FourierPilotCircleTree003626
