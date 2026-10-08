import FourierPilotCircleTree000931
import FourierPilotCircleTree000988
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000930
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 6, 6, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000931.state FourierPilotCircleTree000988.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000931.covered FourierPilotCircleTree000988.covered
#print axioms covered
end FourierPilotCircleTree000930
