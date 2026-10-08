import FourierPilotCircleTree000028
import FourierPilotCircleTree000029
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000027
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![4, 12, 4, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000028.state FourierPilotCircleTree000029.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000028.covered FourierPilotCircleTree000029.covered
#print axioms covered
end FourierPilotCircleTree000027
