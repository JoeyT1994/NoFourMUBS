import FourierPilotCircleTree004274
import FourierPilotCircleTree004281
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004273
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![4, 7, 6, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004274.state FourierPilotCircleTree004281.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004274.covered FourierPilotCircleTree004281.covered
#print axioms covered
end FourierPilotCircleTree004273
