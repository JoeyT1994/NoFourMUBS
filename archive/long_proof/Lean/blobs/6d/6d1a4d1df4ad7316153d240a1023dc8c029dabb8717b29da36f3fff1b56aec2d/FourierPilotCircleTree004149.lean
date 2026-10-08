import FourierPilotCircleTree004150
import FourierPilotCircleTree004151
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004149
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![54, 74, 41, 32, 102]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004150.state FourierPilotCircleTree004151.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004150.covered FourierPilotCircleTree004151.covered
#print axioms covered
end FourierPilotCircleTree004149
