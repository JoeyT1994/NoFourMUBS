import FourierPilotCircleTree004140
import FourierPilotCircleTree004141
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004139
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![27, 18, 20, 16, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004140.state FourierPilotCircleTree004141.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004140.covered FourierPilotCircleTree004141.covered
#print axioms covered
end FourierPilotCircleTree004139
