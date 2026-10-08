import FourierPilotCircleTree000626
import FourierPilotCircleTree000653
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000625
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![23, 22, 20, 30, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000626.state FourierPilotCircleTree000653.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000626.covered FourierPilotCircleTree000653.covered
#print axioms covered
end FourierPilotCircleTree000625
