import FourierPilotCircleTree004546
import FourierPilotCircleTree004547
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004545
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![24, 11, 15, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004546.state FourierPilotCircleTree004547.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004546.covered FourierPilotCircleTree004547.covered
#print axioms covered
end FourierPilotCircleTree004545
