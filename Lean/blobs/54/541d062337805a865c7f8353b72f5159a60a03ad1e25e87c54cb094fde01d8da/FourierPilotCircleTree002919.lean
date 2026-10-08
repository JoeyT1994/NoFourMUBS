import FourierPilotCircleTree002920
import FourierPilotCircleTree002969
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002919
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![5, 6, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002920.state FourierPilotCircleTree002969.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002920.covered FourierPilotCircleTree002969.covered
#print axioms covered
end FourierPilotCircleTree002919
