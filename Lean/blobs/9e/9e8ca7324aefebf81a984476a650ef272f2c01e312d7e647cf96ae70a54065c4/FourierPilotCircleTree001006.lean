import FourierPilotCircleTree001007
import FourierPilotCircleTree001054
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001006
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 4, 7, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001007.state FourierPilotCircleTree001054.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001007.covered FourierPilotCircleTree001054.covered
#print axioms covered
end FourierPilotCircleTree001006
