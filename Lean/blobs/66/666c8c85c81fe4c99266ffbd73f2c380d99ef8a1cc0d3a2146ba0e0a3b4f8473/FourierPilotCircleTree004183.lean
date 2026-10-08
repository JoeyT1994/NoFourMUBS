import FourierPilotCircleTree004184
import FourierPilotCircleTree004209
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004183
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![14, 12, 8, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004184.state FourierPilotCircleTree004209.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004184.covered FourierPilotCircleTree004209.covered
#print axioms covered
end FourierPilotCircleTree004183
