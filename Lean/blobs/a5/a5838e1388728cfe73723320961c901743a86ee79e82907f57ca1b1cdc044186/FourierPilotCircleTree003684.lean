import FourierPilotCircleTree003685
import FourierPilotCircleTree003704
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003684
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![49, 23, 16, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003685.state FourierPilotCircleTree003704.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003685.covered FourierPilotCircleTree003704.covered
#print axioms covered
end FourierPilotCircleTree003684
