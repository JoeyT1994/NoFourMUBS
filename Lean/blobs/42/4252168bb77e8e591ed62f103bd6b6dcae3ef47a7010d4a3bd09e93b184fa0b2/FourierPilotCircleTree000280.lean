import FourierPilotCircleTree000281
import FourierPilotCircleTree000282
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000280
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![23, 28, 31, 15, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000281.state FourierPilotCircleTree000282.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000281.covered FourierPilotCircleTree000282.covered
#print axioms covered
end FourierPilotCircleTree000280
