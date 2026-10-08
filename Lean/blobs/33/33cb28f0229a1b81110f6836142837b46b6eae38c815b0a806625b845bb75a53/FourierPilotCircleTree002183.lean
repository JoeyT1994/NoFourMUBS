import FourierPilotCircleTree002184
import FourierPilotCircleTree002185
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002183
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![55, 40, 31, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002184.state FourierPilotCircleTree002185.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002184.covered FourierPilotCircleTree002185.covered
#print axioms covered
end FourierPilotCircleTree002183
