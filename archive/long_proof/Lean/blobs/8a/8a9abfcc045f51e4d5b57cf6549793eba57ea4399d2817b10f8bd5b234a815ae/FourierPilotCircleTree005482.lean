import FourierPilotCircleTree005483
import FourierPilotCircleTree005498
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005482
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![12, 9, 8, 8, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005483.state FourierPilotCircleTree005498.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005483.covered FourierPilotCircleTree005498.covered
#print axioms covered
end FourierPilotCircleTree005482
