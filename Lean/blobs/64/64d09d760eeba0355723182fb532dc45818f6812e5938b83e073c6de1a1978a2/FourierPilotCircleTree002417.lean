import FourierPilotCircleTree002418
import FourierPilotCircleTree002421
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002417
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 4, 13, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002418.state FourierPilotCircleTree002421.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002418.covered FourierPilotCircleTree002421.covered
#print axioms covered
end FourierPilotCircleTree002417
