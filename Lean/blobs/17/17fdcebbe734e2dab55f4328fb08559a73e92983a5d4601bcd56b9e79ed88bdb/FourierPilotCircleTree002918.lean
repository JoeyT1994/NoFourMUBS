import FourierPilotCircleTree002919
import FourierPilotCircleTree002970
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002918
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![5, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002919.state FourierPilotCircleTree002970.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002919.covered FourierPilotCircleTree002970.covered
#print axioms covered
end FourierPilotCircleTree002918
