import FourierPilotCircleTree002882
import FourierPilotCircleTree002911
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002881
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![4, 7, 4, 11, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002882.state FourierPilotCircleTree002911.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002882.covered FourierPilotCircleTree002911.covered
#print axioms covered
end FourierPilotCircleTree002881
