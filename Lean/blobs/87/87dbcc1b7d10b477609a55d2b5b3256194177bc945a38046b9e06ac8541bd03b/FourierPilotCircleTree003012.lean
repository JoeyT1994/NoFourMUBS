import FourierPilotCircleTree003013
import FourierPilotCircleTree003014
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003012
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 4, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003013.state FourierPilotCircleTree003014.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003013.covered FourierPilotCircleTree003014.covered
#print axioms covered
end FourierPilotCircleTree003012
