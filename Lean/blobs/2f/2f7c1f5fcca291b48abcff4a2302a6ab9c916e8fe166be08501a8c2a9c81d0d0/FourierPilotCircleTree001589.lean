import FourierPilotCircleTree001590
import FourierPilotCircleTree001591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001589
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![57, 96, 32, 43, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001590.state FourierPilotCircleTree001591.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001590.covered FourierPilotCircleTree001591.covered
#print axioms covered
end FourierPilotCircleTree001589
