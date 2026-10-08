import FourierPilotCircleTree001641
import FourierPilotCircleTree001654
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001640
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![11, 7, 7, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001641.state FourierPilotCircleTree001654.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001641.covered FourierPilotCircleTree001654.covered
#print axioms covered
end FourierPilotCircleTree001640
