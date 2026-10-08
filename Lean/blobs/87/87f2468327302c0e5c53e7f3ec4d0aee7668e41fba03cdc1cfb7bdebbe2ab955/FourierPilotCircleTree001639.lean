import FourierPilotCircleTree001640
import FourierPilotCircleTree001655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001639
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![11, 7, 7, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001640.state FourierPilotCircleTree001655.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001640.covered FourierPilotCircleTree001655.covered
#print axioms covered
end FourierPilotCircleTree001639
