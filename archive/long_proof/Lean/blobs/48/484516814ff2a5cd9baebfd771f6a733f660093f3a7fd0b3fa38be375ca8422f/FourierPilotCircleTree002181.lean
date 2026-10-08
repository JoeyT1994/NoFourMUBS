import FourierPilotCircleTree002182
import FourierPilotCircleTree002183
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002181
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![55, 40, 31, 34, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002182.state FourierPilotCircleTree002183.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002182.covered FourierPilotCircleTree002183.covered
#print axioms covered
end FourierPilotCircleTree002181
