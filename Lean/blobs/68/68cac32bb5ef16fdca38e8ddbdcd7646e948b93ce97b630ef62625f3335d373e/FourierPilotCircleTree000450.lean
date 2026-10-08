import FourierPilotCircleTree000451
import FourierPilotCircleTree000452
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000450
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![5, 5, 4, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000451.state FourierPilotCircleTree000452.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000451.covered FourierPilotCircleTree000452.covered
#print axioms covered
end FourierPilotCircleTree000450
