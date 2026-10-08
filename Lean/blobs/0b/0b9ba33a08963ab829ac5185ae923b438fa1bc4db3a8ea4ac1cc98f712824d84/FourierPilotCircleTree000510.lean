import FourierPilotCircleTree000511
import FourierPilotCircleTree000512
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000510
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![28, 28, 31, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000511.state FourierPilotCircleTree000512.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000511.covered FourierPilotCircleTree000512.covered
#print axioms covered
end FourierPilotCircleTree000510
