import FourierPilotCircleTree001130
import FourierPilotCircleTree001131
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001129
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![2, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001130.state FourierPilotCircleTree001131.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001130.covered FourierPilotCircleTree001131.covered
#print axioms covered
end FourierPilotCircleTree001129
