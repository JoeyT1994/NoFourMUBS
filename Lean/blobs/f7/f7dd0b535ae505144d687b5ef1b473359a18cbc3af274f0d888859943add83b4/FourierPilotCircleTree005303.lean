import FourierPilotCircleTree005304
import FourierPilotCircleTree005305
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005303
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![27, 18, 20, 15, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005304.state FourierPilotCircleTree005305.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005304.covered FourierPilotCircleTree005305.covered
#print axioms covered
end FourierPilotCircleTree005303
