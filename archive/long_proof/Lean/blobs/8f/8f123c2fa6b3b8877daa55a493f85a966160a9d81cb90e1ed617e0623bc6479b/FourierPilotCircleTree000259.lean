import FourierPilotCircleTree000260
import FourierPilotCircleTree000261
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000259
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![5, 7, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000260.state FourierPilotCircleTree000261.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000260.covered FourierPilotCircleTree000261.covered
#print axioms covered
end FourierPilotCircleTree000259
