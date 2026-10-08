import FourierPilotCircleTree005249
import FourierPilotCircleTree005250
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005248
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![10, 7, 13, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005249.state FourierPilotCircleTree005250.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005249.covered FourierPilotCircleTree005250.covered
#print axioms covered
end FourierPilotCircleTree005248
