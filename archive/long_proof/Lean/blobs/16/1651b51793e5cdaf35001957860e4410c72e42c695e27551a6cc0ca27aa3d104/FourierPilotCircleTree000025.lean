import FourierPilotCircleTree000026
import FourierPilotCircleTree000053
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000025
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![4, 6, 4, 6, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000026.state FourierPilotCircleTree000053.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000026.covered FourierPilotCircleTree000053.covered
#print axioms covered
end FourierPilotCircleTree000025
