import FourierPilotCircleTree001281
import FourierPilotCircleTree001282
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001280
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![27, 20, 16, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001281.state FourierPilotCircleTree001282.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001281.covered FourierPilotCircleTree001282.covered
#print axioms covered
end FourierPilotCircleTree001280
