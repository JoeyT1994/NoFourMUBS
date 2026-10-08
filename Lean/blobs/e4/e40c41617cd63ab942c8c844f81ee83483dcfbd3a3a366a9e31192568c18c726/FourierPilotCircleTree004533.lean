import FourierPilotCircleTree004534
import FourierPilotCircleTree004535
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004533
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![6, 5, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004534.state FourierPilotCircleTree004535.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004534.covered FourierPilotCircleTree004535.covered
#print axioms covered
end FourierPilotCircleTree004533
