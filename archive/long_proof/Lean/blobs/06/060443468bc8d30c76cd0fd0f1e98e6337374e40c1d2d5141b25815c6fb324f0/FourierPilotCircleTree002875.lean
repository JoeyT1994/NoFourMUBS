import FourierPilotCircleTree002876
import FourierPilotCircleTree002913
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002875
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![4, 7, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002876.state FourierPilotCircleTree002913.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002876.covered FourierPilotCircleTree002913.covered
#print axioms covered
end FourierPilotCircleTree002875
