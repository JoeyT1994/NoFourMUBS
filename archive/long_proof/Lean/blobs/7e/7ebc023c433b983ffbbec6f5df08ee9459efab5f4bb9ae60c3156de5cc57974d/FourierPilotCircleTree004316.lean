import FourierPilotCircleTree004317
import FourierPilotCircleTree004318
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004316
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![80, 60, 109, 107, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004317.state FourierPilotCircleTree004318.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004317.covered FourierPilotCircleTree004318.covered
#print axioms covered
end FourierPilotCircleTree004316
