import FourierPilotCircleTree004875
import FourierPilotCircleTree004914
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004874
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![11, 11, 10, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004875.state FourierPilotCircleTree004914.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004875.covered FourierPilotCircleTree004914.covered
#print axioms covered
end FourierPilotCircleTree004874
