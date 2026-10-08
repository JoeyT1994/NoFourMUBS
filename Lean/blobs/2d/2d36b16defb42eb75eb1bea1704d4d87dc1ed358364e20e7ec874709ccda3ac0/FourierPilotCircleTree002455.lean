import FourierPilotCircleTree002456
import FourierPilotCircleTree002457
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002455
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![60, 80, 109, 104, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002456.state FourierPilotCircleTree002457.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002456.covered FourierPilotCircleTree002457.covered
#print axioms covered
end FourierPilotCircleTree002455
