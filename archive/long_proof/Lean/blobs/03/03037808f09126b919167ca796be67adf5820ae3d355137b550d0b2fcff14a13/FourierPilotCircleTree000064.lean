import FourierPilotCircleTree000065
import FourierPilotCircleTree000102
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000064
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000065.state FourierPilotCircleTree000102.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000065.covered FourierPilotCircleTree000102.covered
#print axioms covered
end FourierPilotCircleTree000064
