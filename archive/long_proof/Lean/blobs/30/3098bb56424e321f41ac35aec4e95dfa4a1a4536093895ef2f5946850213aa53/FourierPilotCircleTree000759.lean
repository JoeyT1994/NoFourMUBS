import FourierPilotCircleTree000760
import FourierPilotCircleTree000761
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000759
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![98, 100, 109, 68, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000760.state FourierPilotCircleTree000761.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000760.covered FourierPilotCircleTree000761.covered
#print axioms covered
end FourierPilotCircleTree000759
