import FourierPilotCircleTree002982
import FourierPilotCircleTree002983
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002981
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![20, 14, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002982.state FourierPilotCircleTree002983.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002982.covered FourierPilotCircleTree002983.covered
#print axioms covered
end FourierPilotCircleTree002981
