import FourierPilotCircleTree001482
import FourierPilotCircleTree001483
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001481
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![20, 58, 27, 31, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001482.state FourierPilotCircleTree001483.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001482.covered FourierPilotCircleTree001483.covered
#print axioms covered
end FourierPilotCircleTree001481
