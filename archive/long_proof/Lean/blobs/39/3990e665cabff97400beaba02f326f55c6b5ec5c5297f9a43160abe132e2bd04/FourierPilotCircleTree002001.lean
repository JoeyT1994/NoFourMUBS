import FourierPilotCircleTree002002
import FourierPilotCircleTree002003
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002001
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![4, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002002.state FourierPilotCircleTree002003.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002002.covered FourierPilotCircleTree002003.covered
#print axioms covered
end FourierPilotCircleTree002001
