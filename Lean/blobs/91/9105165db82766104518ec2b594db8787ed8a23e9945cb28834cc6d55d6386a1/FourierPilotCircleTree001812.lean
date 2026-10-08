import FourierPilotCircleTree001813
import FourierPilotCircleTree001814
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001812
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![12, 4, 4, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001813.state FourierPilotCircleTree001814.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001813.covered FourierPilotCircleTree001814.covered
#print axioms covered
end FourierPilotCircleTree001812
