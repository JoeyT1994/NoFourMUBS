import FourierPilotCircleTree000030
import FourierPilotCircleTree000031
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000029
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![4, 12, 4, 13, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000030.state FourierPilotCircleTree000031.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000030.covered FourierPilotCircleTree000031.covered
#print axioms covered
end FourierPilotCircleTree000029
