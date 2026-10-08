import FourierPilotCircleTree000418
import FourierPilotCircleTree000433
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000417
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![38, 19, 16, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000418.state FourierPilotCircleTree000433.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000418.covered FourierPilotCircleTree000433.covered
#print axioms covered
end FourierPilotCircleTree000417
