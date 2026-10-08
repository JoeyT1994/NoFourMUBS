import FourierPilotCircleTree005259
import FourierPilotCircleTree005266
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005258
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![20, 29, 27, 8, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005259.state FourierPilotCircleTree005266.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005259.covered FourierPilotCircleTree005266.covered
#print axioms covered
end FourierPilotCircleTree005258
