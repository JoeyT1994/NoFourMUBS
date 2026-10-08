import FourierPilotCircleTree000300
import FourierPilotCircleTree000333
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000299
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000300.state FourierPilotCircleTree000333.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000300.covered FourierPilotCircleTree000333.covered
#print axioms covered
end FourierPilotCircleTree000299
