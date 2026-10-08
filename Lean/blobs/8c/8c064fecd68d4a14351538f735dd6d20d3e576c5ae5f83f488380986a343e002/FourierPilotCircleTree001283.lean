import FourierPilotCircleTree001284
import FourierPilotCircleTree001285
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001283
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![27, 20, 16, 17, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001284.state FourierPilotCircleTree001285.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001284.covered FourierPilotCircleTree001285.covered
#print axioms covered
end FourierPilotCircleTree001283
