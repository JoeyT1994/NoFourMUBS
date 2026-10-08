import FourierPilotCircleTree001191
import FourierPilotCircleTree001192
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001190
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 13, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001191.state FourierPilotCircleTree001192.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001191.covered FourierPilotCircleTree001192.covered
#print axioms covered
end FourierPilotCircleTree001190
