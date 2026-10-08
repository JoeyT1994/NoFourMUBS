import FourierPilotCircleTree002883
import FourierPilotCircleTree002884
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002882
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![4, 7, 4, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002883.state FourierPilotCircleTree002884.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002883.covered FourierPilotCircleTree002884.covered
#print axioms covered
end FourierPilotCircleTree002882
