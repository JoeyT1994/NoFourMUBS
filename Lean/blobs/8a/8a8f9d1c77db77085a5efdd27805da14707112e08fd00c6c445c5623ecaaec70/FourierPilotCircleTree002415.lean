import FourierPilotCircleTree002416
import FourierPilotCircleTree002417
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002415
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 4, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002416.state FourierPilotCircleTree002417.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002416.covered FourierPilotCircleTree002417.covered
#print axioms covered
end FourierPilotCircleTree002415
