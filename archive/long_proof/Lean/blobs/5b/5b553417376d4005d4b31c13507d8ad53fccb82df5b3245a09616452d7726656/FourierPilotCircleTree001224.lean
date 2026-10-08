import FourierPilotCircleTree001225
import FourierPilotCircleTree001250
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001224
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![20, 27, 31, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001225.state FourierPilotCircleTree001250.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001225.covered FourierPilotCircleTree001250.covered
#print axioms covered
end FourierPilotCircleTree001224
