import FourierPilotCircleTree000071
import FourierPilotCircleTree000100
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000070
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![5, 7, 6, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000071.state FourierPilotCircleTree000100.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000071.covered FourierPilotCircleTree000100.covered
#print axioms covered
end FourierPilotCircleTree000070
