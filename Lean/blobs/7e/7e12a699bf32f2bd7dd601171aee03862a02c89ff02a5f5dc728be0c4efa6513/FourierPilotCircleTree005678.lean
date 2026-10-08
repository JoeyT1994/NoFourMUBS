import FourierPilotCircleTree005679
import FourierPilotCircleTree005706
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005678
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![14, 14, 15, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005679.state FourierPilotCircleTree005706.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005679.covered FourierPilotCircleTree005706.covered
#print axioms covered
end FourierPilotCircleTree005678
