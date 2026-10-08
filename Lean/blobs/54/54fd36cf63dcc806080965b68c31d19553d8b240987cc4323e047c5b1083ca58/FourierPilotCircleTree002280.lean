import FourierPilotCircleTree002281
import FourierPilotCircleTree002282
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002280
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 6, 5, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002281.state FourierPilotCircleTree002282.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002281.covered FourierPilotCircleTree002282.covered
#print axioms covered
end FourierPilotCircleTree002280
