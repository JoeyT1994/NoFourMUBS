import FourierPilotCircleTree004142
import FourierPilotCircleTree004143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004141
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![27, 18, 20, 16, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004142.state FourierPilotCircleTree004143.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004142.covered FourierPilotCircleTree004143.covered
#print axioms covered
end FourierPilotCircleTree004141
