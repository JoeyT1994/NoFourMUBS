import FourierPilotCircleTree005114
import FourierPilotCircleTree005171
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005113
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005114.state FourierPilotCircleTree005171.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005114.covered FourierPilotCircleTree005171.covered
#print axioms covered
end FourierPilotCircleTree005113
