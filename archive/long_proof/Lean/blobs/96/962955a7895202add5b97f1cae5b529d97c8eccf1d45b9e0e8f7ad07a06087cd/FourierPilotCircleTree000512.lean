import FourierPilotCircleTree000513
import FourierPilotCircleTree000514
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000512
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![28, 28, 31, 43, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000513.state FourierPilotCircleTree000514.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000513.covered FourierPilotCircleTree000514.covered
#print axioms covered
end FourierPilotCircleTree000512
