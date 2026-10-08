import FourierPilotCircleTree000021
import FourierPilotCircleTree000062
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000020
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000021.state FourierPilotCircleTree000062.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000021.covered FourierPilotCircleTree000062.covered
#print axioms covered
end FourierPilotCircleTree000020
