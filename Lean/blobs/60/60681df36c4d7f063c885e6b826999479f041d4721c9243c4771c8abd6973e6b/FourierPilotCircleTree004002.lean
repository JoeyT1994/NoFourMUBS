import FourierPilotCircleTree004003
import FourierPilotCircleTree004004
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004002
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004003.state FourierPilotCircleTree004004.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004003.covered FourierPilotCircleTree004004.covered
#print axioms covered
end FourierPilotCircleTree004002
