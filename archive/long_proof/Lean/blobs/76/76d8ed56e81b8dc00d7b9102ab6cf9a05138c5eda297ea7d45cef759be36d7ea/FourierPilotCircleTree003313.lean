import FourierPilotCircleTree003314
import FourierPilotCircleTree003341
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003313
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![15, 20, 27, 26, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003314.state FourierPilotCircleTree003341.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003314.covered FourierPilotCircleTree003341.covered
#print axioms covered
end FourierPilotCircleTree003313
