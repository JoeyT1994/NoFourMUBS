import FourierPilotCircleTree001263
import FourierPilotCircleTree001314
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001262
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![3, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001263.state FourierPilotCircleTree001314.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001263.covered FourierPilotCircleTree001314.covered
#print axioms covered
end FourierPilotCircleTree001262
