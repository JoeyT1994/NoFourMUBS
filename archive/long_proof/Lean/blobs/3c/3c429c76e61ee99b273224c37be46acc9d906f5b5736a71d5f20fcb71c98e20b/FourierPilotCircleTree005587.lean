import FourierPilotCircleTree005588
import FourierPilotCircleTree005607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005587
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![19, 19, 16, 52, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005588.state FourierPilotCircleTree005607.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005588.covered FourierPilotCircleTree005607.covered
#print axioms covered
end FourierPilotCircleTree005587
