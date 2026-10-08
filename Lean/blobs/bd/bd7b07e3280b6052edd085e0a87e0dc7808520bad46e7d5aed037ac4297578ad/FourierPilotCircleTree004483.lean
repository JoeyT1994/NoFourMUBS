import FourierPilotCircleTree004484
import FourierPilotCircleTree004513
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004483
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![23, 12, 8, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004484.state FourierPilotCircleTree004513.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004484.covered FourierPilotCircleTree004513.covered
#print axioms covered
end FourierPilotCircleTree004483
