import FourierPilotCircleTree005053
import FourierPilotCircleTree005054
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005052
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005053.state FourierPilotCircleTree005054.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005053.covered FourierPilotCircleTree005054.covered
#print axioms covered
end FourierPilotCircleTree005052
