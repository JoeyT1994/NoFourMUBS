import FourierPilotCircleTree000867
import FourierPilotCircleTree000868
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000866
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![2, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000867.state FourierPilotCircleTree000868.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000867.covered FourierPilotCircleTree000868.covered
#print axioms covered
end FourierPilotCircleTree000866
