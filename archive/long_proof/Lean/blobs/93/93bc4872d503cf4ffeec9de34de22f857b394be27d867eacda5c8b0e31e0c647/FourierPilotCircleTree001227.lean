import FourierPilotCircleTree001228
import FourierPilotCircleTree001249
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001227
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![20, 27, 31, 30, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001228.state FourierPilotCircleTree001249.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001228.covered FourierPilotCircleTree001249.covered
#print axioms covered
end FourierPilotCircleTree001227
