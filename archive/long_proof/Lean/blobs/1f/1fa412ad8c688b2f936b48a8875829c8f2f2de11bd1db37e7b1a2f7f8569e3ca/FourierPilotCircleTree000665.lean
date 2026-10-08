import FourierPilotCircleTree000666
import FourierPilotCircleTree000681
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000665
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000666.state FourierPilotCircleTree000681.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000666.covered FourierPilotCircleTree000681.covered
#print axioms covered
end FourierPilotCircleTree000665
