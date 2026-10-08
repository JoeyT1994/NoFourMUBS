import FourierPilotCircleTree001943
import FourierPilotCircleTree001944
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001942
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![24, 23, 15, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001943.state FourierPilotCircleTree001944.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001943.covered FourierPilotCircleTree001944.covered
#print axioms covered
end FourierPilotCircleTree001942
