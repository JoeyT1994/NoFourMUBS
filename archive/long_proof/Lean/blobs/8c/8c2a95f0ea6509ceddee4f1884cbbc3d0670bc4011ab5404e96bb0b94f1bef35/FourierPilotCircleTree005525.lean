import FourierPilotCircleTree005526
import FourierPilotCircleTree005545
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005525
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![7, 10, 13, 11, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005526.state FourierPilotCircleTree005545.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005526.covered FourierPilotCircleTree005545.covered
#print axioms covered
end FourierPilotCircleTree005525
