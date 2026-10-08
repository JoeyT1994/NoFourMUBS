import FourierPilotCircleTree003311
import FourierPilotCircleTree003312
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003310
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![15, 20, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003311.state FourierPilotCircleTree003312.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003311.covered FourierPilotCircleTree003312.covered
#print axioms covered
end FourierPilotCircleTree003310
