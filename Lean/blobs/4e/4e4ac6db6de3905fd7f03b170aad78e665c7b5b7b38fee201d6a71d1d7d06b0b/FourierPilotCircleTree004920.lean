import FourierPilotCircleTree004921
import FourierPilotCircleTree004922
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004920
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![2, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004921.state FourierPilotCircleTree004922.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004921.covered FourierPilotCircleTree004922.covered
#print axioms covered
end FourierPilotCircleTree004920
