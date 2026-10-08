import FourierPilotCircleTree005488
import FourierPilotCircleTree005495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005487
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![24, 19, 16, 8, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005488.state FourierPilotCircleTree005495.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005488.covered FourierPilotCircleTree005495.covered
#print axioms covered
end FourierPilotCircleTree005487
