import FourierPilotCircleTree004553
import FourierPilotCircleTree004554
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004552
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![24, 23, 31, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004553.state FourierPilotCircleTree004554.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004553.covered FourierPilotCircleTree004554.covered
#print axioms covered
end FourierPilotCircleTree004552
