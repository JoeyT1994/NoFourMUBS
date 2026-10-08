import FourierPilotCircleTree004557
import FourierPilotCircleTree004558
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004556
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![49, 46, 31, 42, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004557.state FourierPilotCircleTree004558.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004557.covered FourierPilotCircleTree004558.covered
#print axioms covered
end FourierPilotCircleTree004556
