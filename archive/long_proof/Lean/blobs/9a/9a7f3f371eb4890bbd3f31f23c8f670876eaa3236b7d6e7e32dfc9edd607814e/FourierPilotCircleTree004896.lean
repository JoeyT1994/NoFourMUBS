import FourierPilotCircleTree004897
import FourierPilotCircleTree004898
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004896
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![45, 93, 41, 52, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004897.state FourierPilotCircleTree004898.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004897.covered FourierPilotCircleTree004898.covered
#print axioms covered
end FourierPilotCircleTree004896
