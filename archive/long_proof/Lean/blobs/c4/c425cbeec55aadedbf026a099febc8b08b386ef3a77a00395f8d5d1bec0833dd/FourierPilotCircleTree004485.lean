import FourierPilotCircleTree004486
import FourierPilotCircleTree004487
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004485
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![23, 24, 8, 26, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004486.state FourierPilotCircleTree004487.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004486.covered FourierPilotCircleTree004487.covered
#print axioms covered
end FourierPilotCircleTree004485
