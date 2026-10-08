import FourierPilotCircleTree000768
import FourierPilotCircleTree000771
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000767
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![49, 50, 55, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000768.state FourierPilotCircleTree000771.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000768.covered FourierPilotCircleTree000771.covered
#print axioms covered
end FourierPilotCircleTree000767
