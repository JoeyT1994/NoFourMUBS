import FourierPilotCircleTree000317
import FourierPilotCircleTree000322
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000316
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![24, 19, 16, 16, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000317.state FourierPilotCircleTree000322.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000317.covered FourierPilotCircleTree000322.covered
#print axioms covered
end FourierPilotCircleTree000316
