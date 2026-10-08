import FourierPilotCircleTree003259
import FourierPilotCircleTree003260
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003258
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 5, 7, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003259.state FourierPilotCircleTree003260.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003259.covered FourierPilotCircleTree003260.covered
#print axioms covered
end FourierPilotCircleTree003258
