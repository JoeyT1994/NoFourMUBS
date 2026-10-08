import FourierPilotCircleTree002668
import FourierPilotCircleTree002699
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002667
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![12, 7, 4, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002668.state FourierPilotCircleTree002699.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002668.covered FourierPilotCircleTree002699.covered
#print axioms covered
end FourierPilotCircleTree002667
