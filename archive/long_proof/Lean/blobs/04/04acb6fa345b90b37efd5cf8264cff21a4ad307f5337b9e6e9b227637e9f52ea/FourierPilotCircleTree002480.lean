import FourierPilotCircleTree002481
import FourierPilotCircleTree002482
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002480
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![3, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002481.state FourierPilotCircleTree002482.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002481.covered FourierPilotCircleTree002482.covered
#print axioms covered
end FourierPilotCircleTree002480
