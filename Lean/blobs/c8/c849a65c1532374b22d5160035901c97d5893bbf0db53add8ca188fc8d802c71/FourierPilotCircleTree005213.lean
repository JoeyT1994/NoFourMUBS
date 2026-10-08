import FourierPilotCircleTree005214
import FourierPilotCircleTree005215
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005213
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![19, 48, 16, 52, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005214.state FourierPilotCircleTree005215.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005214.covered FourierPilotCircleTree005215.covered
#print axioms covered
end FourierPilotCircleTree005213
