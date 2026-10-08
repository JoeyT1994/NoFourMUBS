import FourierPilotCircleTree001037
import FourierPilotCircleTree001038
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001036
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![38, 38, 63, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001037.state FourierPilotCircleTree001038.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001037.covered FourierPilotCircleTree001038.covered
#print axioms covered
end FourierPilotCircleTree001036
