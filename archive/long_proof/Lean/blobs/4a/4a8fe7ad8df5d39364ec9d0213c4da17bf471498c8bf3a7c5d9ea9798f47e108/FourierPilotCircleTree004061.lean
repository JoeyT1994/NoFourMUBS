import FourierPilotCircleTree004062
import FourierPilotCircleTree004109
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004061
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![2, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004062.state FourierPilotCircleTree004109.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004062.covered FourierPilotCircleTree004109.covered
#print axioms covered
end FourierPilotCircleTree004061
