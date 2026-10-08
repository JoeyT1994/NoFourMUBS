import FourierPilotCircleTree000646
import FourierPilotCircleTree000647
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000645
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![93, 91, 82, 61, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000646.state FourierPilotCircleTree000647.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000646.covered FourierPilotCircleTree000647.covered
#print axioms covered
end FourierPilotCircleTree000645
