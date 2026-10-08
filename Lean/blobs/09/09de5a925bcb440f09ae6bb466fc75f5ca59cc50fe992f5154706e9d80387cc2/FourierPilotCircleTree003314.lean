import FourierPilotCircleTree003315
import FourierPilotCircleTree003340
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003314
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![15, 20, 27, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003315.state FourierPilotCircleTree003340.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003315.covered FourierPilotCircleTree003340.covered
#print axioms covered
end FourierPilotCircleTree003314
