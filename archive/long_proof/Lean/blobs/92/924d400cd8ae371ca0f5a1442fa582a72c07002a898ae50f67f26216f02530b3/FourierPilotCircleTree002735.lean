import FourierPilotCircleTree002736
import FourierPilotCircleTree002781
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002735
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![5, 6, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002736.state FourierPilotCircleTree002781.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002736.covered FourierPilotCircleTree002781.covered
#print axioms covered
end FourierPilotCircleTree002735
