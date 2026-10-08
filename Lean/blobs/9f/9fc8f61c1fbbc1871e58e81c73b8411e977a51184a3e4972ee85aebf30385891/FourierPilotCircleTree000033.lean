import FourierPilotCircleTree000034
import FourierPilotCircleTree000049
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000033
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![9, 12, 8, 13, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000034.state FourierPilotCircleTree000049.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000034.covered FourierPilotCircleTree000049.covered
#print axioms covered
end FourierPilotCircleTree000033
