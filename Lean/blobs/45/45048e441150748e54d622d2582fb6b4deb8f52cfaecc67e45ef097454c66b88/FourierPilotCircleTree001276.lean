import FourierPilotCircleTree001277
import FourierPilotCircleTree001278
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001276
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![13, 10, 8, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001277.state FourierPilotCircleTree001278.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001277.covered FourierPilotCircleTree001278.covered
#print axioms covered
end FourierPilotCircleTree001276
