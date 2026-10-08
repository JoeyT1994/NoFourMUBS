import FourierPilotCircleTree000812
import FourierPilotCircleTree000863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000811
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![11, 11, 5, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000812.state FourierPilotCircleTree000863.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000812.covered FourierPilotCircleTree000863.covered
#print axioms covered
end FourierPilotCircleTree000811
