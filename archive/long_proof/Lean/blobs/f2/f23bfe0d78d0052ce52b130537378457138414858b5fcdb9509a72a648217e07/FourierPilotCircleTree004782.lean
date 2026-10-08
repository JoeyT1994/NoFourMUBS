import FourierPilotCircleTree004783
import FourierPilotCircleTree004784
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004782
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![12, 12, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004783.state FourierPilotCircleTree004784.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004783.covered FourierPilotCircleTree004784.covered
#print axioms covered
end FourierPilotCircleTree004782
