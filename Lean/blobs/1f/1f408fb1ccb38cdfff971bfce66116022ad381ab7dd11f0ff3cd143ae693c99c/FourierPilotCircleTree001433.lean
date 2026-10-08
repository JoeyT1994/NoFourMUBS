import FourierPilotCircleTree001434
import FourierPilotCircleTree001435
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001433
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![38, 47, 31, 52, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001434.state FourierPilotCircleTree001435.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001434.covered FourierPilotCircleTree001435.covered
#print axioms covered
end FourierPilotCircleTree001433
