import FourierPilotCircleTree000416
import FourierPilotCircleTree000435
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000415
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![19, 19, 16, 52, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000416.state FourierPilotCircleTree000435.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000416.covered FourierPilotCircleTree000435.covered
#print axioms covered
end FourierPilotCircleTree000415
