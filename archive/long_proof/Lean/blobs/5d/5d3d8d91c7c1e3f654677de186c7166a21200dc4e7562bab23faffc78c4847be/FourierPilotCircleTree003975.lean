import FourierPilotCircleTree003976
import FourierPilotCircleTree003977
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003975
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![59, 37, 16, 51, 45]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003976.state FourierPilotCircleTree003977.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003976.covered FourierPilotCircleTree003977.covered
#print axioms covered
end FourierPilotCircleTree003975
