import FourierPilotCircleTree002524
import FourierPilotCircleTree002535
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002523
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![47, 19, 31, 31, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002524.state FourierPilotCircleTree002535.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002524.covered FourierPilotCircleTree002535.covered
#print axioms covered
end FourierPilotCircleTree002523
