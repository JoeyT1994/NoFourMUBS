import FourierPilotCircleTree005242
import FourierPilotCircleTree005273
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005241
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 7, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005242.state FourierPilotCircleTree005273.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005242.covered FourierPilotCircleTree005273.covered
#print axioms covered
end FourierPilotCircleTree005241
