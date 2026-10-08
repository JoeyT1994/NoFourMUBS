import FourierPilotCircleTree005347
import FourierPilotCircleTree005348
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005346
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![14, 23, 15, 10, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005347.state FourierPilotCircleTree005348.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005347.covered FourierPilotCircleTree005348.covered
#print axioms covered
end FourierPilotCircleTree005346
