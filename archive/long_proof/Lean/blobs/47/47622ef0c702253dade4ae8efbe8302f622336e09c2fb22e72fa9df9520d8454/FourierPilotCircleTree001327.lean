import FourierPilotCircleTree001328
import FourierPilotCircleTree001329
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001327
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![14, 20, 8, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001328.state FourierPilotCircleTree001329.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001328.covered FourierPilotCircleTree001329.covered
#print axioms covered
end FourierPilotCircleTree001327
