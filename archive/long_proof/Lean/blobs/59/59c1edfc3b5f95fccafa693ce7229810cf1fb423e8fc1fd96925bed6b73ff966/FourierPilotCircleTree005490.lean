import FourierPilotCircleTree005491
import FourierPilotCircleTree005492
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005490
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![48, 19, 16, 16, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005491.state FourierPilotCircleTree005492.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005491.covered FourierPilotCircleTree005492.covered
#print axioms covered
end FourierPilotCircleTree005490
