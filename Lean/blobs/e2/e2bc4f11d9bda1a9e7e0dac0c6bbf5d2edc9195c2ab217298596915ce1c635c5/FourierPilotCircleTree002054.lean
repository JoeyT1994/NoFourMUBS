import FourierPilotCircleTree002055
import FourierPilotCircleTree002094
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002054
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 13, 4, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002055.state FourierPilotCircleTree002094.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002055.covered FourierPilotCircleTree002094.covered
#print axioms covered
end FourierPilotCircleTree002054
