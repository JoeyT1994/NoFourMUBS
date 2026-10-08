import FourierPilotCircleTree002879
import FourierPilotCircleTree002912
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002878
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![4, 7, 4, 5, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002879.state FourierPilotCircleTree002912.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002879.covered FourierPilotCircleTree002912.covered
#print axioms covered
end FourierPilotCircleTree002878
