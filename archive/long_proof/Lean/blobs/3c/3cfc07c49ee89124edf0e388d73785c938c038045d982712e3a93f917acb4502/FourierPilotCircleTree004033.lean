import FourierPilotCircleTree004034
import FourierPilotCircleTree004035
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004033
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![19, 23, 15, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004034.state FourierPilotCircleTree004035.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004034.covered FourierPilotCircleTree004035.covered
#print axioms covered
end FourierPilotCircleTree004033
