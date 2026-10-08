import FourierPilotCircleTree002614
import FourierPilotCircleTree002615
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002613
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![7, 10, 6, 5, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002614.state FourierPilotCircleTree002615.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002614.covered FourierPilotCircleTree002615.covered
#print axioms covered
end FourierPilotCircleTree002613
