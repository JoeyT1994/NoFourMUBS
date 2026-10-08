import FourierPilotCircleTree005589
import FourierPilotCircleTree005606
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005588
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![19, 19, 16, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005589.state FourierPilotCircleTree005606.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005589.covered FourierPilotCircleTree005606.covered
#print axioms covered
end FourierPilotCircleTree005588
