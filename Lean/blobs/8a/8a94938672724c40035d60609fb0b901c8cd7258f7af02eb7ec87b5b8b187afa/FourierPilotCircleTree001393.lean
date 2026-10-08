import FourierPilotCircleTree001394
import FourierPilotCircleTree001449
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001393
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001394.state FourierPilotCircleTree001449.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001394.covered FourierPilotCircleTree001449.covered
#print axioms covered
end FourierPilotCircleTree001393
