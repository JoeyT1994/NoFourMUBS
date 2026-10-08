import FourierPilotCircleTree001327
import FourierPilotCircleTree001330
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001326
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![14, 10, 8, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001327.state FourierPilotCircleTree001330.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001327.covered FourierPilotCircleTree001330.covered
#print axioms covered
end FourierPilotCircleTree001326
