import FourierPilotCircleTree001994
import FourierPilotCircleTree001995
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001993
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![2, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001994.state FourierPilotCircleTree001995.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001994.covered FourierPilotCircleTree001995.covered
#print axioms covered
end FourierPilotCircleTree001993
