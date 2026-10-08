import FourierPilotCircleTree004252
import FourierPilotCircleTree004261
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004251
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![11, 14, 15, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004252.state FourierPilotCircleTree004261.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004252.covered FourierPilotCircleTree004261.covered
#print axioms covered
end FourierPilotCircleTree004251
