import FourierPilotCircleTree002731
import FourierPilotCircleTree002732
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002730
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002731.state FourierPilotCircleTree002732.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002731.covered FourierPilotCircleTree002732.covered
#print axioms covered
end FourierPilotCircleTree002730
