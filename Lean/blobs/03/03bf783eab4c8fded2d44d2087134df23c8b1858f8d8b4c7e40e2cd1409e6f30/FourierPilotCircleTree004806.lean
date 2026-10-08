import FourierPilotCircleTree004807
import FourierPilotCircleTree004808
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004806
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![98, 100, 54, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004807.state FourierPilotCircleTree004808.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004807.covered FourierPilotCircleTree004808.covered
#print axioms covered
end FourierPilotCircleTree004806
