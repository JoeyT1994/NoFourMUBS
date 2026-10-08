import FourierPilotCircleTree004744
import FourierPilotCircleTree004749
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004743
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004744.state FourierPilotCircleTree004749.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004744.covered FourierPilotCircleTree004749.covered
#print axioms covered
end FourierPilotCircleTree004743
