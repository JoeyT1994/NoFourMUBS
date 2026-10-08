import FourierPilotCircleTree005137
import FourierPilotCircleTree005138
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005136
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![28, 28, 16, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005137.state FourierPilotCircleTree005138.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005137.covered FourierPilotCircleTree005138.covered
#print axioms covered
end FourierPilotCircleTree005136
