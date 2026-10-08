import FourierPilotCircleTree005490
import FourierPilotCircleTree005493
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005489
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![48, 19, 16, 16, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005490.state FourierPilotCircleTree005493.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005490.covered FourierPilotCircleTree005493.covered
#print axioms covered
end FourierPilotCircleTree005489
