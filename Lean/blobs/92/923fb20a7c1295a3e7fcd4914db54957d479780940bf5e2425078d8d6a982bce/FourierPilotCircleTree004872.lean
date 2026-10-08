import FourierPilotCircleTree004873
import FourierPilotCircleTree004874
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004872
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![11, 11, 10, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004873.state FourierPilotCircleTree004874.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004873.covered FourierPilotCircleTree004874.covered
#print axioms covered
end FourierPilotCircleTree004872
