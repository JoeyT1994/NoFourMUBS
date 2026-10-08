import FourierPilotCircleTree005167
import FourierPilotCircleTree005168
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005166
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![7, 7, 4, 11, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005167.state FourierPilotCircleTree005168.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005167.covered FourierPilotCircleTree005168.covered
#print axioms covered
end FourierPilotCircleTree005166
