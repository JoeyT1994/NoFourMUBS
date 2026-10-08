import FourierPilotCircleTree001957
import FourierPilotCircleTree001958
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001956
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![98, 93, 63, 84, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001957.state FourierPilotCircleTree001958.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001957.covered FourierPilotCircleTree001958.covered
#print axioms covered
end FourierPilotCircleTree001956
