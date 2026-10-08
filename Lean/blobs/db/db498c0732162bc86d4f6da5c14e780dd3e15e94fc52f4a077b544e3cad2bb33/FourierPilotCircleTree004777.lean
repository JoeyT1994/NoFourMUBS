import FourierPilotCircleTree004778
import FourierPilotCircleTree004837
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004777
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![6, 6, 6, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004778.state FourierPilotCircleTree004837.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004778.covered FourierPilotCircleTree004837.covered
#print axioms covered
end FourierPilotCircleTree004777
