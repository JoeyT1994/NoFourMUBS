import FourierPilotCircleTree004368
import FourierPilotCircleTree004369
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004367
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![27, 17, 20, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004368.state FourierPilotCircleTree004369.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004368.covered FourierPilotCircleTree004369.covered
#print axioms covered
end FourierPilotCircleTree004367
