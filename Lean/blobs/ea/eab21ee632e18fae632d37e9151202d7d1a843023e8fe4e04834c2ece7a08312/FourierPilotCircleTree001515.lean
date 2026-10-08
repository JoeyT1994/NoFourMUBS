import FourierPilotCircleTree001516
import FourierPilotCircleTree001555
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001515
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![6, 4, 5, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001516.state FourierPilotCircleTree001555.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001516.covered FourierPilotCircleTree001555.covered
#print axioms covered
end FourierPilotCircleTree001515
