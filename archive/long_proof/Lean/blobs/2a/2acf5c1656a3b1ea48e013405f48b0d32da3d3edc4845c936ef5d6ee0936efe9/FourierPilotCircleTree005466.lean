import FourierPilotCircleTree005467
import FourierPilotCircleTree005510
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005466
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005467.state FourierPilotCircleTree005510.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005467.covered FourierPilotCircleTree005510.covered
#print axioms covered
end FourierPilotCircleTree005466
