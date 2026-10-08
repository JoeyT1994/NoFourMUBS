import FourierPilotCircleTree002450
import FourierPilotCircleTree002459
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002449
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![60, 40, 54, 52, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002450.state FourierPilotCircleTree002459.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002450.covered FourierPilotCircleTree002459.covered
#print axioms covered
end FourierPilotCircleTree002449
