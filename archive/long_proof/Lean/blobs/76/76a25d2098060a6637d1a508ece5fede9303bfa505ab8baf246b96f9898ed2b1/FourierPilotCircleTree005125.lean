import FourierPilotCircleTree005126
import FourierPilotCircleTree005165
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005125
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![7, 7, 4, 10, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005126.state FourierPilotCircleTree005165.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005126.covered FourierPilotCircleTree005165.covered
#print axioms covered
end FourierPilotCircleTree005125
