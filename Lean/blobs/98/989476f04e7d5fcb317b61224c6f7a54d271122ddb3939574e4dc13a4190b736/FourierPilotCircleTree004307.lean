import FourierPilotCircleTree004308
import FourierPilotCircleTree004327
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004307
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![20, 30, 27, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004308.state FourierPilotCircleTree004327.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004308.covered FourierPilotCircleTree004327.covered
#print axioms covered
end FourierPilotCircleTree004307
