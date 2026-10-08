import FourierPilotCircleTree004178
import FourierPilotCircleTree004217
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004177
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![7, 6, 4, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004178.state FourierPilotCircleTree004217.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004178.covered FourierPilotCircleTree004217.covered
#print axioms covered
end FourierPilotCircleTree004177
