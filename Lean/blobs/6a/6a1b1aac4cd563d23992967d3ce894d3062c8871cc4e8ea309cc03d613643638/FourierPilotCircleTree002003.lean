import FourierPilotCircleTree002004
import FourierPilotCircleTree002041
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002003
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![4, 7, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002004.state FourierPilotCircleTree002041.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002004.covered FourierPilotCircleTree002041.covered
#print axioms covered
end FourierPilotCircleTree002003
