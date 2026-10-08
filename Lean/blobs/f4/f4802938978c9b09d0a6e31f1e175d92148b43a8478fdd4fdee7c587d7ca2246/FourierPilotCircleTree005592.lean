import FourierPilotCircleTree005593
import FourierPilotCircleTree005602
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005592
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![38, 38, 32, 104, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005593.state FourierPilotCircleTree005602.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005593.covered FourierPilotCircleTree005602.covered
#print axioms covered
end FourierPilotCircleTree005592
