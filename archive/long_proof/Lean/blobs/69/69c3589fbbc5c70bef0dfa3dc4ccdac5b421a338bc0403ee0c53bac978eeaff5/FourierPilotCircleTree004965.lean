import FourierPilotCircleTree004966
import FourierPilotCircleTree004971
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004965
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![6, 7, 4, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004966.state FourierPilotCircleTree004971.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004966.covered FourierPilotCircleTree004971.covered
#print axioms covered
end FourierPilotCircleTree004965
