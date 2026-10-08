import FourierPilotCircleTree005210
import FourierPilotCircleTree005219
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005209
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![19, 24, 8, 26, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005210.state FourierPilotCircleTree005219.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005210.covered FourierPilotCircleTree005219.covered
#print axioms covered
end FourierPilotCircleTree005209
