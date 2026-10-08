import FourierPilotCircleTree000915
import FourierPilotCircleTree000918
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000914
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![12, 7, 4, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000915.state FourierPilotCircleTree000918.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000915.covered FourierPilotCircleTree000918.covered
#print axioms covered
end FourierPilotCircleTree000914
