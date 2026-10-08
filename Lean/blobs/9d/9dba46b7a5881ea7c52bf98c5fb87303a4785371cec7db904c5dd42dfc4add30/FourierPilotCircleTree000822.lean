import FourierPilotCircleTree000823
import FourierPilotCircleTree000862
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000822
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![11, 11, 10, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000823.state FourierPilotCircleTree000862.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000823.covered FourierPilotCircleTree000862.covered
#print axioms covered
end FourierPilotCircleTree000822
