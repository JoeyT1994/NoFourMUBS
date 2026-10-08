import FourierPilotCircleTree002567
import FourierPilotCircleTree002586
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002566
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![9, 27, 20, 25, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002567.state FourierPilotCircleTree002586.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002567.covered FourierPilotCircleTree002586.covered
#print axioms covered
end FourierPilotCircleTree002566
