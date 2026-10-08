import FourierPilotCircleTree002415
import FourierPilotCircleTree002422
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002414
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 4, 6, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002415.state FourierPilotCircleTree002422.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002415.covered FourierPilotCircleTree002422.covered
#print axioms covered
end FourierPilotCircleTree002414
