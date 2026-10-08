import FourierPilotCircleTree000746
import FourierPilotCircleTree000747
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000745
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![24, 25, 27, 17, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000746.state FourierPilotCircleTree000747.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000746.covered FourierPilotCircleTree000747.covered
#print axioms covered
end FourierPilotCircleTree000745
