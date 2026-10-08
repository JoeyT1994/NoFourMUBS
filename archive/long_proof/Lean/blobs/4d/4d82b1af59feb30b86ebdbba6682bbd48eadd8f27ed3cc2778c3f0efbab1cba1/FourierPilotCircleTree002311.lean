import FourierPilotCircleTree002312
import FourierPilotCircleTree002313
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002311
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![35, 55, 41, 87, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002312.state FourierPilotCircleTree002313.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002312.covered FourierPilotCircleTree002313.covered
#print axioms covered
end FourierPilotCircleTree002311
