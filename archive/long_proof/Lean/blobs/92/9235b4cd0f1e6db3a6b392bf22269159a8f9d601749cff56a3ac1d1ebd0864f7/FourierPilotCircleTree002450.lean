import FourierPilotCircleTree002451
import FourierPilotCircleTree002452
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002450
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![60, 40, 54, 104, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002451.state FourierPilotCircleTree002452.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002451.covered FourierPilotCircleTree002452.covered
#print axioms covered
end FourierPilotCircleTree002450
