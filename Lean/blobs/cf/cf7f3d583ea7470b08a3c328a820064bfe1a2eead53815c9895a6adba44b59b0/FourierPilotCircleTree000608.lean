import FourierPilotCircleTree000609
import FourierPilotCircleTree000660
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000608
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![11, 11, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000609.state FourierPilotCircleTree000660.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000609.covered FourierPilotCircleTree000660.covered
#print axioms covered
end FourierPilotCircleTree000608
