import FourierPilotCircleTree002222
import FourierPilotCircleTree002223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002221
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![14, 9, 7, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002222.state FourierPilotCircleTree002223.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002222.covered FourierPilotCircleTree002223.covered
#print axioms covered
end FourierPilotCircleTree002221
