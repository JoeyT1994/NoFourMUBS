import FourierPilotCircleTree002616
import FourierPilotCircleTree002617
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002615
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![7, 10, 13, 5, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002616.state FourierPilotCircleTree002617.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002616.covered FourierPilotCircleTree002617.covered
#print axioms covered
end FourierPilotCircleTree002615
