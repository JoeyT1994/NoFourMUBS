import FourierPilotCircleTree002946
import FourierPilotCircleTree002947
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002945
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![80, 55, 32, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002946.state FourierPilotCircleTree002947.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002946.covered FourierPilotCircleTree002947.covered
#print axioms covered
end FourierPilotCircleTree002945
