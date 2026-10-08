import FourierPilotCircleTree003015
import FourierPilotCircleTree003016
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003014
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 9, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003015.state FourierPilotCircleTree003016.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003015.covered FourierPilotCircleTree003016.covered
#print axioms covered
end FourierPilotCircleTree003014
