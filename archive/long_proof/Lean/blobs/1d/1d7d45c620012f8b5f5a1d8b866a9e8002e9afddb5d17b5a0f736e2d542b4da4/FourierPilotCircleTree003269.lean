import FourierPilotCircleTree003270
import FourierPilotCircleTree003273
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003269
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![14, 23, 15, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003270.state FourierPilotCircleTree003273.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003270.covered FourierPilotCircleTree003273.covered
#print axioms covered
end FourierPilotCircleTree003269
