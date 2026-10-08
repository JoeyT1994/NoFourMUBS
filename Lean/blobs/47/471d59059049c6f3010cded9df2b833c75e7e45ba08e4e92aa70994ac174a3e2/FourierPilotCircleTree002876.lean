import FourierPilotCircleTree002877
import FourierPilotCircleTree002878
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002876
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![4, 7, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002877.state FourierPilotCircleTree002878.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002877.covered FourierPilotCircleTree002878.covered
#print axioms covered
end FourierPilotCircleTree002876
