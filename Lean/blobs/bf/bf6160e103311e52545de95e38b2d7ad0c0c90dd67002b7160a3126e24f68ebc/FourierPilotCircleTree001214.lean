import FourierPilotCircleTree001215
import FourierPilotCircleTree001216
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001214
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![10, 13, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001215.state FourierPilotCircleTree001216.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001215.covered FourierPilotCircleTree001216.covered
#print axioms covered
end FourierPilotCircleTree001214
