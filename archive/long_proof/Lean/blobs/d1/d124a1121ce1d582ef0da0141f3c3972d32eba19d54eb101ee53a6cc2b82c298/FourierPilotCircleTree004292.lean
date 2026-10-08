import FourierPilotCircleTree004293
import FourierPilotCircleTree004294
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004292
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![10, 7, 13, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004293.state FourierPilotCircleTree004294.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004293.covered FourierPilotCircleTree004294.covered
#print axioms covered
end FourierPilotCircleTree004292
