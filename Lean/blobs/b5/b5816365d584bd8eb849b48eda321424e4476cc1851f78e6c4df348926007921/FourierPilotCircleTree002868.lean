import FourierPilotCircleTree002869
import FourierPilotCircleTree002992
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002868
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002869.state FourierPilotCircleTree002992.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002869.covered FourierPilotCircleTree002992.covered
#print axioms covered
end FourierPilotCircleTree002868
