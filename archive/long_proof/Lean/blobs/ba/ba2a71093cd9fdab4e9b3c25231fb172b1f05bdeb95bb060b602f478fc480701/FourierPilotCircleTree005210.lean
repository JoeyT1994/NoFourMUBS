import FourierPilotCircleTree005211
import FourierPilotCircleTree005218
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005210
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![19, 24, 16, 26, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005211.state FourierPilotCircleTree005218.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005211.covered FourierPilotCircleTree005218.covered
#print axioms covered
end FourierPilotCircleTree005210
