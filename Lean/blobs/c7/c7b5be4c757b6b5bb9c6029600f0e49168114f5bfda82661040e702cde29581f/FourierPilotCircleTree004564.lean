import FourierPilotCircleTree004565
import FourierPilotCircleTree004566
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004564
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![98, 93, 63, 84, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004565.state FourierPilotCircleTree004566.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004565.covered FourierPilotCircleTree004566.covered
#print axioms covered
end FourierPilotCircleTree004564
