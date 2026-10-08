import FourierPilotCircleTree005141
import FourierPilotCircleTree005142
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005140
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![28, 28, 16, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005141.state FourierPilotCircleTree005142.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005141.covered FourierPilotCircleTree005142.covered
#print axioms covered
end FourierPilotCircleTree005140
