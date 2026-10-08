import FourierPilotCircleTree001223
import FourierPilotCircleTree001224
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001222
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![20, 27, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001223.state FourierPilotCircleTree001224.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001223.covered FourierPilotCircleTree001224.covered
#print axioms covered
end FourierPilotCircleTree001222
